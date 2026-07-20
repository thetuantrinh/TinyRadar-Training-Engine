#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include "genModel.h"
#include "tinyengine_function.h"

extern signed char* getInput();
extern signed char* getOutput();
extern void invoke(float* labels);
extern void invoke_inf();
extern float get_lr();
extern float get_blr();
extern float get_loss();
extern void reset_weights();
extern void print_weights();

#include <kernel/dpl/ClockP.h>
#include <kernel/dpl/DebugP.h>
#include "ti_drivers_config.h"
#include "ti_drivers_open_close.h"
#include "ti_board_open_close.h"

#define IMAGE_H 20
#define IMAGE_W 40
#define INPUT_CH 8
#define INPUT_SIZE (IMAGE_H * IMAGE_W * INPUT_CH)
#define OUTPUT_CH 10

float labels[OUTPUT_CH] = {0.0f};

void train(int cls) {
  for (int i = 0; i < OUTPUT_CH; i++) {
    if (i == cls) {
      labels[i] = 1.0f;
    } else {
      labels[i] = 0.0f;
    }
  }
  invoke(labels);
}

void read_input_from_file(FILE *fp) {
    if (fp == NULL) {
        DebugP_logError("File pointer is NULL.\r\n");
        return;
    }
    signed char *input = getInput();
    if (input == NULL) {
        DebugP_logError("getInput() returned a NULL pointer.\r\n");
        return;
    }
    
    // Read the entire sample (6400 floats) into a temporary buffer, looping in case of partial reads
    static float temp_chw[INPUT_SIZE];
    size_t total_elements_read = 0;
    while (total_elements_read < INPUT_SIZE) {
        size_t read_now = fread(&temp_chw[total_elements_read], sizeof(float), INPUT_SIZE - total_elements_read, fp);
        if (read_now == 0) {
            // EOF or read error, rewind to start and attempt to fill the remainder
            fseek(fp, 0, SEEK_SET);
            size_t read_retry = fread(&temp_chw[total_elements_read], sizeof(float), INPUT_SIZE - total_elements_read, fp);
            if (read_retry == 0) {
                break; // Prevent infinite loop if file is empty/corrupt
            }
            total_elements_read += read_retry;
        } else {
            total_elements_read += read_now;
        }
    }
    
    // Transpose from CHW (8x20x40) to HWC (20x40x8) and quantize on the fly
    int C = INPUT_CH;
    int H = IMAGE_H;
    int W = IMAGE_W;
    for (int h = 0; h < H; h++) {
        for (int w = 0; w < W; w++) {
            for (int c = 0; c < C; c++) {
                int chw_idx = c * H * W + h * W + w;
                int hwc_idx = h * W * C + w * C + c;
                
                float val = (temp_chw[chw_idx] / 0.049212597f) + 2.0f;
                int32_t val_int = (int32_t)roundf(val);
                if (val_int > 127) {
                    val_int = 127;
                } else if (val_int < -128) {
                    val_int = -128;
                }
                input[hwc_idx] = (signed char)val_int;
            }
        }
    }
}

int get_predicted_class(const signed char *logits, int length) {
    int max_idx = 0;
    float max_val = -999999.0f;
    for (int i = 0; i < length; i++) {
        float deq_logit = (float)logits[i] * 0.27543354f;
        if (deq_logit > max_val) {
            max_val = deq_logit;
            max_idx = i;
        }
    }
    return max_idx;
}

void print_softmax_probabilities(const signed char *logits, int length) {
    float deq_logits[10];
    float max_logit = -999999.0f;
    for (int i = 0; i < length; i++) {
        deq_logits[i] = (float)logits[i] * 0.27543354f;
        if (deq_logits[i] > max_logit) {
            max_logit = deq_logits[i];
        }
    }
    float sum_exp = 0.0f;
    for (int i = 0; i < length; i++) {
        deq_logits[i] = expf(deq_logits[i] - max_logit);
        sum_exp += deq_logits[i];
    }
    for (int i = 0; i < length; i++) {
        float prob = deq_logits[i] / sum_exp;
        int integer_part = (int)prob;
        int fractional_part = (int)((prob - (float)integer_part) * 10000.0f + 0.5f);
        if (fractional_part >= 10000) {
            integer_part += 1;
            fractional_part -= 10000;
        }
        DebugP_log("%d.%04d ", integer_part, fractional_part);
    }
    DebugP_log("\r\n");
}

void show_tqdm_progress(int epoch, int total_epochs, float loss) {
    char bar[30];
    int bar_width = 25;
    float progress = (float)(epoch + 1) / (float)total_epochs;
    int filled = (int)(bar_width * progress);
    
    int i;
    for (i = 0; i < bar_width; i++) {
        if (i < filled) {
            bar[i] = '#';
        } else {
            bar[i] = ' ';
        }
    }
    bar[bar_width] = '\0';
    
    float lr_val = get_lr();
    float blr_val = get_blr();
    
    int loss_int = (int)loss;
    int loss_frac = (int)((loss - (float)loss_int) * 10000.0f + 0.5f);
    if (loss_frac < 0) loss_frac = -loss_frac;
    
    int lr_int = (int)lr_val;
    int lr_frac = (int)((lr_val - (float)lr_int) * 1000000.0f + 0.5f);
    if (lr_frac < 0) lr_frac = -lr_frac;
    
    int blr_int = (int)blr_val;
    int blr_frac = (int)((blr_val - (float)blr_int) * 1000000.0f + 0.5f);
    if (blr_frac < 0) blr_frac = -blr_frac;
    
    DebugP_log("Epochs: %d/%d |%s| %d%% [loss=%d.%04d, lr=%d.%06d, blr=%d.%06d]\r\n", 
               epoch + 1, total_epochs, bar, (int)(progress * 100), loss_int, loss_frac, lr_int, lr_frac, blr_int, blr_frac);
}

FILE* open_dataset_file(int cls) {
    char filepath[200];
    sprintf(filepath, "C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/assets/valid/class_%d.bin", cls);
    FILE *fp = fopen(filepath, "rb");
    if (fp != NULL) return fp;
    
    sprintf(filepath, "C:/Users/tuan.trinhthe/workspace_ccstheia/HGR-TTE_v1/assets/valid/class_%d.bin", cls);
    fp = fopen(filepath, "rb");
    if (fp != NULL) return fp;
    
    sprintf(filepath, "C:/Users/tuan.trinhthe/workspace_ccstheia/TTE-HGR-v2/assets/valid/class_%d.bin", cls);
    fp = fopen(filepath, "rb");
    return fp;
}

FILE* open_noise_dataset_file(int snr, int cls) {
    char filepath[200];
    // Attempt 1: Try user's custom zTTE-HGR workspace layout (snr_X/class_Y.bin)
    sprintf(filepath, "C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/snr_%d/class_%d.bin", snr, cls);
    FILE *fp = fopen(filepath, "rb");
    if (fp != NULL) return fp;

    // Attempt 2: Try zTTE-HGR assets/noise layout
    sprintf(filepath, "C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/assets/noise/snr_%d/class_%d.bin", snr, cls);
    fp = fopen(filepath, "rb");
    if (fp != NULL) return fp;
    
    // Attempt 3: Try HGR-TTE_v1 layout
    sprintf(filepath, "C:/Users/tuan.trinhthe/workspace_ccstheia/HGR-TTE_v1/assets/noise/snr_%d/class_%d.bin", snr, cls);
    fp = fopen(filepath, "rb");
    if (fp != NULL) return fp;
    
    // Attempt 4: Try TTE-HGR-v2 layout
    sprintf(filepath, "C:/Users/tuan.trinhthe/workspace_ccstheia/TTE-HGR-v2/assets/noise/snr_%d/class_%d.bin", snr, cls);
    fp = fopen(filepath, "rb");
    return fp;
}

void run_noise_experiment(int snr, int cls) {
    reset_weights();
    
    char clean_path[200];
    char noise_path[200];
    sprintf(clean_path, "C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/valid/class_%d.bin", cls);
    sprintf(noise_path, "C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/snr_%d/class_%d.bin", snr, cls);
    
    FILE *clean_file = fopen(clean_path, "rb");
    FILE *noise_file = fopen(noise_path, "rb");
    
    if (clean_file == NULL) {
        DebugP_log("ERROR: Could not open clean dataset for class %d.\r\n", cls);
        if (noise_file != NULL) fclose(noise_file);
        return;
    }
    if (noise_file == NULL) {
        DebugP_log("ERROR: Could not open noise %d dB dataset for class %d.\r\n", snr, cls);
        fclose(clean_file);
        return;
    }
    
    DebugP_log("\r\n======================================================\r\n");
    DebugP_log(" EXPERIMENT: Class %d with %d dB Noise\r\n", cls, snr);
    DebugP_log("======================================================\r\n");
    
    // 1. Initial clean inference
    DebugP_log("[STEP 1] Running Clean Inference on Class %d (10 samples)...\r\n", cls);
    int clean_preds[10];
    fseek(clean_file, 0, SEEK_SET);
    for (int i = 0; i < 10; i++) {
        read_input_from_file(clean_file);
        invoke_inf();
        signed char *output = getOutput();
        clean_preds[i] = get_predicted_class(output, OUTPUT_CH);
        DebugP_log(" -> Sample %d Clean Softmax Probabilities: ", i);
        print_softmax_probabilities(output, OUTPUT_CH);
    }
    DebugP_log(" -> Clean Predictions: ");
    for (int i = 0; i < 10; i++) {
        DebugP_log("%d ", clean_preds[i]);
    }
    DebugP_log("\r\n\r\n");
    
    // 2. Initial noise inference
    DebugP_log("[STEP 2] Running Noisy (%d dB) Inference on Class %d (10 samples)...\r\n", snr, cls);
    int initial_noise_preds[10];
    fseek(noise_file, 0, SEEK_SET);
    for (int i = 0; i < 10; i++) {
        read_input_from_file(noise_file);
        invoke_inf();
        signed char *output = getOutput();
        initial_noise_preds[i] = get_predicted_class(output, OUTPUT_CH);
        DebugP_log(" -> Sample %d Noisy Softmax Probabilities: ", i);
        print_softmax_probabilities(output, OUTPUT_CH);
    }
    DebugP_log(" -> Noisy Predictions: ");
    for (int i = 0; i < 10; i++) {
        DebugP_log("%d ", initial_noise_preds[i]);
    }
    DebugP_log("\r\n\r\n");
    
    // 3. Train on 10 noisy samples
    int target_class = cls;
    set_lr(0.0002f);
    set_blr(0.0002f);
    int num_samples = 10;
    
    DebugP_log("[STEP 3] Training on 10 Noisy (%d dB) Samples for 5 epochs...\r\n", snr);
    print_weights();
    uint64_t train_start = ClockP_getTimeUsec();
    for (int epoch = 0; epoch < 5; epoch++) {
        fseek(noise_file, 0, SEEK_SET);
        float loss_sum = 0.0f;
        for (int s = 0; s < num_samples; s++) {
            read_input_from_file(noise_file);
            train(target_class);
            loss_sum += get_loss();
        }
        float avg_loss = loss_sum / (float)num_samples;
        show_tqdm_progress(epoch, 5, avg_loss);
    }
    uint64_t train_end = ClockP_getTimeUsec();
    print_weights();
    DebugP_log(" -> Training Complete! Duration: %u ms\r\n\r\n", (uint32_t)((train_end - train_start) / 1000ULL));
    
    // 4. Post-training noise inference
    DebugP_log("[STEP 4] Running Post-Training Noisy (%d dB) Inference on Class %d (10 samples)...\r\n", snr, cls);
    int post_noise_preds[10];
    fseek(noise_file, 0, SEEK_SET);
    for (int i = 0; i < 10; i++) {
        read_input_from_file(noise_file);
        invoke_inf();
        signed char *output = getOutput();
        post_noise_preds[i] = get_predicted_class(output, OUTPUT_CH);
        DebugP_log(" -> Sample %d Post-Training Noisy Softmax Probabilities: ", i);
        print_softmax_probabilities(output, OUTPUT_CH);
    }
    DebugP_log(" -> Predictions with New Weights: ");
    for (int i = 0; i < 10; i++) {
        DebugP_log("%d ", post_noise_preds[i]);
    }
    DebugP_log("\r\n");
    
    fclose(clean_file);
    fclose(noise_file);
}

void hello_world_main(void *args)
{
    Drivers_open();
    Board_driversOpen();

    DebugP_log("\r\n====================================================\r\n");
    DebugP_log("   Tiny Training Engine (TTE) Noise Debugger        \r\n");
    DebugP_log("====================================================\r\n");

    // Run experiment: Clean Class 8 vs Noise 10 dB Class 8
    run_noise_experiment(5, 8);

    Board_driversClose();
    Drivers_close();
}
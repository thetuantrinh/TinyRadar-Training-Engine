# TinyRadar-OL: Ultra-Low Memory Continual Learning for Personalized FMCW Radar Gesture Recognition at the IoT Edge

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

Welcome to the official repository for **"TinyRadar-OL: Ultra-Low Memory Continual Learning for Personalized FMCW Radar Gesture Recognition at the IoT Edge"**. This repository provides the complete framework and source code to replicate the TinyRadar Training Engine (TTE) pipeline, designed for continuous learning and adaptation directly on microcontrollers (MCUs) at the edge.

## 🌟 Overview

TinyRadar-OL introduces a breakthrough in running **on-device training** for Hand Gesture Recognition (HGR) using FMCW radar. By leveraging our custom **TinyRadar Training Engine (TTE)**, the framework performs full int8-quantized forward passes and customized backward passes. This allows edge devices to personalize gesture recognition models on the fly while operating under strict ultra-low memory constraints, eliminating the need to transmit sensitive sensor data to the cloud.

### Key Contributions
1. **TinyRadar-OL Framework**: The first on-device continual learning framework (<64 kB) designed for edge FMCW radar that runs backpropagation entirely within the strict SRAM boundaries of low-power microcontrollers without cloud dependency.
2. **Lightweight Adaptation & SNR-Adaptive Optimization**: A parameter-efficient layer-wise tuning approach combined with an SNR-adaptive learning rate mechanism to stabilize quantized backpropagation.
3. **Deployment & AWGN Perturbation Visualization**: Microcontroller implementation (Cortex-M4, [TI IWRL6432AOPEVM](https://www.ti.com/tool/IWRL6432AOPEVM)) validating adaptation accuracy (99%) under an ultra-low footprint of 52.4 kB SRAM (54.6% savings under a standard 64 kB budget). This is supported by visual micro-Doppler heatmap analysis of simulated Additive White Gaussian Noise (AWGN) perturbations across varying SNR levels (20 dB, 10 dB, 5 dB).

---

## 📊 Performance & Results

Our methodology achieves significant reductions in memory overhead compared to traditional edge training systems, while maintaining robust model accuracy and training stabilization.

### Peak SRAM Memory Comparison
TinyRadar-OL dramatically lowers peak memory requirements compared to conventional methods.
<p align="center">
  <img src="assets/figure/peak_sram_comparison.png" alt="Peak SRAM Comparison" width="600"/>
</p>

### Per-Layer Memory Breakdown
Detailed profiling of memory consumption across different neural network layers during training.
<p align="center">
  <img src="assets/figure/per_layer_memory.png" alt="Per-Layer Memory Breakdown" width="600"/>
</p>

### Training Stabilization (QAS)
Our Quantization-Aware Scaling (QAS) technique ensures stable on-device learning without diverging.
<p align="center">
  <img src="assets/figure/qas_stabilization.png" alt="QAS Stabilization" width="600"/>
</p>

---

## 🚀 Pipeline Instructions

This repository encapsulates the end-to-end pipeline. It contains the pre-compiled C outputs in `scripts/codegen/` and the runtime Code Composer Studio (CCS) project in `TTE-HGR`.

### Prerequisites
- [TI IWRL6432AOPEVM Evaluation Module](https://www.ti.com/tool/IWRL6432AOPEVM) (for hardware deployment)
- Code Composer Studio (CCS) / TI ARM Clang Compiler (for MCU deployment)
- GCC Compiler (for PC simulation)

### 1. Model Conversion & Quantization (Offline)
The offline phase involves tracing the PyTorch model (`assets/model.pt`), performing int8 quantization, generating the backward graph, and serializing it into an IR JSON format. 
*Outputs provided in this repo:* `assets/int8-graph.json`, `assets/int8-params.pkl`, `assets/scale.json`.

### 2. Code Generation (Codegen)
The intermediate JSON representation is parsed and transformed into optimized C code using the TinyRadar Training Engine compiler.
*Outputs provided in this repo:* The generated C code and network headers are located under `scripts/codegen/`.

### 3. PC Simulation
If you wish to test the model and training loop on a PC emulator before flashing to an MCU, you can compile the project using standard GCC. This uses the `arm_intrinsics_mock.h` header to simulate [ARM CMSIS-NN](https://github.com/ARM-software/CMSIS_5/tree/5b58d2da8af7cee64cc9145ee1154609bdfee9f9) math functions on x86:

```bash
gcc -O3 -o tte_main \
  -include TTE-HGR/TinyEngine/include/arm_intrinsics_mock.h \
  TTE-HGR/main.c \
  scripts/codegen/Source/genModel.c \
  TTE-HGR/TinyEngine/src/kernels/int_forward_op/arm_convolve_s8_4col.c \
  TTE-HGR/TinyEngine/src/kernels/int_forward_op/maxpooling.c \
  TTE-HGR/TinyEngine/src/kernels/fp_requantize_op/convolve_1x1_s8_fpreq_mask.c \
  TTE-HGR/TinyEngine/src/kernels/fp_requantize_op/mat_mul_kernels_fpreq.c \
  TTE-HGR/TinyEngine/src/kernels/fp_backward_op/log_softmax_fp.c \
  TTE-HGR/TinyEngine/src/kernels/fp_backward_op/nll_loss_fp.c \
  TTE-HGR/TinyEngine/src/kernels/fp_backward_op/tte_exp_fp.c \
  TTE-HGR/TinyEngine/src/kernels/fp_backward_op/sum_3D_fp.c \
  TTE-HGR/TinyEngine/src/kernels/fp_backward_op/sum_4D_exclude_fp.c \
  TTE-HGR/TinyEngine/src/kernels/fp_backward_op/group_pointwise_conv_fp.c \
  TTE-HGR/TinyEngine/src/kernels/fp_backward_op/sub_fp.c \
  TTE-HGR/TinyEngine/src/kernels/fp_backward_op/mul_fp.c \
  TTE-HGR/TinyEngine/src/kernels/fp_backward_op/where_fp.c \
  -ITTE-HGR/TinyEngine/include \
  -ITTE-HGR/TinyEngine/third_party/CMSIS \
  -Iscripts/codegen/Include \
  -lm

# Run the compiled binary
./tte_main
```
*The console will output the simulation results, training loss, inference latency, and energy comparisons.*

### 4. MCU Compilation & Deployment
The actual on-device runtime is built using the Code Composer Studio project.
1. Open **Code Composer Studio**.
2. Import the `TTE-HGR` directory as a CCS Project.
3. The project is pre-configured to link the generated model (`genModel.c`), the TinyRadar Training Engine backend kernels (`TinyEngine/src`), and the main driver (`main.c`).
4. Build the project using the **Release** or **Debug** configuration.
5. Flash the generated binary onto the target MCU for on-device inference and continual learning.

---



## ⚖️ License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

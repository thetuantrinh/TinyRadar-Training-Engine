################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
TinyEngine/codegen/Source/%.o: ../TinyEngine/codegen/Source/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Arm Compiler: "$<"'
	"C:/ti/ti_cgt_arm_llvm_3.2.2.LTS/bin/tiarmclang.exe" -c -mcpu=cortex-m4 -mfloat-abi=hard -mlittle-endian -mthumb -I"C:/ti/ti_cgt_arm_llvm_3.2.2.LTS/include/c" -I"C:/ti/MMWAVE_L_SDK_05_05_04_02/source" -I"C:/ti/MMWAVE_L_SDK_05_05_04_02/source/kernel/freertos/FreeRTOS-Kernel/include" -I"C:/ti/MMWAVE_L_SDK_05_05_04_02/source/kernel/freertos/portable/TI_ARM_CLANG/ARM_CM4F" -I"C:/ti/MMWAVE_L_SDK_05_05_04_02/source/kernel/freertos/config/xwrL64xx/m4f" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/third_party/CMSIS/dsp" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/third_party/CMSIS" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/third_party" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/src/kernels/int_forward_op" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/src/kernels/fp_requantize_op" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/src/kernels/fp_backward_op" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/src/kernels" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/src" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/include" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/codegen/Source" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/codegen/Include" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/codegen" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine" -DSOC_XWRL64XX -D_DEBUG_=1 -g -Wall -Wno-gnu-variable-sized-type-not-at-end -Wno-unused-function -mno-unaligned-access -MMD -MP -MF"TinyEngine/codegen/Source/$(basename $(<F)).d_raw" -MT"$(@)" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/Debug/syscfg"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo ' '



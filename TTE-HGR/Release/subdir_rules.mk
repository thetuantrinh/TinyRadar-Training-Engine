################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
build-566866873: ../example.syscfg
	@echo 'SysConfig: "$<"'
	"C:/ti/sysconfig_1.20.0/sysconfig_cli.bat" -s "C:/ti/MMWAVE_L_SDK_05_05_04_02/.metadata/product.json" -p "AOP" -r "Default" --script "C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/example.syscfg" --context "m4fss0-0" -o "syscfg" --compiler ticlang
	@echo ' '

syscfg/ti_dpl_config.c: build-566866873 ../example.syscfg
syscfg/ti_dpl_config.h: build-566866873
syscfg/ti_drivers_config.c: build-566866873
syscfg/ti_drivers_config.h: build-566866873
syscfg/ti_drivers_open_close.c: build-566866873
syscfg/ti_drivers_open_close.h: build-566866873
syscfg/ti_pinmux_config.c: build-566866873
syscfg/ti_power_clock_config.c: build-566866873
syscfg/ti_board_config.c: build-566866873
syscfg/ti_board_config.h: build-566866873
syscfg/ti_board_open_close.c: build-566866873
syscfg/ti_board_open_close.h: build-566866873
syscfg/ti_cli_mpd_demo_config.h: build-566866873
syscfg/ti_cli_mmwave_demo_config.h: build-566866873
syscfg: build-566866873

syscfg/%.o: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Arm Compiler: "$<"'
	"C:/ti/ti_cgt_arm_llvm_3.2.2.LTS/bin/tiarmclang.exe" -c -mcpu=cortex-m4 -mfloat-abi=hard -mlittle-endian -mthumb -Os -I"C:/ti/ti_cgt_arm_llvm_3.2.2.LTS/include/c" -I"C:/ti/MMWAVE_L_SDK_05_05_04_02/source" -I"C:/ti/MMWAVE_L_SDK_05_05_04_02/source/kernel/freertos/FreeRTOS-Kernel/include" -I"C:/ti/MMWAVE_L_SDK_05_05_04_02/source/kernel/freertos/portable/TI_ARM_CLANG/ARM_CM4F" -I"C:/ti/MMWAVE_L_SDK_05_05_04_02/source/kernel/freertos/config/xwrL64xx/m4f" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/third_party/CMSIS/dsp" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/third_party/CMSIS" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/src/kernels/int_forward_op" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/src/kernels/fp_requantize_op" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/src/kernels/fp_backward_op" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/include" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/codegen/Source" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/codegen/Include" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/codegen" -DSOC_XWRL64XX -g -Wall -Wno-gnu-variable-sized-type-not-at-end -Wno-unused-function -mno-unaligned-access -MMD -MP -MF"syscfg/$(basename $(<F)).d_raw" -MT"$(@)" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/Release/syscfg"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo ' '

%.o: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Arm Compiler: "$<"'
	"C:/ti/ti_cgt_arm_llvm_3.2.2.LTS/bin/tiarmclang.exe" -c -mcpu=cortex-m4 -mfloat-abi=hard -mlittle-endian -mthumb -Os -I"C:/ti/ti_cgt_arm_llvm_3.2.2.LTS/include/c" -I"C:/ti/MMWAVE_L_SDK_05_05_04_02/source" -I"C:/ti/MMWAVE_L_SDK_05_05_04_02/source/kernel/freertos/FreeRTOS-Kernel/include" -I"C:/ti/MMWAVE_L_SDK_05_05_04_02/source/kernel/freertos/portable/TI_ARM_CLANG/ARM_CM4F" -I"C:/ti/MMWAVE_L_SDK_05_05_04_02/source/kernel/freertos/config/xwrL64xx/m4f" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/third_party/CMSIS/dsp" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/third_party/CMSIS" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/src/kernels/int_forward_op" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/src/kernels/fp_requantize_op" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/src/kernels/fp_backward_op" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/include" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/codegen/Source" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/codegen/Include" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/TinyEngine/codegen" -DSOC_XWRL64XX -g -Wall -Wno-gnu-variable-sized-type-not-at-end -Wno-unused-function -mno-unaligned-access -MMD -MP -MF"$(basename $(<F)).d_raw" -MT"$(@)" -I"C:/Users/tuan.trinhthe/workspace_ccstheia/zTTE-HGR/Release/syscfg"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo ' '



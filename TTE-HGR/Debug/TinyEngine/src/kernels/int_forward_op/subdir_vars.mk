################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../TinyEngine/src/kernels/int_forward_op/add.c \
../TinyEngine/src/kernels/int_forward_op/arm_convolve_s8_4col.c \
../TinyEngine/src/kernels/int_forward_op/arm_nn_mat_mult_kernel3_input3_s8_s16.c \
../TinyEngine/src/kernels/int_forward_op/arm_nn_mat_mult_kernel_s8_s16_reordered_8mul.c \
../TinyEngine/src/kernels/int_forward_op/arm_nn_mat_mult_kernel_s8_s16_reordered_oddch.c \
../TinyEngine/src/kernels/int_forward_op/avgpooling.c \
../TinyEngine/src/kernels/int_forward_op/concat_ch.c \
../TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8.c \
../TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_SRAM.c \
../TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_ch16.c \
../TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_ch24.c \
../TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_ch48.c \
../TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_ch8.c \
../TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_kbuf.c \
../TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_oddch.c \
../TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_skip_pad.c \
../TinyEngine/src/kernels/int_forward_op/convolve_s8_kernel2x3_inputch3_stride2_pad1.c \
../TinyEngine/src/kernels/int_forward_op/convolve_s8_kernel3_inputch3_stride2_pad1.c \
../TinyEngine/src/kernels/int_forward_op/convolve_s8_kernel3_stride1_pad1.c \
../TinyEngine/src/kernels/int_forward_op/convolve_s8_kernel3x2_inputch3_stride2_pad1.c \
../TinyEngine/src/kernels/int_forward_op/convolve_u8_kernel3_inputch3_stride1_pad1.c \
../TinyEngine/src/kernels/int_forward_op/convolve_u8_kernel3_inputch3_stride2_pad1.c \
../TinyEngine/src/kernels/int_forward_op/element_mult.c \
../TinyEngine/src/kernels/int_forward_op/fully_connected.c \
../TinyEngine/src/kernels/int_forward_op/mat_mul_fp.c \
../TinyEngine/src/kernels/int_forward_op/mat_mult_kernels.c \
../TinyEngine/src/kernels/int_forward_op/maxpooling.c \
../TinyEngine/src/kernels/int_forward_op/patchpadding_convolve_s8_kernel3_inputch3_stride2.c \
../TinyEngine/src/kernels/int_forward_op/patchpadding_depthwise_kernel3x3_stride1_inplace_CHW.c \
../TinyEngine/src/kernels/int_forward_op/patchpadding_depthwise_kernel3x3_stride2_inplace_CHW.c \
../TinyEngine/src/kernels/int_forward_op/patchpadding_kbuf_convolve_s8_kernel3_inputch3_stride2.c \
../TinyEngine/src/kernels/int_forward_op/stable_softmax.c \
../TinyEngine/src/kernels/int_forward_op/upsample_byte.c 

C_DEPS += \
./TinyEngine/src/kernels/int_forward_op/add.d \
./TinyEngine/src/kernels/int_forward_op/arm_convolve_s8_4col.d \
./TinyEngine/src/kernels/int_forward_op/arm_nn_mat_mult_kernel3_input3_s8_s16.d \
./TinyEngine/src/kernels/int_forward_op/arm_nn_mat_mult_kernel_s8_s16_reordered_8mul.d \
./TinyEngine/src/kernels/int_forward_op/arm_nn_mat_mult_kernel_s8_s16_reordered_oddch.d \
./TinyEngine/src/kernels/int_forward_op/avgpooling.d \
./TinyEngine/src/kernels/int_forward_op/concat_ch.d \
./TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8.d \
./TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_SRAM.d \
./TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_ch16.d \
./TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_ch24.d \
./TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_ch48.d \
./TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_ch8.d \
./TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_kbuf.d \
./TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_oddch.d \
./TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_skip_pad.d \
./TinyEngine/src/kernels/int_forward_op/convolve_s8_kernel2x3_inputch3_stride2_pad1.d \
./TinyEngine/src/kernels/int_forward_op/convolve_s8_kernel3_inputch3_stride2_pad1.d \
./TinyEngine/src/kernels/int_forward_op/convolve_s8_kernel3_stride1_pad1.d \
./TinyEngine/src/kernels/int_forward_op/convolve_s8_kernel3x2_inputch3_stride2_pad1.d \
./TinyEngine/src/kernels/int_forward_op/convolve_u8_kernel3_inputch3_stride1_pad1.d \
./TinyEngine/src/kernels/int_forward_op/convolve_u8_kernel3_inputch3_stride2_pad1.d \
./TinyEngine/src/kernels/int_forward_op/element_mult.d \
./TinyEngine/src/kernels/int_forward_op/fully_connected.d \
./TinyEngine/src/kernels/int_forward_op/mat_mul_fp.d \
./TinyEngine/src/kernels/int_forward_op/mat_mult_kernels.d \
./TinyEngine/src/kernels/int_forward_op/maxpooling.d \
./TinyEngine/src/kernels/int_forward_op/patchpadding_convolve_s8_kernel3_inputch3_stride2.d \
./TinyEngine/src/kernels/int_forward_op/patchpadding_depthwise_kernel3x3_stride1_inplace_CHW.d \
./TinyEngine/src/kernels/int_forward_op/patchpadding_depthwise_kernel3x3_stride2_inplace_CHW.d \
./TinyEngine/src/kernels/int_forward_op/patchpadding_kbuf_convolve_s8_kernel3_inputch3_stride2.d \
./TinyEngine/src/kernels/int_forward_op/stable_softmax.d \
./TinyEngine/src/kernels/int_forward_op/upsample_byte.d 

OBJS += \
./TinyEngine/src/kernels/int_forward_op/add.o \
./TinyEngine/src/kernels/int_forward_op/arm_convolve_s8_4col.o \
./TinyEngine/src/kernels/int_forward_op/arm_nn_mat_mult_kernel3_input3_s8_s16.o \
./TinyEngine/src/kernels/int_forward_op/arm_nn_mat_mult_kernel_s8_s16_reordered_8mul.o \
./TinyEngine/src/kernels/int_forward_op/arm_nn_mat_mult_kernel_s8_s16_reordered_oddch.o \
./TinyEngine/src/kernels/int_forward_op/avgpooling.o \
./TinyEngine/src/kernels/int_forward_op/concat_ch.o \
./TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8.o \
./TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_SRAM.o \
./TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_ch16.o \
./TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_ch24.o \
./TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_ch48.o \
./TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_ch8.o \
./TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_kbuf.o \
./TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_oddch.o \
./TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_skip_pad.o \
./TinyEngine/src/kernels/int_forward_op/convolve_s8_kernel2x3_inputch3_stride2_pad1.o \
./TinyEngine/src/kernels/int_forward_op/convolve_s8_kernel3_inputch3_stride2_pad1.o \
./TinyEngine/src/kernels/int_forward_op/convolve_s8_kernel3_stride1_pad1.o \
./TinyEngine/src/kernels/int_forward_op/convolve_s8_kernel3x2_inputch3_stride2_pad1.o \
./TinyEngine/src/kernels/int_forward_op/convolve_u8_kernel3_inputch3_stride1_pad1.o \
./TinyEngine/src/kernels/int_forward_op/convolve_u8_kernel3_inputch3_stride2_pad1.o \
./TinyEngine/src/kernels/int_forward_op/element_mult.o \
./TinyEngine/src/kernels/int_forward_op/fully_connected.o \
./TinyEngine/src/kernels/int_forward_op/mat_mul_fp.o \
./TinyEngine/src/kernels/int_forward_op/mat_mult_kernels.o \
./TinyEngine/src/kernels/int_forward_op/maxpooling.o \
./TinyEngine/src/kernels/int_forward_op/patchpadding_convolve_s8_kernel3_inputch3_stride2.o \
./TinyEngine/src/kernels/int_forward_op/patchpadding_depthwise_kernel3x3_stride1_inplace_CHW.o \
./TinyEngine/src/kernels/int_forward_op/patchpadding_depthwise_kernel3x3_stride2_inplace_CHW.o \
./TinyEngine/src/kernels/int_forward_op/patchpadding_kbuf_convolve_s8_kernel3_inputch3_stride2.o \
./TinyEngine/src/kernels/int_forward_op/stable_softmax.o \
./TinyEngine/src/kernels/int_forward_op/upsample_byte.o 

OBJS__QUOTED += \
"TinyEngine\src\kernels\int_forward_op\add.o" \
"TinyEngine\src\kernels\int_forward_op\arm_convolve_s8_4col.o" \
"TinyEngine\src\kernels\int_forward_op\arm_nn_mat_mult_kernel3_input3_s8_s16.o" \
"TinyEngine\src\kernels\int_forward_op\arm_nn_mat_mult_kernel_s8_s16_reordered_8mul.o" \
"TinyEngine\src\kernels\int_forward_op\arm_nn_mat_mult_kernel_s8_s16_reordered_oddch.o" \
"TinyEngine\src\kernels\int_forward_op\avgpooling.o" \
"TinyEngine\src\kernels\int_forward_op\concat_ch.o" \
"TinyEngine\src\kernels\int_forward_op\convolve_1x1_s8.o" \
"TinyEngine\src\kernels\int_forward_op\convolve_1x1_s8_SRAM.o" \
"TinyEngine\src\kernels\int_forward_op\convolve_1x1_s8_ch16.o" \
"TinyEngine\src\kernels\int_forward_op\convolve_1x1_s8_ch24.o" \
"TinyEngine\src\kernels\int_forward_op\convolve_1x1_s8_ch48.o" \
"TinyEngine\src\kernels\int_forward_op\convolve_1x1_s8_ch8.o" \
"TinyEngine\src\kernels\int_forward_op\convolve_1x1_s8_kbuf.o" \
"TinyEngine\src\kernels\int_forward_op\convolve_1x1_s8_oddch.o" \
"TinyEngine\src\kernels\int_forward_op\convolve_1x1_s8_skip_pad.o" \
"TinyEngine\src\kernels\int_forward_op\convolve_s8_kernel2x3_inputch3_stride2_pad1.o" \
"TinyEngine\src\kernels\int_forward_op\convolve_s8_kernel3_inputch3_stride2_pad1.o" \
"TinyEngine\src\kernels\int_forward_op\convolve_s8_kernel3_stride1_pad1.o" \
"TinyEngine\src\kernels\int_forward_op\convolve_s8_kernel3x2_inputch3_stride2_pad1.o" \
"TinyEngine\src\kernels\int_forward_op\convolve_u8_kernel3_inputch3_stride1_pad1.o" \
"TinyEngine\src\kernels\int_forward_op\convolve_u8_kernel3_inputch3_stride2_pad1.o" \
"TinyEngine\src\kernels\int_forward_op\element_mult.o" \
"TinyEngine\src\kernels\int_forward_op\fully_connected.o" \
"TinyEngine\src\kernels\int_forward_op\mat_mul_fp.o" \
"TinyEngine\src\kernels\int_forward_op\mat_mult_kernels.o" \
"TinyEngine\src\kernels\int_forward_op\maxpooling.o" \
"TinyEngine\src\kernels\int_forward_op\patchpadding_convolve_s8_kernel3_inputch3_stride2.o" \
"TinyEngine\src\kernels\int_forward_op\patchpadding_depthwise_kernel3x3_stride1_inplace_CHW.o" \
"TinyEngine\src\kernels\int_forward_op\patchpadding_depthwise_kernel3x3_stride2_inplace_CHW.o" \
"TinyEngine\src\kernels\int_forward_op\patchpadding_kbuf_convolve_s8_kernel3_inputch3_stride2.o" \
"TinyEngine\src\kernels\int_forward_op\stable_softmax.o" \
"TinyEngine\src\kernels\int_forward_op\upsample_byte.o" 

C_DEPS__QUOTED += \
"TinyEngine\src\kernels\int_forward_op\add.d" \
"TinyEngine\src\kernels\int_forward_op\arm_convolve_s8_4col.d" \
"TinyEngine\src\kernels\int_forward_op\arm_nn_mat_mult_kernel3_input3_s8_s16.d" \
"TinyEngine\src\kernels\int_forward_op\arm_nn_mat_mult_kernel_s8_s16_reordered_8mul.d" \
"TinyEngine\src\kernels\int_forward_op\arm_nn_mat_mult_kernel_s8_s16_reordered_oddch.d" \
"TinyEngine\src\kernels\int_forward_op\avgpooling.d" \
"TinyEngine\src\kernels\int_forward_op\concat_ch.d" \
"TinyEngine\src\kernels\int_forward_op\convolve_1x1_s8.d" \
"TinyEngine\src\kernels\int_forward_op\convolve_1x1_s8_SRAM.d" \
"TinyEngine\src\kernels\int_forward_op\convolve_1x1_s8_ch16.d" \
"TinyEngine\src\kernels\int_forward_op\convolve_1x1_s8_ch24.d" \
"TinyEngine\src\kernels\int_forward_op\convolve_1x1_s8_ch48.d" \
"TinyEngine\src\kernels\int_forward_op\convolve_1x1_s8_ch8.d" \
"TinyEngine\src\kernels\int_forward_op\convolve_1x1_s8_kbuf.d" \
"TinyEngine\src\kernels\int_forward_op\convolve_1x1_s8_oddch.d" \
"TinyEngine\src\kernels\int_forward_op\convolve_1x1_s8_skip_pad.d" \
"TinyEngine\src\kernels\int_forward_op\convolve_s8_kernel2x3_inputch3_stride2_pad1.d" \
"TinyEngine\src\kernels\int_forward_op\convolve_s8_kernel3_inputch3_stride2_pad1.d" \
"TinyEngine\src\kernels\int_forward_op\convolve_s8_kernel3_stride1_pad1.d" \
"TinyEngine\src\kernels\int_forward_op\convolve_s8_kernel3x2_inputch3_stride2_pad1.d" \
"TinyEngine\src\kernels\int_forward_op\convolve_u8_kernel3_inputch3_stride1_pad1.d" \
"TinyEngine\src\kernels\int_forward_op\convolve_u8_kernel3_inputch3_stride2_pad1.d" \
"TinyEngine\src\kernels\int_forward_op\element_mult.d" \
"TinyEngine\src\kernels\int_forward_op\fully_connected.d" \
"TinyEngine\src\kernels\int_forward_op\mat_mul_fp.d" \
"TinyEngine\src\kernels\int_forward_op\mat_mult_kernels.d" \
"TinyEngine\src\kernels\int_forward_op\maxpooling.d" \
"TinyEngine\src\kernels\int_forward_op\patchpadding_convolve_s8_kernel3_inputch3_stride2.d" \
"TinyEngine\src\kernels\int_forward_op\patchpadding_depthwise_kernel3x3_stride1_inplace_CHW.d" \
"TinyEngine\src\kernels\int_forward_op\patchpadding_depthwise_kernel3x3_stride2_inplace_CHW.d" \
"TinyEngine\src\kernels\int_forward_op\patchpadding_kbuf_convolve_s8_kernel3_inputch3_stride2.d" \
"TinyEngine\src\kernels\int_forward_op\stable_softmax.d" \
"TinyEngine\src\kernels\int_forward_op\upsample_byte.d" 

C_SRCS__QUOTED += \
"../TinyEngine/src/kernels/int_forward_op/add.c" \
"../TinyEngine/src/kernels/int_forward_op/arm_convolve_s8_4col.c" \
"../TinyEngine/src/kernels/int_forward_op/arm_nn_mat_mult_kernel3_input3_s8_s16.c" \
"../TinyEngine/src/kernels/int_forward_op/arm_nn_mat_mult_kernel_s8_s16_reordered_8mul.c" \
"../TinyEngine/src/kernels/int_forward_op/arm_nn_mat_mult_kernel_s8_s16_reordered_oddch.c" \
"../TinyEngine/src/kernels/int_forward_op/avgpooling.c" \
"../TinyEngine/src/kernels/int_forward_op/concat_ch.c" \
"../TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8.c" \
"../TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_SRAM.c" \
"../TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_ch16.c" \
"../TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_ch24.c" \
"../TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_ch48.c" \
"../TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_ch8.c" \
"../TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_kbuf.c" \
"../TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_oddch.c" \
"../TinyEngine/src/kernels/int_forward_op/convolve_1x1_s8_skip_pad.c" \
"../TinyEngine/src/kernels/int_forward_op/convolve_s8_kernel2x3_inputch3_stride2_pad1.c" \
"../TinyEngine/src/kernels/int_forward_op/convolve_s8_kernel3_inputch3_stride2_pad1.c" \
"../TinyEngine/src/kernels/int_forward_op/convolve_s8_kernel3_stride1_pad1.c" \
"../TinyEngine/src/kernels/int_forward_op/convolve_s8_kernel3x2_inputch3_stride2_pad1.c" \
"../TinyEngine/src/kernels/int_forward_op/convolve_u8_kernel3_inputch3_stride1_pad1.c" \
"../TinyEngine/src/kernels/int_forward_op/convolve_u8_kernel3_inputch3_stride2_pad1.c" \
"../TinyEngine/src/kernels/int_forward_op/element_mult.c" \
"../TinyEngine/src/kernels/int_forward_op/fully_connected.c" \
"../TinyEngine/src/kernels/int_forward_op/mat_mul_fp.c" \
"../TinyEngine/src/kernels/int_forward_op/mat_mult_kernels.c" \
"../TinyEngine/src/kernels/int_forward_op/maxpooling.c" \
"../TinyEngine/src/kernels/int_forward_op/patchpadding_convolve_s8_kernel3_inputch3_stride2.c" \
"../TinyEngine/src/kernels/int_forward_op/patchpadding_depthwise_kernel3x3_stride1_inplace_CHW.c" \
"../TinyEngine/src/kernels/int_forward_op/patchpadding_depthwise_kernel3x3_stride2_inplace_CHW.c" \
"../TinyEngine/src/kernels/int_forward_op/patchpadding_kbuf_convolve_s8_kernel3_inputch3_stride2.c" \
"../TinyEngine/src/kernels/int_forward_op/stable_softmax.c" \
"../TinyEngine/src/kernels/int_forward_op/upsample_byte.c" 



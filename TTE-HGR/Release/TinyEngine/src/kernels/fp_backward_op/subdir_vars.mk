################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../TinyEngine/src/kernels/fp_backward_op/add_fp.c \
../TinyEngine/src/kernels/fp_backward_op/div_fp.c \
../TinyEngine/src/kernels/fp_backward_op/group_conv_fp_kernel4_stride1_pad0.c \
../TinyEngine/src/kernels/fp_backward_op/group_conv_fp_kernel8_stride1_pad0.c \
../TinyEngine/src/kernels/fp_backward_op/group_pointwise_conv_fp.c \
../TinyEngine/src/kernels/fp_backward_op/less_fp.c \
../TinyEngine/src/kernels/fp_backward_op/log_softmax_fp.c \
../TinyEngine/src/kernels/fp_backward_op/mul_fp.c \
../TinyEngine/src/kernels/fp_backward_op/negative_fp.c \
../TinyEngine/src/kernels/fp_backward_op/nll_loss_fp.c \
../TinyEngine/src/kernels/fp_backward_op/pointwise_conv_fp.c \
../TinyEngine/src/kernels/fp_backward_op/strided_slice_3Dto3D_fp.c \
../TinyEngine/src/kernels/fp_backward_op/strided_slice_4Dto4D_fp.c \
../TinyEngine/src/kernels/fp_backward_op/sub_fp.c \
../TinyEngine/src/kernels/fp_backward_op/sum_2D_fp.c \
../TinyEngine/src/kernels/fp_backward_op/sum_3D_fp.c \
../TinyEngine/src/kernels/fp_backward_op/sum_4D_exclude_fp.c \
../TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel3_stride1_inpad1_outpad0.c \
../TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel3_stride2_inpad1_outpad1.c \
../TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel5_stride1_inpad2_outpad0.c \
../TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel5_stride2_inpad2_outpad1.c \
../TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel7_stride1_inpad3_outpad0.c \
../TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel7_stride2_inpad3_outpad1.c \
../TinyEngine/src/kernels/fp_backward_op/tte_exp_fp.c \
../TinyEngine/src/kernels/fp_backward_op/where_fp.c 

C_DEPS += \
./TinyEngine/src/kernels/fp_backward_op/add_fp.d \
./TinyEngine/src/kernels/fp_backward_op/div_fp.d \
./TinyEngine/src/kernels/fp_backward_op/group_conv_fp_kernel4_stride1_pad0.d \
./TinyEngine/src/kernels/fp_backward_op/group_conv_fp_kernel8_stride1_pad0.d \
./TinyEngine/src/kernels/fp_backward_op/group_pointwise_conv_fp.d \
./TinyEngine/src/kernels/fp_backward_op/less_fp.d \
./TinyEngine/src/kernels/fp_backward_op/log_softmax_fp.d \
./TinyEngine/src/kernels/fp_backward_op/mul_fp.d \
./TinyEngine/src/kernels/fp_backward_op/negative_fp.d \
./TinyEngine/src/kernels/fp_backward_op/nll_loss_fp.d \
./TinyEngine/src/kernels/fp_backward_op/pointwise_conv_fp.d \
./TinyEngine/src/kernels/fp_backward_op/strided_slice_3Dto3D_fp.d \
./TinyEngine/src/kernels/fp_backward_op/strided_slice_4Dto4D_fp.d \
./TinyEngine/src/kernels/fp_backward_op/sub_fp.d \
./TinyEngine/src/kernels/fp_backward_op/sum_2D_fp.d \
./TinyEngine/src/kernels/fp_backward_op/sum_3D_fp.d \
./TinyEngine/src/kernels/fp_backward_op/sum_4D_exclude_fp.d \
./TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel3_stride1_inpad1_outpad0.d \
./TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel3_stride2_inpad1_outpad1.d \
./TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel5_stride1_inpad2_outpad0.d \
./TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel5_stride2_inpad2_outpad1.d \
./TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel7_stride1_inpad3_outpad0.d \
./TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel7_stride2_inpad3_outpad1.d \
./TinyEngine/src/kernels/fp_backward_op/tte_exp_fp.d \
./TinyEngine/src/kernels/fp_backward_op/where_fp.d 

OBJS += \
./TinyEngine/src/kernels/fp_backward_op/add_fp.o \
./TinyEngine/src/kernels/fp_backward_op/div_fp.o \
./TinyEngine/src/kernels/fp_backward_op/group_conv_fp_kernel4_stride1_pad0.o \
./TinyEngine/src/kernels/fp_backward_op/group_conv_fp_kernel8_stride1_pad0.o \
./TinyEngine/src/kernels/fp_backward_op/group_pointwise_conv_fp.o \
./TinyEngine/src/kernels/fp_backward_op/less_fp.o \
./TinyEngine/src/kernels/fp_backward_op/log_softmax_fp.o \
./TinyEngine/src/kernels/fp_backward_op/mul_fp.o \
./TinyEngine/src/kernels/fp_backward_op/negative_fp.o \
./TinyEngine/src/kernels/fp_backward_op/nll_loss_fp.o \
./TinyEngine/src/kernels/fp_backward_op/pointwise_conv_fp.o \
./TinyEngine/src/kernels/fp_backward_op/strided_slice_3Dto3D_fp.o \
./TinyEngine/src/kernels/fp_backward_op/strided_slice_4Dto4D_fp.o \
./TinyEngine/src/kernels/fp_backward_op/sub_fp.o \
./TinyEngine/src/kernels/fp_backward_op/sum_2D_fp.o \
./TinyEngine/src/kernels/fp_backward_op/sum_3D_fp.o \
./TinyEngine/src/kernels/fp_backward_op/sum_4D_exclude_fp.o \
./TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel3_stride1_inpad1_outpad0.o \
./TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel3_stride2_inpad1_outpad1.o \
./TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel5_stride1_inpad2_outpad0.o \
./TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel5_stride2_inpad2_outpad1.o \
./TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel7_stride1_inpad3_outpad0.o \
./TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel7_stride2_inpad3_outpad1.o \
./TinyEngine/src/kernels/fp_backward_op/tte_exp_fp.o \
./TinyEngine/src/kernels/fp_backward_op/where_fp.o 

OBJS__QUOTED += \
"TinyEngine\src\kernels\fp_backward_op\add_fp.o" \
"TinyEngine\src\kernels\fp_backward_op\div_fp.o" \
"TinyEngine\src\kernels\fp_backward_op\group_conv_fp_kernel4_stride1_pad0.o" \
"TinyEngine\src\kernels\fp_backward_op\group_conv_fp_kernel8_stride1_pad0.o" \
"TinyEngine\src\kernels\fp_backward_op\group_pointwise_conv_fp.o" \
"TinyEngine\src\kernels\fp_backward_op\less_fp.o" \
"TinyEngine\src\kernels\fp_backward_op\log_softmax_fp.o" \
"TinyEngine\src\kernels\fp_backward_op\mul_fp.o" \
"TinyEngine\src\kernels\fp_backward_op\negative_fp.o" \
"TinyEngine\src\kernels\fp_backward_op\nll_loss_fp.o" \
"TinyEngine\src\kernels\fp_backward_op\pointwise_conv_fp.o" \
"TinyEngine\src\kernels\fp_backward_op\strided_slice_3Dto3D_fp.o" \
"TinyEngine\src\kernels\fp_backward_op\strided_slice_4Dto4D_fp.o" \
"TinyEngine\src\kernels\fp_backward_op\sub_fp.o" \
"TinyEngine\src\kernels\fp_backward_op\sum_2D_fp.o" \
"TinyEngine\src\kernels\fp_backward_op\sum_3D_fp.o" \
"TinyEngine\src\kernels\fp_backward_op\sum_4D_exclude_fp.o" \
"TinyEngine\src\kernels\fp_backward_op\transpose_depthwise_conv_fp_kernel3_stride1_inpad1_outpad0.o" \
"TinyEngine\src\kernels\fp_backward_op\transpose_depthwise_conv_fp_kernel3_stride2_inpad1_outpad1.o" \
"TinyEngine\src\kernels\fp_backward_op\transpose_depthwise_conv_fp_kernel5_stride1_inpad2_outpad0.o" \
"TinyEngine\src\kernels\fp_backward_op\transpose_depthwise_conv_fp_kernel5_stride2_inpad2_outpad1.o" \
"TinyEngine\src\kernels\fp_backward_op\transpose_depthwise_conv_fp_kernel7_stride1_inpad3_outpad0.o" \
"TinyEngine\src\kernels\fp_backward_op\transpose_depthwise_conv_fp_kernel7_stride2_inpad3_outpad1.o" \
"TinyEngine\src\kernels\fp_backward_op\tte_exp_fp.o" \
"TinyEngine\src\kernels\fp_backward_op\where_fp.o" 

C_DEPS__QUOTED += \
"TinyEngine\src\kernels\fp_backward_op\add_fp.d" \
"TinyEngine\src\kernels\fp_backward_op\div_fp.d" \
"TinyEngine\src\kernels\fp_backward_op\group_conv_fp_kernel4_stride1_pad0.d" \
"TinyEngine\src\kernels\fp_backward_op\group_conv_fp_kernel8_stride1_pad0.d" \
"TinyEngine\src\kernels\fp_backward_op\group_pointwise_conv_fp.d" \
"TinyEngine\src\kernels\fp_backward_op\less_fp.d" \
"TinyEngine\src\kernels\fp_backward_op\log_softmax_fp.d" \
"TinyEngine\src\kernels\fp_backward_op\mul_fp.d" \
"TinyEngine\src\kernels\fp_backward_op\negative_fp.d" \
"TinyEngine\src\kernels\fp_backward_op\nll_loss_fp.d" \
"TinyEngine\src\kernels\fp_backward_op\pointwise_conv_fp.d" \
"TinyEngine\src\kernels\fp_backward_op\strided_slice_3Dto3D_fp.d" \
"TinyEngine\src\kernels\fp_backward_op\strided_slice_4Dto4D_fp.d" \
"TinyEngine\src\kernels\fp_backward_op\sub_fp.d" \
"TinyEngine\src\kernels\fp_backward_op\sum_2D_fp.d" \
"TinyEngine\src\kernels\fp_backward_op\sum_3D_fp.d" \
"TinyEngine\src\kernels\fp_backward_op\sum_4D_exclude_fp.d" \
"TinyEngine\src\kernels\fp_backward_op\transpose_depthwise_conv_fp_kernel3_stride1_inpad1_outpad0.d" \
"TinyEngine\src\kernels\fp_backward_op\transpose_depthwise_conv_fp_kernel3_stride2_inpad1_outpad1.d" \
"TinyEngine\src\kernels\fp_backward_op\transpose_depthwise_conv_fp_kernel5_stride1_inpad2_outpad0.d" \
"TinyEngine\src\kernels\fp_backward_op\transpose_depthwise_conv_fp_kernel5_stride2_inpad2_outpad1.d" \
"TinyEngine\src\kernels\fp_backward_op\transpose_depthwise_conv_fp_kernel7_stride1_inpad3_outpad0.d" \
"TinyEngine\src\kernels\fp_backward_op\transpose_depthwise_conv_fp_kernel7_stride2_inpad3_outpad1.d" \
"TinyEngine\src\kernels\fp_backward_op\tte_exp_fp.d" \
"TinyEngine\src\kernels\fp_backward_op\where_fp.d" 

C_SRCS__QUOTED += \
"../TinyEngine/src/kernels/fp_backward_op/add_fp.c" \
"../TinyEngine/src/kernels/fp_backward_op/div_fp.c" \
"../TinyEngine/src/kernels/fp_backward_op/group_conv_fp_kernel4_stride1_pad0.c" \
"../TinyEngine/src/kernels/fp_backward_op/group_conv_fp_kernel8_stride1_pad0.c" \
"../TinyEngine/src/kernels/fp_backward_op/group_pointwise_conv_fp.c" \
"../TinyEngine/src/kernels/fp_backward_op/less_fp.c" \
"../TinyEngine/src/kernels/fp_backward_op/log_softmax_fp.c" \
"../TinyEngine/src/kernels/fp_backward_op/mul_fp.c" \
"../TinyEngine/src/kernels/fp_backward_op/negative_fp.c" \
"../TinyEngine/src/kernels/fp_backward_op/nll_loss_fp.c" \
"../TinyEngine/src/kernels/fp_backward_op/pointwise_conv_fp.c" \
"../TinyEngine/src/kernels/fp_backward_op/strided_slice_3Dto3D_fp.c" \
"../TinyEngine/src/kernels/fp_backward_op/strided_slice_4Dto4D_fp.c" \
"../TinyEngine/src/kernels/fp_backward_op/sub_fp.c" \
"../TinyEngine/src/kernels/fp_backward_op/sum_2D_fp.c" \
"../TinyEngine/src/kernels/fp_backward_op/sum_3D_fp.c" \
"../TinyEngine/src/kernels/fp_backward_op/sum_4D_exclude_fp.c" \
"../TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel3_stride1_inpad1_outpad0.c" \
"../TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel3_stride2_inpad1_outpad1.c" \
"../TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel5_stride1_inpad2_outpad0.c" \
"../TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel5_stride2_inpad2_outpad1.c" \
"../TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel7_stride1_inpad3_outpad0.c" \
"../TinyEngine/src/kernels/fp_backward_op/transpose_depthwise_conv_fp_kernel7_stride2_inpad3_outpad1.c" \
"../TinyEngine/src/kernels/fp_backward_op/tte_exp_fp.c" \
"../TinyEngine/src/kernels/fp_backward_op/where_fp.c" 



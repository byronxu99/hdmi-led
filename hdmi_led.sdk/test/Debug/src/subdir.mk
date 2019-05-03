################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/testperiph.c \
../src/xdevcfg_selftest_example.c \
../src/xdmaps_example_w_intr.c \
../src/xqspips_selftest_example.c \
../src/xscugic_tapp_example.c \
../src/xscutimer_intr_example.c \
../src/xscutimer_polled_example.c \
../src/xscuwdt_intr_example.c 

OBJS += \
./src/testperiph.o \
./src/xdevcfg_selftest_example.o \
./src/xdmaps_example_w_intr.o \
./src/xqspips_selftest_example.o \
./src/xscugic_tapp_example.o \
./src/xscutimer_intr_example.o \
./src/xscutimer_polled_example.o \
./src/xscuwdt_intr_example.o 

C_DEPS += \
./src/testperiph.d \
./src/xdevcfg_selftest_example.d \
./src/xdmaps_example_w_intr.d \
./src/xqspips_selftest_example.d \
./src/xscugic_tapp_example.d \
./src/xscutimer_intr_example.d \
./src/xscutimer_polled_example.d \
./src/xscuwdt_intr_example.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../hdmi_led_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



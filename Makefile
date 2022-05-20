##########################################################################################################################
# File automatically-generated by tool: [projectgenerator] version: [3.16.0] date: [Wed May 18 19:22:05 CST 2022]
##########################################################################################################################

# ------------------------------------------------
# Generic Makefile (based on gcc)
#
# ChangeLog :
#	2017-02-10 - Several enhancements + project update mode
#   2015-07-22 - first version
# ------------------------------------------------

######################################
# target
######################################
TARGET = CubeProject


######################################
# building variables
######################################
# debug build?
DEBUG = 1
# optimization
OPT = -Og


#######################################
# paths
#######################################
# Build path
BUILD_DIR = build

######################################
# source
######################################
# C sources
C_SOURCES =  \
Core/Src/main.c \
Core/Src/stm32h7xx_it.c \
Core/Src/system_stm32h7xx.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_exti.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_gpio.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_rcc.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_utils.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_pwr.c \
Middlewares/ThreadX/common/src/tx_block_allocate.c \
Middlewares/ThreadX/common/src/tx_block_pool_cleanup.c \
Middlewares/ThreadX/common/src/tx_block_pool_create.c \
Middlewares/ThreadX/common/src/tx_block_pool_delete.c \
Middlewares/ThreadX/common/src/tx_block_pool_info_get.c \
Middlewares/ThreadX/common/src/tx_block_pool_initialize.c \
Middlewares/ThreadX/common/src/tx_block_pool_performance_info_get.c \
Middlewares/ThreadX/common/src/tx_block_pool_performance_system_info_get.c \
Middlewares/ThreadX/common/src/tx_block_pool_prioritize.c \
Middlewares/ThreadX/common/src/tx_block_release.c \
Middlewares/ThreadX/common/src/tx_byte_allocate.c \
Middlewares/ThreadX/common/src/tx_byte_pool_cleanup.c \
Middlewares/ThreadX/common/src/tx_byte_pool_create.c \
Middlewares/ThreadX/common/src/tx_byte_pool_delete.c \
Middlewares/ThreadX/common/src/tx_byte_pool_info_get.c \
Middlewares/ThreadX/common/src/tx_byte_pool_initialize.c \
Middlewares/ThreadX/common/src/tx_byte_pool_performance_info_get.c \
Middlewares/ThreadX/common/src/tx_byte_pool_performance_system_info_get.c \
Middlewares/ThreadX/common/src/tx_byte_pool_prioritize.c \
Middlewares/ThreadX/common/src/tx_byte_pool_search.c \
Middlewares/ThreadX/common/src/tx_byte_release.c \
Middlewares/ThreadX/common/src/tx_event_flags_cleanup.c \
Middlewares/ThreadX/common/src/tx_event_flags_create.c \
Middlewares/ThreadX/common/src/tx_event_flags_delete.c \
Middlewares/ThreadX/common/src/tx_event_flags_get.c \
Middlewares/ThreadX/common/src/tx_event_flags_info_get.c \
Middlewares/ThreadX/common/src/tx_event_flags_initialize.c \
Middlewares/ThreadX/common/src/tx_event_flags_performance_info_get.c \
Middlewares/ThreadX/common/src/tx_event_flags_performance_system_info_get.c \
Middlewares/ThreadX/common/src/tx_event_flags_set.c \
Middlewares/ThreadX/common/src/tx_event_flags_set_notify.c \
Middlewares/ThreadX/common/src/tx_initialize_high_level.c \
Middlewares/ThreadX/common/src/tx_initialize_kernel_enter.c \
Middlewares/ThreadX/common/src/tx_initialize_kernel_setup.c \
Middlewares/ThreadX/common/src/tx_misra.c \
Middlewares/ThreadX/common/src/tx_mutex_cleanup.c \
Middlewares/ThreadX/common/src/tx_mutex_create.c \
Middlewares/ThreadX/common/src/tx_mutex_delete.c \
Middlewares/ThreadX/common/src/tx_mutex_get.c \
Middlewares/ThreadX/common/src/tx_mutex_info_get.c \
Middlewares/ThreadX/common/src/tx_mutex_initialize.c \
Middlewares/ThreadX/common/src/tx_mutex_performance_info_get.c \
Middlewares/ThreadX/common/src/tx_mutex_performance_system_info_get.c \
Middlewares/ThreadX/common/src/tx_mutex_prioritize.c \
Middlewares/ThreadX/common/src/tx_mutex_priority_change.c \
Middlewares/ThreadX/common/src/tx_mutex_put.c \
Middlewares/ThreadX/common/src/tx_queue_cleanup.c \
Middlewares/ThreadX/common/src/tx_queue_create.c \
Middlewares/ThreadX/common/src/tx_queue_delete.c \
Middlewares/ThreadX/common/src/tx_queue_flush.c \
Middlewares/ThreadX/common/src/tx_queue_front_send.c \
Middlewares/ThreadX/common/src/tx_queue_info_get.c \
Middlewares/ThreadX/common/src/tx_queue_initialize.c \
Middlewares/ThreadX/common/src/tx_queue_performance_info_get.c \
Middlewares/ThreadX/common/src/tx_queue_performance_system_info_get.c \
Middlewares/ThreadX/common/src/tx_queue_prioritize.c \
Middlewares/ThreadX/common/src/tx_queue_receive.c \
Middlewares/ThreadX/common/src/tx_queue_send.c \
Middlewares/ThreadX/common/src/tx_queue_send_notify.c \
Middlewares/ThreadX/common/src/tx_semaphore_ceiling_put.c \
Middlewares/ThreadX/common/src/tx_semaphore_cleanup.c \
Middlewares/ThreadX/common/src/tx_semaphore_create.c \
Middlewares/ThreadX/common/src/tx_semaphore_delete.c \
Middlewares/ThreadX/common/src/tx_semaphore_get.c \
Middlewares/ThreadX/common/src/tx_semaphore_info_get.c \
Middlewares/ThreadX/common/src/tx_semaphore_initialize.c \
Middlewares/ThreadX/common/src/tx_semaphore_performance_info_get.c \
Middlewares/ThreadX/common/src/tx_semaphore_performance_system_info_get.c \
Middlewares/ThreadX/common/src/tx_semaphore_prioritize.c \
Middlewares/ThreadX/common/src/tx_semaphore_put.c \
Middlewares/ThreadX/common/src/tx_semaphore_put_notify.c \
Middlewares/ThreadX/common/src/tx_thread_create.c \
Middlewares/ThreadX/common/src/tx_thread_delete.c \
Middlewares/ThreadX/common/src/tx_thread_entry_exit_notify.c \
Middlewares/ThreadX/common/src/tx_thread_identify.c \
Middlewares/ThreadX/common/src/tx_thread_info_get.c \
Middlewares/ThreadX/common/src/tx_thread_initialize.c \
Middlewares/ThreadX/common/src/tx_thread_performance_info_get.c \
Middlewares/ThreadX/common/src/tx_thread_performance_system_info_get.c \
Middlewares/ThreadX/common/src/tx_thread_preemption_change.c \
Middlewares/ThreadX/common/src/tx_thread_priority_change.c \
Middlewares/ThreadX/common/src/tx_thread_relinquish.c \
Middlewares/ThreadX/common/src/tx_thread_reset.c \
Middlewares/ThreadX/common/src/tx_thread_resume.c \
Middlewares/ThreadX/common/src/tx_thread_shell_entry.c \
Middlewares/ThreadX/common/src/tx_thread_sleep.c \
Middlewares/ThreadX/common/src/tx_thread_stack_analyze.c \
Middlewares/ThreadX/common/src/tx_thread_stack_error_handler.c \
Middlewares/ThreadX/common/src/tx_thread_stack_error_notify.c \
Middlewares/ThreadX/common/src/tx_thread_suspend.c \
Middlewares/ThreadX/common/src/tx_thread_system_preempt_check.c \
Middlewares/ThreadX/common/src/tx_thread_system_resume.c \
Middlewares/ThreadX/common/src/tx_thread_system_suspend.c \
Middlewares/ThreadX/common/src/tx_thread_terminate.c \
Middlewares/ThreadX/common/src/tx_thread_time_slice.c \
Middlewares/ThreadX/common/src/tx_thread_time_slice_change.c \
Middlewares/ThreadX/common/src/tx_thread_timeout.c \
Middlewares/ThreadX/common/src/tx_thread_wait_abort.c \
Middlewares/ThreadX/common/src/tx_time_get.c \
Middlewares/ThreadX/common/src/tx_time_set.c \
Middlewares/ThreadX/common/src/tx_timer_activate.c \
Middlewares/ThreadX/common/src/tx_timer_change.c \
Middlewares/ThreadX/common/src/tx_timer_create.c \
Middlewares/ThreadX/common/src/tx_timer_deactivate.c \
Middlewares/ThreadX/common/src/tx_timer_delete.c \
Middlewares/ThreadX/common/src/tx_timer_expiration_process.c \
Middlewares/ThreadX/common/src/tx_timer_info_get.c \
Middlewares/ThreadX/common/src/tx_timer_initialize.c \
Middlewares/ThreadX/common/src/tx_timer_performance_info_get.c \
Middlewares/ThreadX/common/src/tx_timer_performance_system_info_get.c \
Middlewares/ThreadX/common/src/tx_timer_system_activate.c \
Middlewares/ThreadX/common/src/tx_timer_system_deactivate.c \
Middlewares/ThreadX/common/src/tx_timer_thread_entry.c \
Middlewares/ThreadX/common/src/tx_trace_buffer_full_notify.c \
Middlewares/ThreadX/common/src/tx_trace_disable.c \
Middlewares/ThreadX/common/src/tx_trace_enable.c \
Middlewares/ThreadX/common/src/tx_trace_event_filter.c \
Middlewares/ThreadX/common/src/tx_trace_event_unfilter.c \
Middlewares/ThreadX/common/src/tx_trace_initialize.c \
Middlewares/ThreadX/common/src/tx_trace_interrupt_control.c \
Middlewares/ThreadX/common/src/tx_trace_isr_enter_insert.c \
Middlewares/ThreadX/common/src/tx_trace_isr_exit_insert.c \
Middlewares/ThreadX/common/src/tx_trace_object_register.c \
Middlewares/ThreadX/common/src/tx_trace_object_unregister.c \
Middlewares/ThreadX/common/src/tx_trace_user_event_insert.c \
Middlewares/ThreadX/common/src/txe_block_allocate.c \
Middlewares/ThreadX/common/src/txe_block_pool_create.c \
Middlewares/ThreadX/common/src/txe_block_pool_delete.c \
Middlewares/ThreadX/common/src/txe_block_pool_info_get.c \
Middlewares/ThreadX/common/src/txe_block_pool_prioritize.c \
Middlewares/ThreadX/common/src/txe_block_release.c \
Middlewares/ThreadX/common/src/txe_byte_allocate.c \
Middlewares/ThreadX/common/src/txe_byte_pool_create.c \
Middlewares/ThreadX/common/src/txe_byte_pool_delete.c \
Middlewares/ThreadX/common/src/txe_byte_pool_info_get.c \
Middlewares/ThreadX/common/src/txe_byte_pool_prioritize.c \
Middlewares/ThreadX/common/src/txe_byte_release.c \
Middlewares/ThreadX/common/src/txe_event_flags_create.c \
Middlewares/ThreadX/common/src/txe_event_flags_delete.c \
Middlewares/ThreadX/common/src/txe_event_flags_get.c \
Middlewares/ThreadX/common/src/txe_event_flags_info_get.c \
Middlewares/ThreadX/common/src/txe_event_flags_set.c \
Middlewares/ThreadX/common/src/txe_event_flags_set_notify.c \
Middlewares/ThreadX/common/src/txe_mutex_create.c \
Middlewares/ThreadX/common/src/txe_mutex_delete.c \
Middlewares/ThreadX/common/src/txe_mutex_get.c \
Middlewares/ThreadX/common/src/txe_mutex_info_get.c \
Middlewares/ThreadX/common/src/txe_mutex_prioritize.c \
Middlewares/ThreadX/common/src/txe_mutex_put.c \
Middlewares/ThreadX/common/src/txe_queue_create.c \
Middlewares/ThreadX/common/src/txe_queue_delete.c \
Middlewares/ThreadX/common/src/txe_queue_flush.c \
Middlewares/ThreadX/common/src/txe_queue_front_send.c \
Middlewares/ThreadX/common/src/txe_queue_info_get.c \
Middlewares/ThreadX/common/src/txe_queue_prioritize.c \
Middlewares/ThreadX/common/src/txe_queue_receive.c \
Middlewares/ThreadX/common/src/txe_queue_send.c \
Middlewares/ThreadX/common/src/txe_queue_send_notify.c \
Middlewares/ThreadX/common/src/txe_semaphore_ceiling_put.c \
Middlewares/ThreadX/common/src/txe_semaphore_create.c \
Middlewares/ThreadX/common/src/txe_semaphore_delete.c \
Middlewares/ThreadX/common/src/txe_semaphore_get.c \
Middlewares/ThreadX/common/src/txe_semaphore_info_get.c \
Middlewares/ThreadX/common/src/txe_semaphore_prioritize.c \
Middlewares/ThreadX/common/src/txe_semaphore_put.c \
Middlewares/ThreadX/common/src/txe_semaphore_put_notify.c \
Middlewares/ThreadX/common/src/txe_thread_create.c \
Middlewares/ThreadX/common/src/txe_thread_delete.c \
Middlewares/ThreadX/common/src/txe_thread_entry_exit_notify.c \
Middlewares/ThreadX/common/src/txe_thread_info_get.c \
Middlewares/ThreadX/common/src/txe_thread_preemption_change.c \
Middlewares/ThreadX/common/src/txe_thread_priority_change.c \
Middlewares/ThreadX/common/src/txe_thread_relinquish.c \
Middlewares/ThreadX/common/src/txe_thread_reset.c \
Middlewares/ThreadX/common/src/txe_thread_resume.c \
Middlewares/ThreadX/common/src/txe_thread_suspend.c \
Middlewares/ThreadX/common/src/txe_thread_terminate.c \
Middlewares/ThreadX/common/src/txe_thread_time_slice_change.c \
Middlewares/ThreadX/common/src/txe_thread_wait_abort.c \
Middlewares/ThreadX/common/src/txe_timer_activate.c \
Middlewares/ThreadX/common/src/txe_timer_change.c \
Middlewares/ThreadX/common/src/txe_timer_create.c \
Middlewares/ThreadX/common/src/txe_timer_deactivate.c \
Middlewares/ThreadX/common/src/txe_timer_delete.c \
Middlewares/ThreadX/common/src/txe_timer_info_get.c

# ASM sources
ASM_SOURCES =  \
startup_stm32h743xx.s \
Core/Src/tx_initialize_low_level.s \
Middlewares/ThreadX/ports/cortex_m7/gnu/src/tx_thread_context_restore.s \
Middlewares/ThreadX/ports/cortex_m7/gnu/src/tx_thread_context_save.s \
Middlewares/ThreadX/ports/cortex_m7/gnu/src/tx_thread_interrupt_control.s \
Middlewares/ThreadX/ports/cortex_m7/gnu/src/tx_thread_interrupt_disable.s \
Middlewares/ThreadX/ports/cortex_m7/gnu/src/tx_thread_interrupt_restore.s \
Middlewares/ThreadX/ports/cortex_m7/gnu/src/tx_thread_schedule.s \
Middlewares/ThreadX/ports/cortex_m7/gnu/src/tx_thread_stack_build.s \
Middlewares/ThreadX/ports/cortex_m7/gnu/src/tx_thread_system_return.s \
Middlewares/ThreadX/ports/cortex_m7/gnu/src/tx_timer_interrupt.s

#######################################
# binaries
#######################################
PREFIX = arm-none-eabi-
# The gcc compiler bin path can be either defined in make command via GCC_PATH variable (> make GCC_PATH=xxx)
# either it can be added to the PATH environment variable.
ifdef GCC_PATH
CC = $(GCC_PATH)/$(PREFIX)gcc
AS = $(GCC_PATH)/$(PREFIX)gcc -x assembler-with-cpp
CP = $(GCC_PATH)/$(PREFIX)objcopy
SZ = $(GCC_PATH)/$(PREFIX)size
else
CC = $(PREFIX)gcc
AS = $(PREFIX)gcc -x assembler-with-cpp
CP = $(PREFIX)objcopy
SZ = $(PREFIX)size
endif
HEX = $(CP) -O ihex
BIN = $(CP) -O binary -S
 
#######################################
# CFLAGS
#######################################
# cpu
CPU = -mcpu=cortex-m7

# fpu
FPU = -mfpu=fpv5-d16

# float-abi
FLOAT-ABI = -mfloat-abi=hard

# mcu
MCU = $(CPU) -mthumb $(FPU) $(FLOAT-ABI)

# macros for gcc
# AS defines
AS_DEFS = 

# C defines
C_DEFS =  \
-DUSE_FULL_LL_DRIVER \
-DHSE_VALUE=8000000 \
-DHSE_STARTUP_TIMEOUT=100 \
-DLSE_STARTUP_TIMEOUT=5000 \
-DLSE_VALUE=32768 \
-DEXTERNAL_CLOCK_VALUE=12288000 \
-DHSI_VALUE=64000000 \
-DLSI_VALUE=32000 \
-DVDD_VALUE=3300 \
-DSTM32H743xx \
-DTX_ENABLE_FPU_SUPPORT \
-DTX_ENABLE_STACK_CHECKING \
-DTX_INCLUDE_USER_DEFINE_FILE


# AS includes
AS_INCLUDES = 

# C includes
C_INCLUDES =  \
-ICore/Inc \
-IDrivers/STM32H7xx_HAL_Driver/Inc \
-IDrivers/CMSIS/Device/ST/STM32H7xx/Include \
-IDrivers/CMSIS/Include \
-IMiddlewares/ThreadX/common/inc \
-IMiddlewares/ThreadX/ports/cortex_m7/gnu/inc

# compile gcc flags
ASFLAGS = $(MCU) $(AS_DEFS) $(AS_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections

CFLAGS += $(MCU) $(C_DEFS) $(C_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections

ifeq ($(DEBUG), 1)
CFLAGS += -g -gdwarf-2
endif


# Generate dependency information
CFLAGS += -MMD -MP -MF"$(@:%.o=%.d)"


#######################################
# LDFLAGS
#######################################
# link script
LDSCRIPT = STM32H743ZITx_FLASH.ld

# libraries
LIBS = -lc -lm -lnosys 
LIBDIR = 
LDFLAGS = $(MCU) -specs=nano.specs -T$(LDSCRIPT) $(LIBDIR) $(LIBS) -Wl,-Map=$(BUILD_DIR)/$(TARGET).map,--cref -Wl,--gc-sections

# default action: build all
all: $(BUILD_DIR)/$(TARGET).elf $(BUILD_DIR)/$(TARGET).hex $(BUILD_DIR)/$(TARGET).bin


#######################################
# build the application
#######################################
# list of objects
OBJECTS = $(addprefix $(BUILD_DIR)/,$(notdir $(C_SOURCES:.c=.o)))
vpath %.c $(sort $(dir $(C_SOURCES)))
# list of ASM program objects
OBJECTS += $(addprefix $(BUILD_DIR)/,$(notdir $(ASM_SOURCES:.s=.o)))
vpath %.s $(sort $(dir $(ASM_SOURCES)))

$(BUILD_DIR)/%.o: %.c Makefile | $(BUILD_DIR) 
	$(CC) -c $(CFLAGS) -Wa,-a,-ad,-alms=$(BUILD_DIR)/$(notdir $(<:.c=.lst)) $< -o $@

$(BUILD_DIR)/%.o: %.s Makefile | $(BUILD_DIR)
	$(AS) -c $(CFLAGS) $< -o $@

$(BUILD_DIR)/$(TARGET).elf: $(OBJECTS) Makefile
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@
	$(SZ) $@

$(BUILD_DIR)/%.hex: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(HEX) $< $@
	
$(BUILD_DIR)/%.bin: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(BIN) $< $@	
	
$(BUILD_DIR):
	mkdir $@		

#######################################
# clean up
#######################################
clean:
	-rm -fR $(BUILD_DIR)
  
#######################################
# dependencies
#######################################
-include $(wildcard $(BUILD_DIR)/*.d)

# *** EOF ***
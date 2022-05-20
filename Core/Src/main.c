#include "stm32h7xx.h"
#include "stm32h7xx_ll_rcc.h"
#include "stm32h7xx_ll_crs.h"
#include "stm32h7xx_ll_bus.h"
#include "stm32h7xx_ll_system.h"
#include "stm32h7xx_ll_exti.h"
#include "stm32h7xx_ll_cortex.h"
#include "stm32h7xx_ll_utils.h"
#include "stm32h7xx_ll_pwr.h"
#include "stm32h7xx_ll_dma.h"
#include "stm32h7xx_ll_gpio.h"

#include "tx_api.h"

static TX_THREAD TxMainTCB;
static uint64_t TxMainStk[128];

void SystemClock_Config(void)
{
  LL_APB4_GRP1_EnableClock(LL_APB4_GRP1_PERIPH_SYSCFG);

  LL_FLASH_SetLatency(LL_FLASH_LATENCY_4);
  while (LL_FLASH_GetLatency() != LL_FLASH_LATENCY_4)
  {
  }
  LL_PWR_ConfigSupply(LL_PWR_EXTERNAL_SOURCE_SUPPLY);
  LL_PWR_SetRegulVoltageScaling(LL_PWR_REGU_VOLTAGE_SCALE0);
  LL_RCC_HSI_Enable();

  /* Wait till HSI is ready */
  while (LL_RCC_HSI_IsReady() != 1)
  {
  }
  LL_RCC_HSI_SetCalibTrimming(32);
  LL_RCC_HSI_SetDivider(LL_RCC_HSI_DIV1);
  LL_RCC_PLL_SetSource(LL_RCC_PLLSOURCE_HSI);
  LL_RCC_PLL1P_Enable();
  LL_RCC_PLL1_SetVCOInputRange(LL_RCC_PLLINPUTRANGE_8_16);
  LL_RCC_PLL1_SetVCOOutputRange(LL_RCC_PLLVCORANGE_WIDE);
  LL_RCC_PLL1_SetM(4);
  LL_RCC_PLL1_SetN(60);
  LL_RCC_PLL1_SetP(2);
  LL_RCC_PLL1_SetQ(2);
  LL_RCC_PLL1_SetR(2);
  LL_RCC_PLL1_Enable();

  /* Wait till PLL is ready */
  while (LL_RCC_PLL1_IsReady() != 1)
  {
  }

  /* Intermediate AHB prescaler 2 when target frequency clock is higher than 80 MHz */
  LL_RCC_SetAHBPrescaler(LL_RCC_AHB_DIV_2);

  LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL1);

  /* Wait till System clock is ready */
  while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL1)
  {
  }
  LL_RCC_SetSysPrescaler(LL_RCC_SYSCLK_DIV_1);
  LL_RCC_SetAHBPrescaler(LL_RCC_AHB_DIV_2);
  LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_2);
  LL_RCC_SetAPB2Prescaler(LL_RCC_APB2_DIV_2);
  LL_RCC_SetAPB3Prescaler(LL_RCC_APB3_DIV_2);
  LL_RCC_SetAPB4Prescaler(LL_RCC_APB4_DIV_2);

  LL_Init1msTick(480000000);

  LL_SetSystemCoreClock(480000000);
}

static void TxMain(ULONG thread_input)
{
  for (;;)
  {
    tx_thread_sleep(100); /* 持续睡觉,每次睡觉100ms. */
  }
}

void tx_application_define(void *first_unused_memory)
{
  tx_thread_create(&TxMainTCB,       /* 任务控制块地址 */
                   "Main",           /* 任务名 */
                   TxMain,           /* 启动任务函数地址 */
                   0,                /* 传递给任务的参数 */
                   &TxMainStk[0],    /* 堆栈基地址 */
                   1024,             /* 堆栈空间大小(字节) */
                   31,               /* 任务优先级*/
                   31,               /* 任务抢占阀值 */
                   TX_NO_TIME_SLICE, /* 不开启时间片 */
                   TX_AUTO_START     /* 创建后立即启动 */
  );
}

int main(void)
{
  LL_MPU_Disable();
  LL_MPU_Enable(LL_MPU_CTRL_PRIVILEGED_DEFAULT);

  /* 配置时钟 */
  SystemClock_Config();

  tx_kernel_enter();

  while (1)
  {
  }
}

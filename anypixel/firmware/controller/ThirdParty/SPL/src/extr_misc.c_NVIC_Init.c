
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {int* IP; int* ISER; int* ICER; } ;
struct TYPE_6__ {int AIRCR; } ;
struct TYPE_5__ {scalar_t__ NVIC_IRQChannelCmd; int NVIC_IRQChannelPreemptionPriority; int NVIC_IRQChannelSubPriority; size_t NVIC_IRQChannel; } ;
typedef TYPE_1__ NVIC_InitTypeDef ;


 scalar_t__ DISABLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int IS_NVIC_PREEMPTION_PRIORITY (int) ;
 int IS_NVIC_SUB_PRIORITY (int) ;
 TYPE_4__* NVIC ;
 TYPE_2__* SCB ;
 int assert_param (int ) ;

void NVIC_Init(NVIC_InitTypeDef* NVIC_InitStruct)
{
  uint8_t tmppriority = 0x00, tmppre = 0x00, tmpsub = 0x0F;


  assert_param(IS_FUNCTIONAL_STATE(NVIC_InitStruct->NVIC_IRQChannelCmd));
  assert_param(IS_NVIC_PREEMPTION_PRIORITY(NVIC_InitStruct->NVIC_IRQChannelPreemptionPriority));
  assert_param(IS_NVIC_SUB_PRIORITY(NVIC_InitStruct->NVIC_IRQChannelSubPriority));

  if (NVIC_InitStruct->NVIC_IRQChannelCmd != DISABLE)
  {

    tmppriority = (0x700 - ((SCB->AIRCR) & (uint32_t)0x700))>> 0x08;
    tmppre = (0x4 - tmppriority);
    tmpsub = tmpsub >> tmppriority;

    tmppriority = NVIC_InitStruct->NVIC_IRQChannelPreemptionPriority << tmppre;
    tmppriority |= (uint8_t)(NVIC_InitStruct->NVIC_IRQChannelSubPriority & tmpsub);

    tmppriority = tmppriority << 0x04;

    NVIC->IP[NVIC_InitStruct->NVIC_IRQChannel] = tmppriority;


    NVIC->ISER[NVIC_InitStruct->NVIC_IRQChannel >> 0x05] =
      (uint32_t)0x01 << (NVIC_InitStruct->NVIC_IRQChannel & (uint8_t)0x1F);
  }
  else
  {

    NVIC->ICER[NVIC_InitStruct->NVIC_IRQChannel >> 0x05] =
      (uint32_t)0x01 << (NVIC_InitStruct->NVIC_IRQChannel & (uint8_t)0x1F);
  }
}

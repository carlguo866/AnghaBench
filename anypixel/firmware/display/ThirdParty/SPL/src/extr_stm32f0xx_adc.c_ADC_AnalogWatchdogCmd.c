
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ CFGR1; } ;
typedef scalar_t__ FunctionalState ;
typedef TYPE_1__ ADC_TypeDef ;


 scalar_t__ ADC_CFGR1_AWDEN ;
 scalar_t__ DISABLE ;
 int IS_ADC_ALL_PERIPH (TYPE_1__*) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void ADC_AnalogWatchdogCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{

  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    ADCx->CFGR1 |= ADC_CFGR1_AWDEN;
  }
  else
  {

    ADCx->CFGR1 &= (uint32_t)~ADC_CFGR1_AWDEN;
  }
}

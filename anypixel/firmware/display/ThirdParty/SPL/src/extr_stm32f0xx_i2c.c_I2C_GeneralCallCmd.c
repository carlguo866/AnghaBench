
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ CR1; } ;
typedef TYPE_1__ I2C_TypeDef ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 scalar_t__ I2C_CR1_GCEN ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int IS_I2C_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

void I2C_GeneralCallCmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
{

  assert_param(IS_I2C_ALL_PERIPH(I2Cx));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    I2Cx->CR1 |= I2C_CR1_GCEN;
  }
  else
  {

    I2Cx->CR1 &= (uint32_t)~((uint32_t)I2C_CR1_GCEN);
  }
}

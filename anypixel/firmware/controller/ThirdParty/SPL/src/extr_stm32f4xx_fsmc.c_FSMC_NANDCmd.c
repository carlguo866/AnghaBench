
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int PCR2; } ;
struct TYPE_3__ {int PCR3; } ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 TYPE_2__* FSMC_Bank2 ;
 scalar_t__ FSMC_Bank2_NAND ;
 TYPE_1__* FSMC_Bank3 ;
 int IS_FSMC_NAND_BANK (scalar_t__) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int PCR_PBKEN_RESET ;
 int PCR_PBKEN_SET ;
 int assert_param (int ) ;

void FSMC_NANDCmd(uint32_t FSMC_Bank, FunctionalState NewState)
{
  assert_param(IS_FSMC_NAND_BANK(FSMC_Bank));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    if(FSMC_Bank == FSMC_Bank2_NAND)
    {
      FSMC_Bank2->PCR2 |= PCR_PBKEN_SET;
    }
    else
    {
      FSMC_Bank3->PCR3 |= PCR_PBKEN_SET;
    }
  }
  else
  {

    if(FSMC_Bank == FSMC_Bank2_NAND)
    {
      FSMC_Bank2->PCR2 &= PCR_PBKEN_RESET;
    }
    else
    {
      FSMC_Bank3->PCR3 &= PCR_PBKEN_RESET;
    }
  }
}

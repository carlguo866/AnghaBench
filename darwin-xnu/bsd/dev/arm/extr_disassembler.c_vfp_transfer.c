
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ ARM_RD (int ) ;
 int FASTTRAP_T_COMMON ;
 int FASTTRAP_T_INV ;
 scalar_t__ REG_PC ;

__attribute__((used)) static
int vfp_transfer(uint32_t instr)
{

 if (ARM_RD(instr) != REG_PC)
  return FASTTRAP_T_COMMON;

 return FASTTRAP_T_INV;
}

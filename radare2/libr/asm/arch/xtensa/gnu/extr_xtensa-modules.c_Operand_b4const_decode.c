
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 unsigned int* CONST_TBL_b4c_0 ;

__attribute__((used)) static int
Operand_b4const_decode (uint32 *valp)
{
  unsigned b4const_0, r_0;
  r_0 = *valp & 0xf;
  b4const_0 = CONST_TBL_b4c_0[r_0 & 0xf];
  *valp = b4const_0;
  return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 phy_CalculateBitShift(u32 BitMask)
{
 u32 i;

 for (i = 0; i <= 31; i++) {
  if (((BitMask>>i) & 0x1) == 1)
   break;
 }
 return i;
}

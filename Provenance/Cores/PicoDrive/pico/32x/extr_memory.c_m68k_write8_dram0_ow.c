
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int sh2_write8_dramN (int ) ;

__attribute__((used)) static void m68k_write8_dram0_ow(u32 a, u32 d)
{
  sh2_write8_dramN(0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;



__attribute__((used)) static unsigned long calc_core_clk_24xx(unsigned long pclk, u16 width,
  u16 height, u16 out_width, u16 out_height, bool mem_to_mem)
{
 if (height > out_height && width > out_width)
  return pclk * 4;
 else
  return pclk * 2;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_is_mx21 () ;
 unsigned int* mxc_clkdivs ;

__attribute__((used)) static unsigned int spi_imx_clkdiv_1(unsigned int fin,
  unsigned int fspi)
{
 int i, max;

 if (cpu_is_mx21())
  max = 18;
 else
  max = 16;

 for (i = 2; i < max; i++)
  if (fspi * mxc_clkdivs[i] >= fin)
   return i;

 return max;
}

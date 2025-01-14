
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DDC_SDA_OUT ;
 scalar_t__ REG ;
 scalar_t__ ioaddr ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void bit_vooddc_setsda(void *data, int val)
{
 unsigned int r;
 r = readl(ioaddr + REG);
 if (val)
  r |= DDC_SDA_OUT;
 else
  r &= ~DDC_SDA_OUT;
 writel(r, ioaddr + REG);
 readl(ioaddr + REG);
}

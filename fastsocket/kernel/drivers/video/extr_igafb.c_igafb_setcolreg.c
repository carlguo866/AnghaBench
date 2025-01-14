
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef unsigned int u16 ;
struct iga_par {int dummy; } ;
struct TYPE_4__ {int bits_per_pixel; } ;
struct TYPE_3__ {unsigned int len; } ;
struct fb_info {scalar_t__ pseudo_palette; TYPE_2__ var; TYPE_1__ cmap; scalar_t__ par; } ;


 int DAC_DATA ;
 int DAC_W_INDEX ;
 int pci_outb (struct iga_par*,unsigned int,int ) ;

__attribute__((used)) static int igafb_setcolreg(unsigned regno, unsigned red, unsigned green,
                           unsigned blue, unsigned transp,
                           struct fb_info *info)
{






 struct iga_par *par = (struct iga_par *)info->par;

        if (regno >= info->cmap.len)
                return 1;

 pci_outb(par, regno, DAC_W_INDEX);
 pci_outb(par, red, DAC_DATA);
 pci_outb(par, green, DAC_DATA);
 pci_outb(par, blue, DAC_DATA);

 if (regno < 16) {
  switch (info->var.bits_per_pixel) {
  case 16:
   ((u16*)(info->pseudo_palette))[regno] =
    (regno << 10) | (regno << 5) | regno;
   break;
  case 24:
   ((u32*)(info->pseudo_palette))[regno] =
    (regno << 16) | (regno << 8) | regno;
  break;
  case 32:
   { int i;
   i = (regno << 8) | regno;
   ((u32*)(info->pseudo_palette))[regno] = (i << 16) | i;
   }
   break;
  }
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpc3_scsiregs {scalar_t__ ctrl; } ;


 scalar_t__ HPC3_SCTRL_CRESET ;
 int udelay (int) ;

void sgiwd93_reset(unsigned long base)
{
 struct hpc3_scsiregs *hregs = (struct hpc3_scsiregs *) base;

 hregs->ctrl = HPC3_SCTRL_CRESET;
 udelay(50);
 hregs->ctrl = 0;
}

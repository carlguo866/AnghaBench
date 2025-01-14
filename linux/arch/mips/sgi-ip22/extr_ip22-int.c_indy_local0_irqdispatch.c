
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int istat0; int imask0; int vmeistat; int cmeimask0; } ;


 int SGINT_ISTAT0_LIO2 ;
 int SGINT_LOCAL0 ;
 int do_IRQ (int) ;
 int* lc0msk_to_irqnr ;
 int* lc2msk_to_irqnr ;
 TYPE_1__* sgint ;

__attribute__((used)) static void indy_local0_irqdispatch(void)
{
 u8 mask = sgint->istat0 & sgint->imask0;
 u8 mask2;
 int irq;

 if (mask & SGINT_ISTAT0_LIO2) {
  mask2 = sgint->vmeistat & sgint->cmeimask0;
  irq = lc2msk_to_irqnr[mask2];
 } else
  irq = lc0msk_to_irqnr[mask];





 if (irq)
  do_IRQ(irq);
 else
  do_IRQ(SGINT_LOCAL0 + 0);
}

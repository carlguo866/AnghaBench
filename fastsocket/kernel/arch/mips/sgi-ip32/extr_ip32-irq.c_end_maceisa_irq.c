
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;


 int IRQ_DISABLED ;
 int IRQ_INPROGRESS ;
 int enable_maceisa_irq (unsigned int) ;
 TYPE_1__* irq_desc ;

__attribute__((used)) static void end_maceisa_irq(unsigned irq)
{
 if (!(irq_desc[irq].status & (IRQ_DISABLED | IRQ_INPROGRESS)))
  enable_maceisa_irq(irq);
}

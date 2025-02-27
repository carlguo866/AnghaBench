
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int per_mask; } ;
struct TYPE_3__ {int hwirq; } ;


 int MPC52xx_IRQ_L2_MASK ;
 TYPE_2__* intr ;
 int io_be_setbit (int *,int) ;
 TYPE_1__* irq_map ;

__attribute__((used)) static void mpc52xx_periph_mask(unsigned int virq)
{
 int irq;
 int l2irq;

 irq = irq_map[virq].hwirq;
 l2irq = irq & MPC52xx_IRQ_L2_MASK;

 io_be_setbit(&intr->per_mask, 31 - l2irq);
}

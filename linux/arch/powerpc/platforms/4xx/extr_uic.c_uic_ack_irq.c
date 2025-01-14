
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uic {int lock; scalar_t__ dcrbase; } ;
struct irq_data {int dummy; } ;


 scalar_t__ UIC_SR ;
 struct uic* irq_data_get_irq_chip_data (struct irq_data*) ;
 unsigned int irqd_to_hwirq (struct irq_data*) ;
 int mtdcr (scalar_t__,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void uic_ack_irq(struct irq_data *d)
{
 struct uic *uic = irq_data_get_irq_chip_data(d);
 unsigned int src = irqd_to_hwirq(d);
 unsigned long flags;

 raw_spin_lock_irqsave(&uic->lock, flags);
 mtdcr(uic->dcrbase + UIC_SR, 1 << (31-src));
 raw_spin_unlock_irqrestore(&uic->lock, flags);
}

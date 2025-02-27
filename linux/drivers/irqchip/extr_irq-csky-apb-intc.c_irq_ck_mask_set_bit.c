
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct irq_data {int mask; } ;
struct TYPE_2__ {int mask; } ;
struct irq_chip_type {int* mask_cache; TYPE_1__ regs; } ;
struct irq_chip_generic {int dummy; } ;


 struct irq_chip_type* irq_data_get_chip_type (struct irq_data*) ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_gc_lock (struct irq_chip_generic*) ;
 int irq_gc_unlock (struct irq_chip_generic*) ;
 int irq_reg_readl (struct irq_chip_generic*,unsigned long) ;
 int irq_reg_writel (struct irq_chip_generic*,int,unsigned long) ;

__attribute__((used)) static void irq_ck_mask_set_bit(struct irq_data *d)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 struct irq_chip_type *ct = irq_data_get_chip_type(d);
 unsigned long ifr = ct->regs.mask - 8;
 u32 mask = d->mask;

 irq_gc_lock(gc);
 *ct->mask_cache |= mask;
 irq_reg_writel(gc, *ct->mask_cache, ct->regs.mask);
 irq_reg_writel(gc, irq_reg_readl(gc, ifr) & ~mask, ifr);
 irq_gc_unlock(gc);
}

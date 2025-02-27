
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mask; } ;
struct irq_chip_type {int * mask_cache; TYPE_1__ regs; int mask_cache_priv; } ;
struct irq_chip_generic {int num_ct; int mask_cache; struct irq_chip_type* chip_types; } ;
typedef enum irq_gc_flags { ____Placeholder_irq_gc_flags } irq_gc_flags ;


 int IRQ_GC_INIT_MASK_CACHE ;
 int IRQ_GC_MASK_CACHE_PER_TYPE ;
 int irq_reg_readl (struct irq_chip_generic*,int ) ;

__attribute__((used)) static void
irq_gc_init_mask_cache(struct irq_chip_generic *gc, enum irq_gc_flags flags)
{
 struct irq_chip_type *ct = gc->chip_types;
 u32 *mskptr = &gc->mask_cache, mskreg = ct->regs.mask;
 int i;

 for (i = 0; i < gc->num_ct; i++) {
  if (flags & IRQ_GC_MASK_CACHE_PER_TYPE) {
   mskptr = &ct[i].mask_cache_priv;
   mskreg = ct[i].regs.mask;
  }
  ct[i].mask_cache = mskptr;
  if (flags & IRQ_GC_INIT_MASK_CACHE)
   *mskptr = irq_reg_readl(gc, mskreg);
 }
}

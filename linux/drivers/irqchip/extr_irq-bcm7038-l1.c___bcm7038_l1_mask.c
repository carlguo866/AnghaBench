
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct irq_data {size_t hwirq; } ;
struct bcm7038_l1_chip {TYPE_1__** cpus; } ;
struct TYPE_2__ {size_t* mask_cache; scalar_t__ map_base; } ;


 size_t BIT (size_t) ;
 size_t IRQS_PER_WORD ;
 struct bcm7038_l1_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int l1_writel (size_t,scalar_t__) ;
 scalar_t__ reg_mask_set (struct bcm7038_l1_chip*,size_t) ;

__attribute__((used)) static void __bcm7038_l1_mask(struct irq_data *d, unsigned int cpu_idx)
{
 struct bcm7038_l1_chip *intc = irq_data_get_irq_chip_data(d);
 u32 word = d->hwirq / IRQS_PER_WORD;
 u32 mask = BIT(d->hwirq % IRQS_PER_WORD);

 intc->cpus[cpu_idx]->mask_cache[word] |= mask;
 l1_writel(mask, intc->cpus[cpu_idx]->map_base +
   reg_mask_set(intc, word));
}

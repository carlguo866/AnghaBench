
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int dummy; } ;
struct ipr_data {size_t ipr_idx; int shift; } ;
struct TYPE_2__ {unsigned long* ipr_offsets; } ;


 int __raw_readw (unsigned long) ;
 int __raw_writew (int,unsigned long) ;
 TYPE_1__* get_ipr_desc (struct irq_data*) ;
 struct ipr_data* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void disable_ipr_irq(struct irq_data *data)
{
 struct ipr_data *p = irq_data_get_irq_chip_data(data);
 unsigned long addr = get_ipr_desc(data)->ipr_offsets[p->ipr_idx];

 __raw_writew(__raw_readw(addr) & (0xffff ^ (0xf << p->shift)), addr);
 (void)__raw_readw(addr);
}

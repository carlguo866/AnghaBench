
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbi_range {int dummy; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int hwirq; } ;


 struct mbi_range* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_domain_free_irqs_parent (struct irq_domain*,unsigned int,unsigned int) ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int mbi_free_msi (struct mbi_range*,int ,unsigned int) ;

__attribute__((used)) static void mbi_irq_domain_free(struct irq_domain *domain,
    unsigned int virq, unsigned int nr_irqs)
{
 struct irq_data *d = irq_domain_get_irq_data(domain, virq);
 struct mbi_range *mbi = irq_data_get_irq_chip_data(d);

 mbi_free_msi(mbi, d->hwirq, nr_irqs);
 irq_domain_free_irqs_parent(domain, virq, nr_irqs);
}

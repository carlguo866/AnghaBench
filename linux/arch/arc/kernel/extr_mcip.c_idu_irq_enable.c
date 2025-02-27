
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int cpu_online_mask ;
 int idu_irq_set_affinity (struct irq_data*,int ,int) ;
 int idu_irq_unmask (struct irq_data*) ;

__attribute__((used)) static void idu_irq_enable(struct irq_data *data)
{
 idu_irq_set_affinity(data, cpu_online_mask, 0);
 idu_irq_unmask(data);
}

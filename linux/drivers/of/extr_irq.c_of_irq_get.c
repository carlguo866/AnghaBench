
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int np; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;


 int EPROBE_DEFER ;
 int irq_create_of_mapping (struct of_phandle_args*) ;
 struct irq_domain* irq_find_host (int ) ;
 int of_irq_parse_one (struct device_node*,int,struct of_phandle_args*) ;

int of_irq_get(struct device_node *dev, int index)
{
 int rc;
 struct of_phandle_args oirq;
 struct irq_domain *domain;

 rc = of_irq_parse_one(dev, index, &oirq);
 if (rc)
  return rc;

 domain = irq_find_host(oirq.np);
 if (!domain)
  return -EPROBE_DEFER;

 return irq_create_of_mapping(&oirq);
}

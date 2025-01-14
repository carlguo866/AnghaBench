
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct ti_sci_intr_irq_domain {int dst_irq; int dst_id; TYPE_4__* sci; scalar_t__ type; } ;
struct irq_fwspec {int param_count; scalar_t__* param; int fwnode; } ;
struct irq_domain {TYPE_1__* parent; struct ti_sci_intr_irq_domain* host_data; } ;
struct TYPE_6__ {int (* set_irq ) (TYPE_4__*,scalar_t__,scalar_t__,int ,scalar_t__) ;} ;
struct TYPE_7__ {TYPE_2__ rm_irq_ops; } ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_5__ {int fwnode; } ;


 int EINVAL ;
 scalar_t__ HWIRQ_TO_DEVID (int ) ;
 scalar_t__ HWIRQ_TO_IRQID (int ) ;
 scalar_t__ TI_SCI_RESOURCE_NULL ;
 int irq_domain_alloc_irqs_parent (struct irq_domain*,unsigned int,int,struct irq_fwspec*) ;
 int irq_domain_free_irqs_parent (struct irq_domain*,unsigned int,int) ;
 int stub1 (TYPE_4__*,scalar_t__,scalar_t__,int ,scalar_t__) ;
 scalar_t__ ti_sci_get_free_resource (int ) ;
 int ti_sci_release_resource (int ,scalar_t__) ;

__attribute__((used)) static int ti_sci_intr_alloc_gic_irq(struct irq_domain *domain,
         unsigned int virq, u32 hwirq)
{
 struct ti_sci_intr_irq_domain *intr = domain->host_data;
 struct irq_fwspec fwspec;
 u16 dev_id, irq_index;
 u16 dst_irq;
 int err;

 dev_id = HWIRQ_TO_DEVID(hwirq);
 irq_index = HWIRQ_TO_IRQID(hwirq);

 dst_irq = ti_sci_get_free_resource(intr->dst_irq);
 if (dst_irq == TI_SCI_RESOURCE_NULL)
  return -EINVAL;

 fwspec.fwnode = domain->parent->fwnode;
 fwspec.param_count = 3;
 fwspec.param[0] = 0;
 fwspec.param[1] = dst_irq - 32;
 fwspec.param[2] = intr->type;

 err = irq_domain_alloc_irqs_parent(domain, virq, 1, &fwspec);
 if (err)
  goto err_irqs;

 err = intr->sci->ops.rm_irq_ops.set_irq(intr->sci, dev_id, irq_index,
      intr->dst_id, dst_irq);
 if (err)
  goto err_msg;

 return 0;

err_msg:
 irq_domain_free_irqs_parent(domain, virq, 1);
err_irqs:
 ti_sci_release_resource(intr->dst_irq, dst_irq);
 return err;
}

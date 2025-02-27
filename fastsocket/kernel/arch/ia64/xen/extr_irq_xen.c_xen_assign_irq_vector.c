
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct physdev_irq {int irq; int vector; } ;


 int ENOSPC ;
 scalar_t__ HYPERVISOR_physdev_op (int ,struct physdev_irq*) ;
 int PHYSDEVOP_alloc_irq_vector ;

__attribute__((used)) static int
xen_assign_irq_vector(int irq)
{
 struct physdev_irq irq_op;

 irq_op.irq = irq;
 if (HYPERVISOR_physdev_op(PHYSDEVOP_alloc_irq_vector, &irq_op))
  return -ENOSPC;

 return irq_op.vector;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 TYPE_1__ call_function ;
 int spin_unlock_irq (int *) ;

void ipi_call_unlock_irq(void)
{
 spin_unlock_irq(&call_function.lock);
}

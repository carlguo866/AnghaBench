
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mei_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* intr_enable ) (struct mei_device*) ;} ;


 int stub1 (struct mei_device*) ;

__attribute__((used)) static inline void mei_enable_interrupts(struct mei_device *dev)
{
 dev->ops->intr_enable(dev);
}

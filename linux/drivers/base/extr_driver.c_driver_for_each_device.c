
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct klist_iter {int dummy; } ;
struct device_driver {TYPE_1__* p; } ;
struct device {TYPE_2__* p; } ;
struct TYPE_4__ {int knode_driver; } ;
struct TYPE_3__ {int klist_devices; } ;


 int EINVAL ;
 int klist_iter_exit (struct klist_iter*) ;
 int klist_iter_init_node (int *,struct klist_iter*,int *) ;
 struct device* next_device (struct klist_iter*) ;

int driver_for_each_device(struct device_driver *drv, struct device *start,
      void *data, int (*fn)(struct device *, void *))
{
 struct klist_iter i;
 struct device *dev;
 int error = 0;

 if (!drv)
  return -EINVAL;

 klist_iter_init_node(&drv->p->klist_devices, &i,
        start ? &start->p->knode_driver : ((void*)0));
 while (!error && (dev = next_device(&i)))
  error = fn(dev, data);
 klist_iter_exit(&i);
 return error;
}

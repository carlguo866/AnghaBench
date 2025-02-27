
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct klist_iter {int dummy; } ;
struct device {TYPE_2__* p; } ;
struct bus_type {TYPE_1__* p; } ;
struct TYPE_4__ {int knode_bus; } ;
struct TYPE_3__ {int klist_devices; } ;


 int EINVAL ;
 int klist_iter_exit (struct klist_iter*) ;
 int klist_iter_init_node (int *,struct klist_iter*,int *) ;
 struct device* next_device (struct klist_iter*) ;

int bus_for_each_dev(struct bus_type *bus, struct device *start,
       void *data, int (*fn)(struct device *, void *))
{
 struct klist_iter i;
 struct device *dev;
 int error = 0;

 if (!bus)
  return -EINVAL;

 klist_iter_init_node(&bus->p->klist_devices, &i,
        (start ? &start->p->knode_bus : ((void*)0)));
 while ((dev = next_device(&i)) && !error)
  error = fn(dev, data);
 klist_iter_exit(&i);
 return error;
}

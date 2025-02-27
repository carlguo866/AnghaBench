
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int kobj; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 struct device* get_cpu_device (unsigned int) ;
 int kobject_name (int *) ;
 TYPE_2__** node_devices ;
 int node_online (unsigned int) ;
 int sysfs_remove_link (int *,int ) ;

int unregister_cpu_under_node(unsigned int cpu, unsigned int nid)
{
 struct device *obj;

 if (!node_online(nid))
  return 0;

 obj = get_cpu_device(cpu);
 if (!obj)
  return 0;

 sysfs_remove_link(&node_devices[nid]->dev.kobj,
     kobject_name(&obj->kobj));
 sysfs_remove_link(&obj->kobj,
     kobject_name(&node_devices[nid]->dev.kobj));

 return 0;
}

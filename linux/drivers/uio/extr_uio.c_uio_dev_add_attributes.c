
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uio_portio {int kobj; struct uio_port* port; } ;
struct uio_port {scalar_t__ size; struct uio_portio* portio; } ;
struct uio_mem {scalar_t__ size; struct uio_map* map; } ;
struct uio_map {int kobj; struct uio_mem* mem; } ;
struct TYPE_4__ {int kobj; } ;
struct uio_device {TYPE_2__ dev; int * map_dir; TYPE_1__* info; int * portio_dir; } ;
struct TYPE_3__ {struct uio_mem* mem; struct uio_port* port; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int KOBJ_ADD ;
 int MAX_UIO_MAPS ;
 int MAX_UIO_PORT_REGIONS ;
 int dev_err (TYPE_2__*,char*,int) ;
 int kobject_add (int *,int *,char*,int) ;
 void* kobject_create_and_add (char*,int *) ;
 int kobject_init (int *,int *) ;
 int kobject_put (int *) ;
 int kobject_uevent (int *,int ) ;
 void* kzalloc (int,int ) ;
 int map_attr_type ;
 int portio_attr_type ;

__attribute__((used)) static int uio_dev_add_attributes(struct uio_device *idev)
{
 int ret;
 int mi, pi;
 int map_found = 0;
 int portio_found = 0;
 struct uio_mem *mem;
 struct uio_map *map;
 struct uio_port *port;
 struct uio_portio *portio;

 for (mi = 0; mi < MAX_UIO_MAPS; mi++) {
  mem = &idev->info->mem[mi];
  if (mem->size == 0)
   break;
  if (!map_found) {
   map_found = 1;
   idev->map_dir = kobject_create_and_add("maps",
       &idev->dev.kobj);
   if (!idev->map_dir) {
    ret = -ENOMEM;
    goto err_map;
   }
  }
  map = kzalloc(sizeof(*map), GFP_KERNEL);
  if (!map) {
   ret = -ENOMEM;
   goto err_map;
  }
  kobject_init(&map->kobj, &map_attr_type);
  map->mem = mem;
  mem->map = map;
  ret = kobject_add(&map->kobj, idev->map_dir, "map%d", mi);
  if (ret)
   goto err_map_kobj;
  ret = kobject_uevent(&map->kobj, KOBJ_ADD);
  if (ret)
   goto err_map_kobj;
 }

 for (pi = 0; pi < MAX_UIO_PORT_REGIONS; pi++) {
  port = &idev->info->port[pi];
  if (port->size == 0)
   break;
  if (!portio_found) {
   portio_found = 1;
   idev->portio_dir = kobject_create_and_add("portio",
       &idev->dev.kobj);
   if (!idev->portio_dir) {
    ret = -ENOMEM;
    goto err_portio;
   }
  }
  portio = kzalloc(sizeof(*portio), GFP_KERNEL);
  if (!portio) {
   ret = -ENOMEM;
   goto err_portio;
  }
  kobject_init(&portio->kobj, &portio_attr_type);
  portio->port = port;
  port->portio = portio;
  ret = kobject_add(&portio->kobj, idev->portio_dir,
       "port%d", pi);
  if (ret)
   goto err_portio_kobj;
  ret = kobject_uevent(&portio->kobj, KOBJ_ADD);
  if (ret)
   goto err_portio_kobj;
 }

 return 0;

err_portio:
 pi--;
err_portio_kobj:
 for (; pi >= 0; pi--) {
  port = &idev->info->port[pi];
  portio = port->portio;
  kobject_put(&portio->kobj);
 }
 kobject_put(idev->portio_dir);
err_map:
 mi--;
err_map_kobj:
 for (; mi >= 0; mi--) {
  mem = &idev->info->mem[mi];
  map = mem->map;
  kobject_put(&map->kobj);
 }
 kobject_put(idev->map_dir);
 dev_err(&idev->dev, "error creating sysfs files (%d)\n", ret);
 return ret;
}

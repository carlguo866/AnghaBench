
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tee_client_device_id {int uuid; } ;
struct TYPE_3__ {int uuid; } ;
struct tee_client_device {TYPE_1__ id; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct tee_client_device_id* id_table; } ;


 struct tee_client_device* to_tee_client_device (struct device*) ;
 TYPE_2__* to_tee_client_driver (struct device_driver*) ;
 scalar_t__ uuid_equal (int *,int *) ;
 int uuid_is_null (int *) ;

__attribute__((used)) static int tee_client_device_match(struct device *dev,
       struct device_driver *drv)
{
 const struct tee_client_device_id *id_table;
 struct tee_client_device *tee_device;

 id_table = to_tee_client_driver(drv)->id_table;
 tee_device = to_tee_client_device(dev);

 while (!uuid_is_null(&id_table->uuid)) {
  if (uuid_equal(&tee_device->id.uuid, &id_table->uuid))
   return 1;
  id_table++;
 }

 return 0;
}

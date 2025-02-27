
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct thermal_cooling_device {TYPE_1__ device; } ;
struct TYPE_4__ {int kobj; } ;
struct acpi_device {TYPE_2__ dev; struct thermal_cooling_device* driver_data; int handle; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct thermal_cooling_device*) ;
 int MEMORY_GET_BANDWIDTH ;
 int MEMORY_SET_BANDWIDTH ;
 int PTR_ERR (struct thermal_cooling_device*) ;
 int acpi_get_handle (int ,int ,int *) ;
 int memory_cooling_ops ;
 int sysfs_create_link (int *,int *,char*) ;
 int sysfs_remove_link (int *,char*) ;
 struct thermal_cooling_device* thermal_cooling_device_register (char*,struct acpi_device*,int *) ;
 int thermal_cooling_device_unregister (struct thermal_cooling_device*) ;

__attribute__((used)) static int intel_menlow_memory_add(struct acpi_device *device)
{
 int result = -ENODEV;
 acpi_status status = AE_OK;
 acpi_handle dummy;
 struct thermal_cooling_device *cdev;

 if (!device)
  return -EINVAL;

 status = acpi_get_handle(device->handle, MEMORY_GET_BANDWIDTH, &dummy);
 if (ACPI_FAILURE(status))
  goto end;

 status = acpi_get_handle(device->handle, MEMORY_SET_BANDWIDTH, &dummy);
 if (ACPI_FAILURE(status))
  goto end;

 cdev = thermal_cooling_device_register("Memory controller", device,
            &memory_cooling_ops);
 if (IS_ERR(cdev)) {
  result = PTR_ERR(cdev);
  goto end;
 }

 device->driver_data = cdev;
 result = sysfs_create_link(&device->dev.kobj,
    &cdev->device.kobj, "thermal_cooling");
 if (result)
  goto unregister;

 result = sysfs_create_link(&cdev->device.kobj,
    &device->dev.kobj, "device");
 if (result) {
  sysfs_remove_link(&device->dev.kobj, "thermal_cooling");
  goto unregister;
 }

 end:
 return result;

 unregister:
 thermal_cooling_device_unregister(cdev);
 return result;

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct thermal_zone_device {struct acpi_thermal* devdata; } ;
struct acpi_thermal {TYPE_2__* device; } ;
typedef enum thermal_trip_type { ____Placeholder_thermal_trip_type } thermal_trip_type ;
struct TYPE_3__ {int device_class; } ;
struct TYPE_4__ {int dev; TYPE_1__ pnp; } ;


 int ACPI_THERMAL_NOTIFY_CRITICAL ;
 int ACPI_THERMAL_NOTIFY_HOT ;
 int THERMAL_TRIP_CRITICAL ;
 int THERMAL_TRIP_HOT ;
 int acpi_bus_generate_netlink_event (int ,int ,int ,int) ;
 int acpi_bus_generate_proc_event (TYPE_2__*,int ,int) ;
 int dev_name (int *) ;
 scalar_t__ nocrt ;

__attribute__((used)) static int thermal_notify(struct thermal_zone_device *thermal, int trip,
      enum thermal_trip_type trip_type)
{
 u8 type = 0;
 struct acpi_thermal *tz = thermal->devdata;

 if (trip_type == THERMAL_TRIP_CRITICAL)
  type = ACPI_THERMAL_NOTIFY_CRITICAL;
 else if (trip_type == THERMAL_TRIP_HOT)
  type = ACPI_THERMAL_NOTIFY_HOT;
 else
  return 0;

 acpi_bus_generate_proc_event(tz->device, type, 1);
 acpi_bus_generate_netlink_event(tz->device->pnp.device_class,
     dev_name(&tz->device->dev), type, 1);

 if (trip_type == THERMAL_TRIP_CRITICAL && nocrt)
  return 1;

 return 0;
}

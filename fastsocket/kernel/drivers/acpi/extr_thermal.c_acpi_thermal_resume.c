
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* active; } ;
struct TYPE_7__ {int active; } ;
struct acpi_thermal {TYPE_5__ trips; TYPE_2__ state; } ;
struct acpi_device {int dummy; } ;
struct TYPE_8__ {int enabled; int valid; } ;
struct TYPE_6__ {int count; int * handles; } ;
struct TYPE_9__ {TYPE_3__ flags; TYPE_1__ devices; } ;


 int ACPI_STATE_D0 ;
 int ACPI_THERMAL_MAX_ACTIVE ;
 int AE_OK ;
 int EINVAL ;
 int acpi_bus_get_power (int ,int*) ;
 struct acpi_thermal* acpi_driver_data (struct acpi_device*) ;
 int acpi_thermal_check (struct acpi_thermal*) ;

__attribute__((used)) static int acpi_thermal_resume(struct acpi_device *device)
{
 struct acpi_thermal *tz = ((void*)0);
 int i, j, power_state, result;


 if (!device || !acpi_driver_data(device))
  return -EINVAL;

 tz = acpi_driver_data(device);

 for (i = 0; i < ACPI_THERMAL_MAX_ACTIVE; i++) {
  if (!(&tz->trips.active[i]))
   break;
  if (!tz->trips.active[i].flags.valid)
   break;
  tz->trips.active[i].flags.enabled = 1;
  for (j = 0; j < tz->trips.active[i].devices.count; j++) {
   result = acpi_bus_get_power(tz->trips.active[i].devices.
       handles[j], &power_state);
   if (result || (power_state != ACPI_STATE_D0)) {
    tz->trips.active[i].flags.enabled = 0;
    break;
   }
  }
  tz->state.active |= tz->trips.active[i].flags.enabled;
 }

 acpi_thermal_check(tz);

 return AE_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct acpi_thermal* devdata; } ;
struct acpi_thermal {int kelvin_offset; int temperature; } ;


 int EINVAL ;
 unsigned long KELVIN_TO_MILLICELSIUS (int ,int ) ;
 int acpi_thermal_get_temperature (struct acpi_thermal*) ;

__attribute__((used)) static int thermal_get_temp(struct thermal_zone_device *thermal,
       unsigned long *temp)
{
 struct acpi_thermal *tz = thermal->devdata;
 int result;

 if (!tz)
  return -EINVAL;

 result = acpi_thermal_get_temperature(tz);
 if (result)
  return result;

 *temp = KELVIN_TO_MILLICELSIUS(tz->temperature, tz->kelvin_offset);
 return 0;
}

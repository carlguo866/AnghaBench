
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_device {int handle; } ;
typedef int ssize_t ;


 int acpi_object_path (int ,char*) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static ssize_t acpi_device_path_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct acpi_device *acpi_dev = to_acpi_device(dev);

 return acpi_object_path(acpi_dev->handle, buf);
}

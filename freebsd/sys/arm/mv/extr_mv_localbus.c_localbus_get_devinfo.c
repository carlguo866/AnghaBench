
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_bus_devinfo {int dummy; } ;
struct localbus_devinfo {struct ofw_bus_devinfo const di_ofw; } ;
typedef int device_t ;


 struct localbus_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static const struct ofw_bus_devinfo *
localbus_get_devinfo(device_t bus, device_t child)
{
 struct localbus_devinfo *di;

 di = device_get_ivars(child);
 return (&di->di_ofw);
}

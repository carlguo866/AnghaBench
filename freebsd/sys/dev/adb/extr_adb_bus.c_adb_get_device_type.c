
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct adb_devinfo {int default_address; } ;
typedef int device_t ;


 struct adb_devinfo* device_get_ivars (int ) ;

uint8_t
adb_get_device_type(device_t dev)
{
 struct adb_devinfo *dinfo;

 dinfo = device_get_ivars(dev);
 return (dinfo->default_address);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_slave {int dummy; } ;
struct sdw_driver {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 struct sdw_slave* dev_to_sdw_dev (struct device*) ;
 struct sdw_driver* drv_to_sdw_driver (struct device_driver*) ;
 int sdw_get_device_id (struct sdw_slave*,struct sdw_driver*) ;

__attribute__((used)) static int sdw_bus_match(struct device *dev, struct device_driver *ddrv)
{
 struct sdw_slave *slave = dev_to_sdw_dev(dev);
 struct sdw_driver *drv = drv_to_sdw_driver(ddrv);

 return !!sdw_get_device_id(slave, drv);
}

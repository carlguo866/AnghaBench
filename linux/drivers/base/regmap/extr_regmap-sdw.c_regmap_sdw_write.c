
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_slave {int dummy; } ;
struct device {int dummy; } ;


 struct sdw_slave* dev_to_sdw_dev (struct device*) ;
 int sdw_write (struct sdw_slave*,unsigned int,unsigned int) ;

__attribute__((used)) static int regmap_sdw_write(void *context, unsigned int reg, unsigned int val)
{
 struct device *dev = context;
 struct sdw_slave *slave = dev_to_sdw_dev(dev);

 return sdw_write(slave, reg, val);
}

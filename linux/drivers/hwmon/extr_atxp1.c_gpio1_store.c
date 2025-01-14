
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned long gpio1; } ;
struct atxp1_data {scalar_t__ valid; TYPE_1__ reg; struct i2c_client* client; } ;
typedef int ssize_t ;


 int ATXP1_GPIO1 ;
 unsigned long ATXP1_GPIO1MASK ;
 struct atxp1_data* atxp1_update_device (struct device*) ;
 int dev_info (struct device*,char*,unsigned int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,unsigned long) ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t gpio1_store(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct atxp1_data *data = atxp1_update_device(dev);
 struct i2c_client *client = data->client;
 unsigned long value;
 int err;

 err = kstrtoul(buf, 16, &value);
 if (err)
  return err;

 value &= ATXP1_GPIO1MASK;

 if (value != (data->reg.gpio1 & ATXP1_GPIO1MASK)) {
  dev_info(dev, "Writing 0x%x to GPIO1.\n", (unsigned int)value);

  i2c_smbus_write_byte_data(client, ATXP1_GPIO1, value);

  data->valid = 0;
 }

 return count;
}

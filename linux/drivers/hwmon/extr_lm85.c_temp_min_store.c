
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm85_data {int update_lock; int * temp_min; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 scalar_t__ IS_ADT7468_OFF64 (struct lm85_data*) ;
 int LM85_REG_TEMP_MIN (int) ;
 int TEMP_TO_REG (long) ;
 struct lm85_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int lm85_write_value (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_min_store(struct device *dev,
         struct device_attribute *attr, const char *buf,
         size_t count)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct lm85_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 if (IS_ADT7468_OFF64(data))
  val += 64;

 mutex_lock(&data->update_lock);
 data->temp_min[nr] = TEMP_TO_REG(val);
 lm85_write_value(client, LM85_REG_TEMP_MIN(nr), data->temp_min[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}

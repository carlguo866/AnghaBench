
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int config5; int** temp; int* range; int lock; struct i2c_client* client; } ;
typedef size_t ssize_t ;


 int ARRAY_SIZE (scalar_t__*) ;
 size_t AUTOMIN ;
 size_t EINVAL ;
 int REG_CONFIG5 ;
 int TEMP_TMIN_REG (size_t) ;
 int TEMP_TRANGE_REG (size_t) ;
 int adt7475_read (int ) ;
 scalar_t__* autorange_table ;
 long clamp_val (long,scalar_t__,scalar_t__) ;
 struct adt7475_data* dev_get_drvdata (struct device*) ;
 long find_closest (long,scalar_t__*,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,long) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reg2temp (struct adt7475_data*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t point2_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct adt7475_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 int temp;
 long val;

 if (kstrtol(buf, 10, &val))
  return -EINVAL;

 mutex_lock(&data->lock);


 data->config5 = adt7475_read(REG_CONFIG5);
 data->temp[AUTOMIN][sattr->index] =
  adt7475_read(TEMP_TMIN_REG(sattr->index)) << 2;
 data->range[sattr->index] =
  adt7475_read(TEMP_TRANGE_REG(sattr->index));





 temp = reg2temp(data, data->temp[AUTOMIN][sattr->index]);
 val = clamp_val(val, temp + autorange_table[0],
  temp + autorange_table[ARRAY_SIZE(autorange_table) - 1]);
 val -= temp;


 val = find_closest(val, autorange_table, ARRAY_SIZE(autorange_table));

 data->range[sattr->index] &= ~0xF0;
 data->range[sattr->index] |= val << 4;

 i2c_smbus_write_byte_data(client, TEMP_TRANGE_REG(sattr->index),
      data->range[sattr->index]);

 mutex_unlock(&data->lock);
 return count;
}

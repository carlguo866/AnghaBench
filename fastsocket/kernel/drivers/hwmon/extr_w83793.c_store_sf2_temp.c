
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83793_data {int** sf2_temp; int update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int TEMP_TO_REG (int ,int ,int) ;
 int W83793_REG_SF2_TEMP (int,int) ;
 struct w83793_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 int w83793_read_value (struct i2c_client*,int ) ;
 int w83793_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t
store_sf2_temp(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83793_data *data = i2c_get_clientdata(client);
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 int index = sensor_attr->index;
 u8 val = TEMP_TO_REG(simple_strtol(buf, ((void*)0), 10), 0, 0x7f);

 mutex_lock(&data->update_lock);
 data->sf2_temp[index][nr] =
     w83793_read_value(client, W83793_REG_SF2_TEMP(index, nr)) & 0x80;
 data->sf2_temp[index][nr] |= val;
 w83793_write_value(client, W83793_REG_SF2_TEMP(index, nr),
          data->sf2_temp[index][nr]);
 mutex_unlock(&data->update_lock);
 return count;
}

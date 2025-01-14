
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max1668_data {int valid; int alarms; int update_lock; scalar_t__ last_updated; void** temp_min; void** temp_max; void** temp; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
typedef void* s8 ;
typedef int s32 ;


 struct max1668_data* ERR_PTR (int) ;
 int HZ ;
 int MAX1668_REG_LIMH_RD (int) ;
 int MAX1668_REG_LIML_RD (int) ;
 int MAX1668_REG_STAT1 ;
 int MAX1668_REG_STAT2 ;
 int MAX1668_REG_TEMP (int) ;
 struct max1668_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int time_after (scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct max1668_data *max1668_update_device(struct device *dev)
{
 struct max1668_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 struct max1668_data *ret = data;
 s32 val;
 int i;

 mutex_lock(&data->update_lock);

 if (data->valid && !time_after(jiffies,
   data->last_updated + HZ + HZ / 2))
  goto abort;

 for (i = 0; i < 5; i++) {
  val = i2c_smbus_read_byte_data(client, MAX1668_REG_TEMP(i));
  if (unlikely(val < 0)) {
   ret = ERR_PTR(val);
   goto abort;
  }
  data->temp[i] = (s8) val;

  val = i2c_smbus_read_byte_data(client, MAX1668_REG_LIMH_RD(i));
  if (unlikely(val < 0)) {
   ret = ERR_PTR(val);
   goto abort;
  }
  data->temp_max[i] = (s8) val;

  val = i2c_smbus_read_byte_data(client, MAX1668_REG_LIML_RD(i));
  if (unlikely(val < 0)) {
   ret = ERR_PTR(val);
   goto abort;
  }
  data->temp_min[i] = (s8) val;
 }

 val = i2c_smbus_read_byte_data(client, MAX1668_REG_STAT1);
 if (unlikely(val < 0)) {
  ret = ERR_PTR(val);
  goto abort;
 }
 data->alarms = val << 8;

 val = i2c_smbus_read_byte_data(client, MAX1668_REG_STAT2);
 if (unlikely(val < 0)) {
  ret = ERR_PTR(val);
  goto abort;
 }
 data->alarms |= val;

 data->last_updated = jiffies;
 data->valid = 1;
abort:
 mutex_unlock(&data->update_lock);

 return ret;
}

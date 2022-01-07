
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct i2c_client {int dev; } ;
struct device {int dummy; } ;
struct adm1031_data {unsigned long last_updated; int valid; scalar_t__ chip_type; int* ext_temp; int* temp_offset; int* temp_min; int* temp_max; int* temp_crit; int* auto_temp; int conf1; int conf2; int alarm; int* fan_div; int* fan_min; int* fan; int* pwm; int update_lock; scalar_t__* temp; int update_interval; struct i2c_client* client; } ;


 int ADM1031_REG_AUTO_TEMP (int) ;
 int ADM1031_REG_CONF1 ;
 int ADM1031_REG_CONF2 ;
 int ADM1031_REG_EXT_TEMP ;
 int ADM1031_REG_FAN_DIV (int) ;
 int ADM1031_REG_FAN_MIN (int) ;
 int ADM1031_REG_FAN_SPEED (int) ;
 int ADM1031_REG_PWM ;
 int ADM1031_REG_STATUS (int) ;
 int ADM1031_REG_TEMP (int) ;
 int ADM1031_REG_TEMP_CRIT (int) ;
 int ADM1031_REG_TEMP_MAX (int) ;
 int ADM1031_REG_TEMP_MIN (int) ;
 int ADM1031_REG_TEMP_OFFSET (int) ;
 scalar_t__ adm1030 ;
 scalar_t__ adm1031 ;
 int adm1031_read_value (struct i2c_client*,int ) ;
 int dev_dbg (int *,char*) ;
 struct adm1031_data* dev_get_drvdata (struct device*) ;
 int dev_warn (int *,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static struct adm1031_data *adm1031_update_device(struct device *dev)
{
 struct adm1031_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long next_update;
 int chan;

 mutex_lock(&data->update_lock);

 next_update = data->last_updated
   + msecs_to_jiffies(data->update_interval);
 if (time_after(jiffies, next_update) || !data->valid) {

  dev_dbg(&client->dev, "Starting adm1031 update\n");
  for (chan = 0;
       chan < ((data->chip_type == adm1031) ? 3 : 2); chan++) {
   u8 oldh, newh;

   oldh =
       adm1031_read_value(client, ADM1031_REG_TEMP(chan));
   data->ext_temp[chan] =
       adm1031_read_value(client, ADM1031_REG_EXT_TEMP);
   newh =
       adm1031_read_value(client, ADM1031_REG_TEMP(chan));
   if (newh != oldh) {
    data->ext_temp[chan] =
        adm1031_read_value(client,
             ADM1031_REG_EXT_TEMP);
   }
   data->temp[chan] = newh;

   data->temp_offset[chan] =
       adm1031_read_value(client,
            ADM1031_REG_TEMP_OFFSET(chan));
   data->temp_min[chan] =
       adm1031_read_value(client,
            ADM1031_REG_TEMP_MIN(chan));
   data->temp_max[chan] =
       adm1031_read_value(client,
            ADM1031_REG_TEMP_MAX(chan));
   data->temp_crit[chan] =
       adm1031_read_value(client,
            ADM1031_REG_TEMP_CRIT(chan));
   data->auto_temp[chan] =
       adm1031_read_value(client,
            ADM1031_REG_AUTO_TEMP(chan));

  }

  data->conf1 = adm1031_read_value(client, ADM1031_REG_CONF1);
  data->conf2 = adm1031_read_value(client, ADM1031_REG_CONF2);

  data->alarm = adm1031_read_value(client, ADM1031_REG_STATUS(0))
      | (adm1031_read_value(client, ADM1031_REG_STATUS(1)) << 8);
  if (data->chip_type == adm1030)
   data->alarm &= 0xc0ff;

  for (chan = 0; chan < (data->chip_type == adm1030 ? 1 : 2);
       chan++) {
   data->fan_div[chan] =
       adm1031_read_value(client,
            ADM1031_REG_FAN_DIV(chan));
   data->fan_min[chan] =
       adm1031_read_value(client,
            ADM1031_REG_FAN_MIN(chan));
   data->fan[chan] =
       adm1031_read_value(client,
            ADM1031_REG_FAN_SPEED(chan));
   data->pwm[chan] =
     (adm1031_read_value(client,
     ADM1031_REG_PWM) >> (4 * chan)) & 0x0f;
  }
  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}

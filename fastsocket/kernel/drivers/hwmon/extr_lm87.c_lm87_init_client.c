
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lm87_data {int channel; int config; } ;
struct TYPE_2__ {scalar_t__ platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int CHAN_TEMP3 ;
 int LM87_REG_AIN_MAX (int) ;
 int LM87_REG_AIN_MIN (int) ;
 int LM87_REG_CHANNEL_MODE ;
 int LM87_REG_CONFIG ;
 int LM87_REG_IN_MAX (int) ;
 int LM87_REG_IN_MIN (int) ;
 int * LM87_REG_TEMP_HIGH ;
 int * LM87_REG_TEMP_LOW ;
 struct lm87_data* i2c_get_clientdata (struct i2c_client*) ;
 int lm87_read_value (struct i2c_client*,int ) ;
 int lm87_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static void lm87_init_client(struct i2c_client *client)
{
 struct lm87_data *data = i2c_get_clientdata(client);

 if (client->dev.platform_data) {
  data->channel = *(u8 *)client->dev.platform_data;
  lm87_write_value(client,
     LM87_REG_CHANNEL_MODE, data->channel);
 } else {
  data->channel = lm87_read_value(client, LM87_REG_CHANNEL_MODE);
 }
 data->config = lm87_read_value(client, LM87_REG_CONFIG) & 0x6F;

 if (!(data->config & 0x01)) {
  int i;


  for (i = 1; i < 6; i++) {
   lm87_write_value(client, LM87_REG_IN_MIN(i), 0x00);
   lm87_write_value(client, LM87_REG_IN_MAX(i), 0xFF);
  }
  for (i = 0; i < 2; i++) {
   lm87_write_value(client, LM87_REG_TEMP_HIGH[i], 0x7F);
   lm87_write_value(client, LM87_REG_TEMP_LOW[i], 0x00);
   lm87_write_value(client, LM87_REG_AIN_MIN(i), 0x00);
   lm87_write_value(client, LM87_REG_AIN_MAX(i), 0xFF);
  }
  if (data->channel & CHAN_TEMP3) {
   lm87_write_value(client, LM87_REG_TEMP_HIGH[2], 0x7F);
   lm87_write_value(client, LM87_REG_TEMP_LOW[2], 0x00);
  } else {
   lm87_write_value(client, LM87_REG_IN_MIN(0), 0x00);
   lm87_write_value(client, LM87_REG_IN_MAX(0), 0xFF);
  }
 }


 if ((data->config & 0x09) != 0x01)
  lm87_write_value(client, LM87_REG_CONFIG,
     (data->config & 0x77) | 0x01);
}

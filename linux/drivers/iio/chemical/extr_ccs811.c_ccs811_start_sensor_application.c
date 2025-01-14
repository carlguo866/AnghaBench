
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int CCS811_APP_START ;
 int CCS811_STATUS ;
 int CCS811_STATUS_APP_VALID_LOADED ;
 int CCS811_STATUS_APP_VALID_MASK ;
 int CCS811_STATUS_FW_MODE_APPLICATION ;
 int CCS811_STATUS_FW_MODE_MASK ;
 int EIO ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;

__attribute__((used)) static int ccs811_start_sensor_application(struct i2c_client *client)
{
 int ret;

 ret = i2c_smbus_read_byte_data(client, CCS811_STATUS);
 if (ret < 0)
  return ret;

 if ((ret & CCS811_STATUS_FW_MODE_APPLICATION))
  return 0;

 if ((ret & CCS811_STATUS_APP_VALID_MASK) !=
     CCS811_STATUS_APP_VALID_LOADED)
  return -EIO;

 ret = i2c_smbus_write_byte(client, CCS811_APP_START);
 if (ret < 0)
  return ret;

 ret = i2c_smbus_read_byte_data(client, CCS811_STATUS);
 if (ret < 0)
  return ret;

 if ((ret & CCS811_STATUS_FW_MODE_MASK) !=
     CCS811_STATUS_FW_MODE_APPLICATION) {
  dev_err(&client->dev, "Application failed to start. Sensor is still in boot mode.\n");
  return -EIO;
 }

 return 0;
}

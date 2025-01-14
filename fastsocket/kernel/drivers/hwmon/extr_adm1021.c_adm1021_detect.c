
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;


 int ADM1021_REG_CONFIG_R ;
 int ADM1021_REG_CONV_RATE_R ;
 int ADM1021_REG_DEV_ID ;
 int ADM1021_REG_MAN_ID ;
 int ADM1021_REG_STATUS ;
 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int adm1021 ;
 int adm1023 ;
 int gl523sm ;
 int i2c_adapter_id (struct i2c_adapter*) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int lm84 ;
 int max1617 ;
 int max1617a ;
 int mc1066 ;
 int pr_debug (char*,...) ;
 int strlcpy (int ,char const*,int ) ;
 int thmc10 ;

__attribute__((used)) static int adm1021_detect(struct i2c_client *client, int kind,
     struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 int i;
 const char *type_name = "";
 int conv_rate, status, config;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
  pr_debug("adm1021: detect failed, "
    "smbus byte data not supported!\n");
  return -ENODEV;
 }

 status = i2c_smbus_read_byte_data(client, ADM1021_REG_STATUS);
 conv_rate = i2c_smbus_read_byte_data(client,
          ADM1021_REG_CONV_RATE_R);
 config = i2c_smbus_read_byte_data(client, ADM1021_REG_CONFIG_R);


 if (kind < 0) {
  if ((status & 0x03) != 0x00 || (config & 0x3F) != 0x00
      || (conv_rate & 0xF8) != 0x00) {
   pr_debug("adm1021: detect failed, "
     "chip not detected!\n");
   return -ENODEV;
  }
 }


 if (kind <= 0) {
  i = i2c_smbus_read_byte_data(client, ADM1021_REG_MAN_ID);
  if (i == 0x41)
   if ((i2c_smbus_read_byte_data(client,
     ADM1021_REG_DEV_ID) & 0xF0) == 0x30)
    kind = adm1023;
   else
    kind = adm1021;
  else if (i == 0x49)
   kind = thmc10;
  else if (i == 0x23)
   kind = gl523sm;
  else if ((i == 0x4d) &&
    (i2c_smbus_read_byte_data(client,
         ADM1021_REG_DEV_ID) == 0x01))
   kind = max1617a;
  else if (i == 0x54)
   kind = mc1066;

  else if (conv_rate == 0x00
    && (kind == 0
        || ((config & 0x7F) == 0x00
     && (status & 0xAB) == 0x00)))
   kind = lm84;
  else
   kind = max1617;
 }

 if (kind == max1617) {
  type_name = "max1617";
 } else if (kind == max1617a) {
  type_name = "max1617a";
 } else if (kind == adm1021) {
  type_name = "adm1021";
 } else if (kind == adm1023) {
  type_name = "adm1023";
 } else if (kind == thmc10) {
  type_name = "thmc10";
 } else if (kind == lm84) {
  type_name = "lm84";
 } else if (kind == gl523sm) {
  type_name = "gl523sm";
 } else if (kind == mc1066) {
  type_name = "mc1066";
 }
 pr_debug("adm1021: Detected chip %s at adapter %d, address 0x%02x.\n",
   type_name, i2c_adapter_id(adapter), client->addr);
 strlcpy(info->type, type_name, I2C_NAME_SIZE);

 return 0;
}

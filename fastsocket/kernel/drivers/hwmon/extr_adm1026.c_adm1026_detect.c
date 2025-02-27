
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 int ADM1026_COMPANY_ANALOG_DEV ;
 int ADM1026_REG_COMPANY ;
 int ADM1026_REG_VERSTEP ;
 int ADM1026_VERSTEP_ADM1026 ;
 int ADM1026_VERSTEP_GENERIC ;
 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int adm1026 ;
 int adm1026_read_value (struct i2c_client*,int ) ;
 int any_chip ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,int,...) ;
 int i2c_adapter_id (struct i2c_adapter*) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int adm1026_detect(struct i2c_client *client, int kind,
     struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 int address = client->addr;
 int company, verstep;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {

  return -ENODEV;
 };



 company = adm1026_read_value(client, ADM1026_REG_COMPANY);
 verstep = adm1026_read_value(client, ADM1026_REG_VERSTEP);

 dev_dbg(&adapter->dev, "Detecting device at %d,0x%02x with"
  " COMPANY: 0x%02x and VERSTEP: 0x%02x\n",
  i2c_adapter_id(client->adapter), client->addr,
  company, verstep);


 if (kind <= 0) {
  dev_dbg(&adapter->dev, "Autodetecting device at %d,0x%02x "
   "...\n", i2c_adapter_id(adapter), address);
  if (company == ADM1026_COMPANY_ANALOG_DEV
      && verstep == ADM1026_VERSTEP_ADM1026) {
   kind = adm1026;
  } else if (company == ADM1026_COMPANY_ANALOG_DEV
   && (verstep & 0xf0) == ADM1026_VERSTEP_GENERIC) {
   dev_err(&adapter->dev, "Unrecognized stepping "
    "0x%02x. Defaulting to ADM1026.\n", verstep);
   kind = adm1026;
  } else if ((verstep & 0xf0) == ADM1026_VERSTEP_GENERIC) {
   dev_err(&adapter->dev, "Found version/stepping "
    "0x%02x. Assuming generic ADM1026.\n",
    verstep);
   kind = any_chip;
  } else {
   dev_dbg(&adapter->dev, "Autodetection failed\n");

   if (kind == 0) {
    dev_err(&adapter->dev, "Generic ADM1026 not "
     "found at %d,0x%02x.  Try "
     "force_adm1026.\n",
     i2c_adapter_id(adapter), address);
   }
   return -ENODEV;
  }
 }
 strlcpy(info->type, "adm1026", I2C_NAME_SIZE);

 return 0;
}

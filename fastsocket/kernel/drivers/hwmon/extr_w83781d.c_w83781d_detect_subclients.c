
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83781d_data {int type; int * lm75; } ;
struct i2c_client {int addr; int dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
typedef enum chips { ____Placeholder_chips } chips ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int W83781D_REG_I2C_SUBADDR ;
 int dev_err (int *,char*,int,...) ;
 int* force_subclients ;
 int i2c_adapter_id (struct i2c_adapter*) ;
 struct w83781d_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_new_dummy (struct i2c_adapter*,unsigned short) ;
 int i2c_unregister_device (int ) ;
 int w83781d_read_value (struct w83781d_data*,int ) ;
 int w83781d_write_value (struct w83781d_data*,int ,int) ;
 int w83783s ;

__attribute__((used)) static int
w83781d_detect_subclients(struct i2c_client *new_client)
{
 int i, val1 = 0, id;
 int err;
 int address = new_client->addr;
 unsigned short sc_addr[2];
 struct i2c_adapter *adapter = new_client->adapter;
 struct w83781d_data *data = i2c_get_clientdata(new_client);
 enum chips kind = data->type;

 id = i2c_adapter_id(adapter);

 if (force_subclients[0] == id && force_subclients[1] == address) {
  for (i = 2; i <= 3; i++) {
   if (force_subclients[i] < 0x48 ||
       force_subclients[i] > 0x4f) {
    dev_err(&new_client->dev, "Invalid subclient "
     "address %d; must be 0x48-0x4f\n",
     force_subclients[i]);
    err = -EINVAL;
    goto ERROR_SC_1;
   }
  }
  w83781d_write_value(data, W83781D_REG_I2C_SUBADDR,
    (force_subclients[2] & 0x07) |
    ((force_subclients[3] & 0x07) << 4));
  sc_addr[0] = force_subclients[2];
 } else {
  val1 = w83781d_read_value(data, W83781D_REG_I2C_SUBADDR);
  sc_addr[0] = 0x48 + (val1 & 0x07);
 }

 if (kind != w83783s) {
  if (force_subclients[0] == id &&
      force_subclients[1] == address) {
   sc_addr[1] = force_subclients[3];
  } else {
   sc_addr[1] = 0x48 + ((val1 >> 4) & 0x07);
  }
  if (sc_addr[0] == sc_addr[1]) {
   dev_err(&new_client->dev,
          "Duplicate addresses 0x%x for subclients.\n",
          sc_addr[0]);
   err = -EBUSY;
   goto ERROR_SC_2;
  }
 }

 for (i = 0; i <= 1; i++) {
  data->lm75[i] = i2c_new_dummy(adapter, sc_addr[i]);
  if (!data->lm75[i]) {
   dev_err(&new_client->dev, "Subclient %d "
    "registration at address 0x%x "
    "failed.\n", i, sc_addr[i]);
   err = -ENOMEM;
   if (i == 1)
    goto ERROR_SC_3;
   goto ERROR_SC_2;
  }
  if (kind == w83783s)
   break;
 }

 return 0;


ERROR_SC_3:
 i2c_unregister_device(data->lm75[0]);
ERROR_SC_2:
ERROR_SC_1:
 return err;
}

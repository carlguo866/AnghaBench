
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct intel_dvo_device {int slave_addr; struct i2c_adapter* i2c_bus; struct ch7xxx_priv* dev_priv; } ;
struct i2c_msg {int len; int* buf; int flags; int addr; } ;
struct i2c_adapter {int name; } ;
struct ch7xxx_priv {int quiet; } ;


 int DRM_DEBUG_KMS (char*,int,int ,int ) ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static bool ch7xxx_writeb(struct intel_dvo_device *dvo, int addr, uint8_t ch)
{
 struct ch7xxx_priv *ch7xxx = dvo->dev_priv;
 struct i2c_adapter *adapter = dvo->i2c_bus;
 uint8_t out_buf[2];
 struct i2c_msg msg = {
  .addr = dvo->slave_addr,
  .flags = 0,
  .len = 2,
  .buf = out_buf,
 };

 out_buf[0] = addr;
 out_buf[1] = ch;

 if (i2c_transfer(adapter, &msg, 1) == 1)
  return 1;

 if (!ch7xxx->quiet) {
  DRM_DEBUG_KMS("Unable to write register 0x%02x to %s:%d.\n",
     addr, adapter->name, dvo->slave_addr);
 }

 return 0;
}

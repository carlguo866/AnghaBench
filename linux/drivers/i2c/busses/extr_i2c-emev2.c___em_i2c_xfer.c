
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; int len; int * buf; } ;
struct i2c_adapter {int dummy; } ;
struct em_i2c_device {scalar_t__ base; } ;


 int ENXIO ;
 int I2C_BIT_ACKD0 ;
 int I2C_BIT_ACKE0 ;
 int I2C_BIT_STT0 ;
 int I2C_BIT_WREL0 ;
 int I2C_BIT_WTIM0 ;
 int I2C_M_RD ;
 scalar_t__ I2C_OFS_IIC0 ;
 int I2C_OFS_IICC0 ;
 int em_clear_set_bit (struct em_i2c_device*,int,int,int ) ;
 int em_i2c_reset (struct i2c_adapter*) ;
 int em_i2c_stop (struct em_i2c_device*) ;
 int em_i2c_wait_for_event (struct em_i2c_device*) ;
 int i2c_8bit_addr_from_msg (struct i2c_msg*) ;
 struct em_i2c_device* i2c_get_adapdata (struct i2c_adapter*) ;
 int readb (scalar_t__) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static int __em_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msg,
    int stop)
{
 struct em_i2c_device *priv = i2c_get_adapdata(adap);
 int count, status, read = !!(msg->flags & I2C_M_RD);


 em_clear_set_bit(priv, 0, I2C_BIT_ACKE0 | I2C_BIT_WTIM0, I2C_OFS_IICC0);
 em_clear_set_bit(priv, 0, I2C_BIT_STT0, I2C_OFS_IICC0);


 writeb(i2c_8bit_addr_from_msg(msg), priv->base + I2C_OFS_IIC0);


 status = em_i2c_wait_for_event(priv);
 if (status < 0)
  goto out_reset;


 if (!(status & I2C_BIT_ACKD0)) {
  em_i2c_stop(priv);
  goto out;
 }


 if (read) {

  em_clear_set_bit(priv, I2C_BIT_WTIM0, I2C_BIT_ACKE0, I2C_OFS_IICC0);
  em_clear_set_bit(priv, I2C_BIT_WTIM0, I2C_BIT_WREL0, I2C_OFS_IICC0);


  status = em_i2c_wait_for_event(priv);
  if (status < 0)
   goto out_reset;
 }


 for (count = 0; count < msg->len; count++) {
  if (read) {
   msg->buf[count] = readb(priv->base + I2C_OFS_IIC0);
   em_clear_set_bit(priv, 0, I2C_BIT_WREL0, I2C_OFS_IICC0);

  } else {

   if (!(status & I2C_BIT_ACKD0)) {
    em_i2c_stop(priv);
    goto out;
   }


   writeb(msg->buf[count], priv->base + I2C_OFS_IIC0);
  }


  status = em_i2c_wait_for_event(priv);
  if (status < 0)
   goto out_reset;
 }

 if (stop)
  em_i2c_stop(priv);

 return count;

out_reset:
 em_i2c_reset(adap);
out:
 return status < 0 ? status : -ENXIO;
}

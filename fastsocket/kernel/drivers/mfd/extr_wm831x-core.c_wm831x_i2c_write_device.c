
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {struct i2c_client* control_data; } ;
struct i2c_client {int dummy; } ;


 int EIO ;
 unsigned short cpu_to_be16 (unsigned short) ;
 int i2c_master_send (struct i2c_client*,unsigned char*,int) ;
 int memcpy (unsigned char*,void*,int) ;

__attribute__((used)) static int wm831x_i2c_write_device(struct wm831x *wm831x, unsigned short reg,
       int bytes, void *src)
{
 struct i2c_client *i2c = wm831x->control_data;
 unsigned char msg[bytes + 2];
 int ret;

 reg = cpu_to_be16(reg);
 memcpy(&msg[0], &reg, 2);
 memcpy(&msg[2], src, bytes);

 ret = i2c_master_send(i2c, msg, bytes + 2);
 if (ret < 0)
  return ret;
 if (ret < bytes + 2)
  return -EIO;

 return 0;
}

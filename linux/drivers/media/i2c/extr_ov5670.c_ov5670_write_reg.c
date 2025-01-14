
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ov5670 {int sd; } ;
struct i2c_client {int dummy; } ;
typedef int __be32 ;


 int EINVAL ;
 int EIO ;
 int cpu_to_be32 (int ) ;
 unsigned int i2c_master_send (struct i2c_client*,int*,unsigned int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int ov5670_write_reg(struct ov5670 *ov5670, u16 reg, unsigned int len,
       u32 val)
{
 struct i2c_client *client = v4l2_get_subdevdata(&ov5670->sd);
 int buf_i;
 int val_i;
 u8 buf[6];
 u8 *val_p;
 __be32 tmp;

 if (len > 4)
  return -EINVAL;

 buf[0] = reg >> 8;
 buf[1] = reg & 0xff;

 tmp = cpu_to_be32(val);
 val_p = (u8 *)&tmp;
 buf_i = 2;
 val_i = 4 - len;

 while (val_i < 4)
  buf[buf_i++] = val_p[val_i++];

 if (i2c_master_send(client, buf, len + 2) != len + 2)
  return -EIO;

 return 0;
}

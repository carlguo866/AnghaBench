
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zc0301_device {int dummy; } ;


 int EIO ;
 int ENODEV ;
 int msleep (int) ;
 int pb0330 ;
 int zc0301_attach_sensor (struct zc0301_device*,int *) ;
 int zc0301_i2c_read (struct zc0301_device*,int,int) ;
 scalar_t__ zc0301_write_reg (struct zc0301_device*,int,int) ;

int zc0301_probe_pb0330(struct zc0301_device* cam)
{
 int r0, err = 0;

 err += zc0301_write_reg(cam, 0x0000, 0x01);
 err += zc0301_write_reg(cam, 0x0010, 0x0a);
 err += zc0301_write_reg(cam, 0x0001, 0x01);
 err += zc0301_write_reg(cam, 0x0012, 0x03);
 err += zc0301_write_reg(cam, 0x0012, 0x01);

 msleep(10);

 r0 = zc0301_i2c_read(cam, 0x00, 2);

 if (r0 < 0 || err)
  return -EIO;

 if (r0 != 0x8243)
  return -ENODEV;

 zc0301_attach_sensor(cam, &pb0330);

 return 0;
}

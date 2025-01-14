
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_int_device {struct tcm825x_sensor* priv; } ;
struct tcm825x_sensor {TYPE_1__* i2c_client; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int dev_err (int *,char*) ;
 int tcm825x_read_reg (TYPE_1__*,int) ;

__attribute__((used)) static int ioctl_dev_init(struct v4l2_int_device *s)
{
 struct tcm825x_sensor *sensor = s->priv;
 int r;

 r = tcm825x_read_reg(sensor->i2c_client, 0x01);
 if (r < 0)
  return r;
 if (r == 0) {
  dev_err(&sensor->i2c_client->dev, "device not detected\n");
  return -EIO;
 }
 return 0;
}

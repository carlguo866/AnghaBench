
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max1363_state {TYPE_1__* current_mode; struct i2c_client* client; } ;
struct iio_dev {struct max1363_state* dev_data; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int numvals; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int i2c_master_recv (struct i2c_client*,char*,int) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 scalar_t__ sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t max1363_scan_direct(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct iio_dev *dev_info = dev_get_drvdata(dev);
 struct max1363_state *st = dev_info->dev_data;
 int len = 0, ret, i;
 struct i2c_client *client = st->client;
 char *rxbuf;

 if (st->current_mode->numvals == 0)
  return 0;
 rxbuf = kmalloc(st->current_mode->numvals*2, GFP_KERNEL);
 if (rxbuf == ((void*)0))
  return -ENOMEM;



 ret = i2c_master_recv(client, rxbuf, st->current_mode->numvals*2);

 if (ret < 0)
  return ret;
 for (i = 0; i < st->current_mode->numvals; i++)
  len += sprintf(buf+len, "%d ",
          ((int)(rxbuf[i*2+0]&0x0F) << 8)
          + ((int)(rxbuf[i*2+1])));
 kfree(rxbuf);
 len += sprintf(buf + len, "\n");

 return len;
}

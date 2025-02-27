
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_chan_spec {scalar_t__ type; } ;
struct i2c_client {int dev; } ;
struct cm36651_data {struct i2c_client* client; } ;


 int CM36651_CMD_READ_RAW_LIGHT ;
 int CM36651_CMD_READ_RAW_PROXIMITY ;
 int EINVAL ;
 scalar_t__ IIO_LIGHT ;
 scalar_t__ IIO_PROXIMITY ;
 int cm36651_read_output (struct cm36651_data*,struct iio_chan_spec const*,int*) ;
 int cm36651_set_operation_mode (struct cm36651_data*,int) ;
 int dev_err (int *,char*) ;
 int msleep (int) ;

__attribute__((used)) static int cm36651_read_channel(struct cm36651_data *cm36651,
    struct iio_chan_spec const *chan, int *val)
{
 struct i2c_client *client = cm36651->client;
 int cmd, ret;

 if (chan->type == IIO_LIGHT)
  cmd = CM36651_CMD_READ_RAW_LIGHT;
 else if (chan->type == IIO_PROXIMITY)
  cmd = CM36651_CMD_READ_RAW_PROXIMITY;
 else
  return -EINVAL;

 ret = cm36651_set_operation_mode(cm36651, cmd);
 if (ret < 0) {
  dev_err(&client->dev, "CM36651 set operation mode failed\n");
  return ret;
 }

 msleep(50);
 ret = cm36651_read_output(cm36651, chan, val);
 if (ret < 0) {
  dev_err(&client->dev, "CM36651 read output failed\n");
  return ret;
 }

 return ret;
}

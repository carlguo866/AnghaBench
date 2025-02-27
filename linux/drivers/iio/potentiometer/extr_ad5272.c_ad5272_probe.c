
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {int num_channels; int name; int * channels; int * info; TYPE_1__ dev; } ;
struct i2c_device_id {size_t driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;
struct ad5272_data {int * cfg; int lock; struct i2c_client* client; } ;


 int AD5272_CTL ;
 int AD5272_RDAC_WR_EN ;
 int ENODEV ;
 int ENOMEM ;
 int * ad5272_cfg ;
 int ad5272_channel ;
 int ad5272_info ;
 int ad5272_reset (struct ad5272_data*) ;
 int ad5272_write (struct ad5272_data*,int ,int ) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_iio_device_register (struct device*,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct ad5272_data* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int ad5272_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct iio_dev *indio_dev;
 struct ad5272_data *data;
 int ret;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 i2c_set_clientdata(client, indio_dev);

 data = iio_priv(indio_dev);
 data->client = client;
 mutex_init(&data->lock);
 data->cfg = &ad5272_cfg[id->driver_data];

 ret = ad5272_reset(data);
 if (ret)
  return ret;

 ret = ad5272_write(data, AD5272_CTL, AD5272_RDAC_WR_EN);
 if (ret < 0)
  return -ENODEV;

 indio_dev->dev.parent = dev;
 indio_dev->info = &ad5272_info;
 indio_dev->channels = &ad5272_channel;
 indio_dev->num_channels = 1;
 indio_dev->name = client->name;

 return devm_iio_device_register(dev, indio_dev);
}

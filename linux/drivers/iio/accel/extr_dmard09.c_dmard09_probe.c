
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; } ;
struct iio_dev {int * info; int num_channels; int channels; int modes; int name; TYPE_1__ dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct dmard09_data {struct i2c_client* client; } ;


 int ARRAY_SIZE (int ) ;
 int DMARD09_CHIPID ;
 int DMARD09_DRV_NAME ;
 int DMARD09_REG_CHIPID ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int dev_err (int *,char*,...) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int dmard09_channels ;
 int dmard09_info ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 struct dmard09_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int dmard09_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 int ret;
 struct iio_dev *indio_dev;
 struct dmard09_data *data;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!indio_dev) {
  dev_err(&client->dev, "iio allocation failed\n");
  return -ENOMEM;
 }

 data = iio_priv(indio_dev);
 data->client = client;

 ret = i2c_smbus_read_byte_data(data->client, DMARD09_REG_CHIPID);
 if (ret < 0) {
  dev_err(&client->dev, "Error reading chip id %d\n", ret);
  return ret;
 }

 if (ret != DMARD09_CHIPID) {
  dev_err(&client->dev, "Invalid chip id %d\n", ret);
  return -ENODEV;
 }

 i2c_set_clientdata(client, indio_dev);
 indio_dev->dev.parent = &client->dev;
 indio_dev->name = DMARD09_DRV_NAME;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = dmard09_channels;
 indio_dev->num_channels = ARRAY_SIZE(dmard09_channels);
 indio_dev->info = &dmard09_info;

 return devm_iio_device_register(&client->dev, indio_dev);
}

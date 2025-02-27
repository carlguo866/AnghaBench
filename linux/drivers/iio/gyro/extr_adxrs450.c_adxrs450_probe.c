
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* driver; } ;
struct spi_device {TYPE_4__ dev; } ;
struct TYPE_6__ {TYPE_4__* parent; } ;
struct iio_dev {int name; int num_channels; int channels; int modes; int * info; TYPE_1__ dev; } ;
struct adxrs450_state {int buf_lock; struct spi_device* us; } ;
struct TYPE_8__ {size_t driver_data; } ;
struct TYPE_7__ {int name; } ;


 int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int * adxrs450_channels ;
 int adxrs450_info ;
 int adxrs450_initial_setup (struct iio_dev*) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_4__*,int) ;
 int devm_iio_device_register (TYPE_4__*,struct iio_dev*) ;
 struct adxrs450_state* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 TYPE_3__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int adxrs450_probe(struct spi_device *spi)
{
 int ret;
 struct adxrs450_state *st;
 struct iio_dev *indio_dev;


 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (!indio_dev)
  return -ENOMEM;
 st = iio_priv(indio_dev);
 st->us = spi;
 mutex_init(&st->buf_lock);

 spi_set_drvdata(spi, indio_dev);

 indio_dev->dev.parent = &spi->dev;
 indio_dev->info = &adxrs450_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels =
  adxrs450_channels[spi_get_device_id(spi)->driver_data];
 indio_dev->num_channels = ARRAY_SIZE(adxrs450_channels);
 indio_dev->name = spi->dev.driver->name;

 ret = devm_iio_device_register(&spi->dev, indio_dev);
 if (ret)
  return ret;


 ret = adxrs450_initial_setup(indio_dev);
 if (ret)
  return ret;

 return 0;
}

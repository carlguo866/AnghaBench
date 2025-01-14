
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {scalar_t__ max_speed_hz; int dev; } ;
struct TYPE_3__ {int * parent; } ;
struct iio_dev {int num_channels; TYPE_1__ dev; int name; int * channels; int modes; int * info; } ;
struct ad2s90_state {struct spi_device* sdev; int lock; } ;
struct TYPE_4__ {int name; } ;


 scalar_t__ AD2S90_MAX_SPI_FREQ_HZ ;
 int EINVAL ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int ad2s90_chan ;
 int ad2s90_info ;
 int dev_err (int *,char*,scalar_t__,scalar_t__) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 struct ad2s90_state* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int ad2s90_probe(struct spi_device *spi)
{
 struct iio_dev *indio_dev;
 struct ad2s90_state *st;

 if (spi->max_speed_hz > AD2S90_MAX_SPI_FREQ_HZ) {
  dev_err(&spi->dev, "SPI CLK, %d Hz exceeds %d Hz\n",
   spi->max_speed_hz, AD2S90_MAX_SPI_FREQ_HZ);
  return -EINVAL;
 }

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (!indio_dev)
  return -ENOMEM;
 st = iio_priv(indio_dev);
 spi_set_drvdata(spi, indio_dev);

 mutex_init(&st->lock);
 st->sdev = spi;
 indio_dev->dev.parent = &spi->dev;
 indio_dev->info = &ad2s90_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = &ad2s90_chan;
 indio_dev->num_channels = 1;
 indio_dev->name = spi_get_device_id(spi)->name;

 return devm_iio_device_register(indio_dev->dev.parent, indio_dev);
}

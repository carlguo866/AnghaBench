
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct ltc2632_state {scalar_t__ vref_reg; } ;
struct iio_dev {int dummy; } ;


 int iio_device_unregister (struct iio_dev*) ;
 struct ltc2632_state* iio_priv (struct iio_dev*) ;
 int regulator_disable (scalar_t__) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ltc2632_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct ltc2632_state *st = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);

 if (st->vref_reg)
  regulator_disable(st->vref_reg);

 return 0;
}

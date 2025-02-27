
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iio_dev {int mlock; } ;
struct TYPE_6__ {int realbits; int shift; } ;
struct iio_chan_spec {TYPE_3__ scan_type; int address; } ;
struct ad_sigma_delta {int bus_locked; int keep_cs_asserted; int irq_dis; TYPE_2__* spi; TYPE_1__* info; int completion; } ;
struct TYPE_5__ {int master; int irq; } ;
struct TYPE_4__ {unsigned int data_reg; } ;


 int AD_SD_MODE_IDLE ;
 int AD_SD_MODE_SINGLE ;
 unsigned int AD_SD_REG_DATA ;
 int DIV_ROUND_UP (int,int) ;
 int EBUSY ;
 int EIO ;
 int HZ ;
 int IIO_VAL_INT ;
 int ad_sd_read_reg (struct ad_sigma_delta*,unsigned int,int ,unsigned int*) ;
 int ad_sigma_delta_postprocess_sample (struct ad_sigma_delta*,unsigned int) ;
 int ad_sigma_delta_set_channel (struct ad_sigma_delta*,int ) ;
 int ad_sigma_delta_set_mode (struct ad_sigma_delta*,int ) ;
 int disable_irq_nosync (int ) ;
 int enable_irq (int ) ;
 scalar_t__ iio_buffer_enabled (struct iio_dev*) ;
 struct ad_sigma_delta* iio_device_get_drvdata (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int spi_bus_lock (int ) ;
 int spi_bus_unlock (int ) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

int ad_sigma_delta_single_conversion(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, int *val)
{
 struct ad_sigma_delta *sigma_delta = iio_device_get_drvdata(indio_dev);
 unsigned int sample, raw_sample;
 unsigned int data_reg;
 int ret = 0;

 if (iio_buffer_enabled(indio_dev))
  return -EBUSY;

 mutex_lock(&indio_dev->mlock);
 ad_sigma_delta_set_channel(sigma_delta, chan->address);

 spi_bus_lock(sigma_delta->spi->master);
 sigma_delta->bus_locked = 1;
 sigma_delta->keep_cs_asserted = 1;
 reinit_completion(&sigma_delta->completion);

 ad_sigma_delta_set_mode(sigma_delta, AD_SD_MODE_SINGLE);

 sigma_delta->irq_dis = 0;
 enable_irq(sigma_delta->spi->irq);
 ret = wait_for_completion_interruptible_timeout(
   &sigma_delta->completion, HZ);

 if (ret == 0)
  ret = -EIO;
 if (ret < 0)
  goto out;

 if (sigma_delta->info->data_reg != 0)
  data_reg = sigma_delta->info->data_reg;
 else
  data_reg = AD_SD_REG_DATA;

 ret = ad_sd_read_reg(sigma_delta, data_reg,
  DIV_ROUND_UP(chan->scan_type.realbits + chan->scan_type.shift, 8),
  &raw_sample);

out:
 if (!sigma_delta->irq_dis) {
  disable_irq_nosync(sigma_delta->spi->irq);
  sigma_delta->irq_dis = 1;
 }

 sigma_delta->keep_cs_asserted = 0;
 ad_sigma_delta_set_mode(sigma_delta, AD_SD_MODE_IDLE);
 sigma_delta->bus_locked = 0;
 spi_bus_unlock(sigma_delta->spi->master);
 mutex_unlock(&indio_dev->mlock);

 if (ret)
  return ret;

 sample = raw_sample >> chan->scan_type.shift;
 sample &= (1 << chan->scan_type.realbits) - 1;
 *val = sample;

 ret = ad_sigma_delta_postprocess_sample(sigma_delta, raw_sample);
 if (ret)
  return ret;

 return IIO_VAL_INT;
}

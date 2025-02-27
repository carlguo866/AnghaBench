
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_dac_chip {int* val; int resolution; int vref; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 struct ti_dac_chip* iio_priv (struct iio_dev*) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int ti_dac_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 struct ti_dac_chip *ti_dac = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  *val = ti_dac->val[chan->channel];
  ret = IIO_VAL_INT;
  break;

 case 128:
  ret = regulator_get_voltage(ti_dac->vref);
  if (ret < 0)
   return ret;

  *val = ret / 1000;
  *val2 = ti_dac->resolution;
  ret = IIO_VAL_FRACTIONAL_LOG2;
  break;

 default:
  ret = -EINVAL;
 }

 return ret;
}

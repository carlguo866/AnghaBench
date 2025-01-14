
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmp006_data {int config; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
typedef int s32 ;


 int EINVAL ;



 int IIO_TEMP ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int IIO_VOLTAGE ;
 int TMP006_CONFIG_CR_MASK ;
 int TMP006_CONFIG_CR_SHIFT ;
 int TMP006_TAMBIENT ;
 int TMP006_TAMBIENT_SHIFT ;
 int TMP006_VOBJECT ;
 struct tmp006_data* iio_priv (struct iio_dev*) ;
 int sign_extend32 (int,int) ;
 int** tmp006_freqs ;
 int tmp006_read_measurement (struct tmp006_data*,int ) ;

__attribute__((used)) static int tmp006_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *channel, int *val,
       int *val2, long mask)
{
 struct tmp006_data *data = iio_priv(indio_dev);
 s32 ret;
 int cr;

 switch (mask) {
 case 130:
  if (channel->type == IIO_VOLTAGE) {

   ret = tmp006_read_measurement(data, TMP006_VOBJECT);
   if (ret < 0)
    return ret;
   *val = sign_extend32(ret, 15);
  } else if (channel->type == IIO_TEMP) {

   ret = tmp006_read_measurement(data, TMP006_TAMBIENT);
   if (ret < 0)
    return ret;
   *val = sign_extend32(ret, 15) >> TMP006_TAMBIENT_SHIFT;
  } else {
   break;
  }
  return IIO_VAL_INT;
 case 128:
  if (channel->type == IIO_VOLTAGE) {
   *val = 0;
   *val2 = 156250;
  } else if (channel->type == IIO_TEMP) {
   *val = 31;
   *val2 = 250000;
  } else {
   break;
  }
  return IIO_VAL_INT_PLUS_MICRO;
 case 129:
  cr = (data->config & TMP006_CONFIG_CR_MASK)
   >> TMP006_CONFIG_CR_SHIFT;
  *val = tmp006_freqs[cr][0];
  *val2 = tmp006_freqs[cr][1];
  return IIO_VAL_INT_PLUS_MICRO;
 default:
  break;
 }

 return -EINVAL;
}

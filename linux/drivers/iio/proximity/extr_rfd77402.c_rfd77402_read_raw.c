
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfd77402_data {int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;


 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 struct rfd77402_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rfd77402_measure (struct rfd77402_data*) ;

__attribute__((used)) static int rfd77402_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int *val, int *val2, long mask)
{
 struct rfd77402_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  mutex_lock(&data->lock);
  ret = rfd77402_measure(data);
  mutex_unlock(&data->lock);
  if (ret < 0)
   return ret;
  *val = ret;
  return IIO_VAL_INT;
 case 128:

  *val = 0;
  *val2 = 1000;
  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }
}

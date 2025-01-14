
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kxcjk1013_data {int mutex; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;


 struct kxcjk1013_data* iio_priv (struct iio_dev*) ;
 int kxcjk1013_set_odr (struct kxcjk1013_data*,int,int) ;
 int kxcjk1013_set_scale (struct kxcjk1013_data*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kxcjk1013_write_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan, int val,
          int val2, long mask)
{
 struct kxcjk1013_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  mutex_lock(&data->mutex);
  ret = kxcjk1013_set_odr(data, val, val2);
  mutex_unlock(&data->mutex);
  break;
 case 128:
  if (val)
   return -EINVAL;

  mutex_lock(&data->mutex);
  ret = kxcjk1013_set_scale(data, val2);
  mutex_unlock(&data->mutex);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}

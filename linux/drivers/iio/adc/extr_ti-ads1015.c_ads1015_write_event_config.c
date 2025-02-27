
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct ads1015_data {int lock; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int ADS1015_CFG_COMP_MODE_TRAD ;
 int ADS1015_CFG_COMP_MODE_WINDOW ;
 int IIO_EV_DIR_EITHER ;
 int ads1015_disable_event_config (struct ads1015_data*,struct iio_chan_spec const*,int) ;
 int ads1015_enable_event_config (struct ads1015_data*,struct iio_chan_spec const*,int) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct ads1015_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ads1015_write_event_config(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, enum iio_event_type type,
 enum iio_event_direction dir, int state)
{
 struct ads1015_data *data = iio_priv(indio_dev);
 int ret;
 int comp_mode = (dir == IIO_EV_DIR_EITHER) ?
  ADS1015_CFG_COMP_MODE_WINDOW : ADS1015_CFG_COMP_MODE_TRAD;

 mutex_lock(&data->lock);


 ret = iio_device_claim_direct_mode(indio_dev);
 if (ret) {
  mutex_unlock(&data->lock);
  return ret;
 }

 if (state)
  ret = ads1015_enable_event_config(data, chan, comp_mode);
 else
  ret = ads1015_disable_event_config(data, chan, comp_mode);

 iio_device_release_direct_mode(indio_dev);
 mutex_unlock(&data->lock);

 return ret;
}

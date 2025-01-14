
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct max1363_state {int mask_low; int mask_high; } ;
struct iio_dev {int mlock; } ;
struct iio_chan_spec {int channel; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int IIO_EV_DIR_FALLING ;
 int __max1363_check_event_mask (int,int) ;
 struct max1363_state* iio_priv (struct iio_dev*) ;
 int max1363_monitor_mode_update (struct max1363_state*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int max1363_write_event_config(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, enum iio_event_type type,
 enum iio_event_direction dir, int state)
{
 int ret = 0;
 struct max1363_state *st = iio_priv(indio_dev);
 u16 unifiedmask;
 int number = chan->channel;

 mutex_lock(&indio_dev->mlock);
 unifiedmask = st->mask_low | st->mask_high;
 if (dir == IIO_EV_DIR_FALLING) {

  if (state == 0)
   st->mask_low &= ~(1 << number);
  else {
   ret = __max1363_check_event_mask((1 << number),
        unifiedmask);
   if (ret)
    goto error_ret;
   st->mask_low |= (1 << number);
  }
 } else {
  if (state == 0)
   st->mask_high &= ~(1 << number);
  else {
   ret = __max1363_check_event_mask((1 << number),
        unifiedmask);
   if (ret)
    goto error_ret;
   st->mask_high |= (1 << number);
  }
 }

 max1363_monitor_mode_update(st, !!(st->mask_high | st->mask_low));
error_ret:
 mutex_unlock(&indio_dev->mlock);

 return ret;
}

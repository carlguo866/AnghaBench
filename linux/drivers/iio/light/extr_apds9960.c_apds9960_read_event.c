
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;
struct apds9960_data {int regmap; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;
typedef int __le16 ;


 int EINVAL ;
 int IIO_EV_INFO_VALUE ;
 scalar_t__ IIO_INTENSITY ;
 scalar_t__ IIO_PROXIMITY ;
 int IIO_VAL_INT ;
 int apds9960_get_thres_reg (struct iio_chan_spec const*,int,int *) ;
 struct apds9960_data* iio_priv (struct iio_dev*) ;
 int le16_to_cpu (int ) ;
 int regmap_bulk_read (int ,int ,int *,int) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int apds9960_read_event(struct iio_dev *indio_dev,
          const struct iio_chan_spec *chan,
          enum iio_event_type type,
          enum iio_event_direction dir,
          enum iio_event_info info,
          int *val, int *val2)
{
 u8 reg;
 __le16 buf;
 int ret = 0;
 struct apds9960_data *data = iio_priv(indio_dev);

 if (info != IIO_EV_INFO_VALUE)
  return -EINVAL;

 ret = apds9960_get_thres_reg(chan, dir, &reg);
 if (ret < 0)
  return ret;

 if (chan->type == IIO_PROXIMITY) {
  ret = regmap_read(data->regmap, reg, val);
  if (ret < 0)
   return ret;
 } else if (chan->type == IIO_INTENSITY) {
  ret = regmap_bulk_read(data->regmap, reg, &buf, 2);
  if (ret < 0)
   return ret;
  *val = le16_to_cpu(buf);
 } else
  return -EINVAL;

 *val2 = 0;

 return IIO_VAL_INT;
}

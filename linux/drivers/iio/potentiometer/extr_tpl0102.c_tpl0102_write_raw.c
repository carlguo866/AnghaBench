
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tpl0102_data {int regmap; TYPE_1__* cfg; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct TYPE_2__ {int* avail; } ;


 int EINVAL ;
 long IIO_CHAN_INFO_RAW ;
 struct tpl0102_data* iio_priv (struct iio_dev*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int tpl0102_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 struct tpl0102_data *data = iio_priv(indio_dev);

 if (mask != IIO_CHAN_INFO_RAW)
  return -EINVAL;

 if (val > data->cfg->avail[2] || val < 0)
  return -EINVAL;

 return regmap_write(data->regmap, chan->channel, val);
}

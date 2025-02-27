
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct st_sensor_data {TYPE_3__* sensor_settings; } ;
struct iio_dev {int dummy; } ;
struct TYPE_5__ {TYPE_1__* fs_avl; } ;
struct TYPE_6__ {TYPE_2__ fs; } ;
struct TYPE_4__ {int gain; int num; } ;


 int EINVAL ;
 int ST_SENSORS_FULLSCALE_AVL_MAX ;
 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 int st_sensors_set_fullscale (struct iio_dev*,int ) ;

int st_sensors_set_fullscale_by_gain(struct iio_dev *indio_dev, int scale)
{
 int err = -EINVAL, i;
 struct st_sensor_data *sdata = iio_priv(indio_dev);

 for (i = 0; i < ST_SENSORS_FULLSCALE_AVL_MAX; i++) {
  if ((sdata->sensor_settings->fs.fs_avl[i].gain == scale) &&
    (sdata->sensor_settings->fs.fs_avl[i].gain != 0)) {
   err = 0;
   break;
  }
 }
 if (err < 0)
  goto st_sensors_match_scale_error;

 err = st_sensors_set_fullscale(indio_dev,
    sdata->sensor_settings->fs.fs_avl[i].num);

st_sensors_match_scale_error:
 return err;
}

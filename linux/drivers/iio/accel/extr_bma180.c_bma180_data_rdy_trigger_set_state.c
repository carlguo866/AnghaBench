
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct bma180_data {int dummy; } ;


 int bma180_set_new_data_intr_state (struct bma180_data*,int) ;
 struct bma180_data* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;

__attribute__((used)) static int bma180_data_rdy_trigger_set_state(struct iio_trigger *trig,
  bool state)
{
 struct iio_dev *indio_dev = iio_trigger_get_drvdata(trig);
 struct bma180_data *data = iio_priv(indio_dev);

 return bma180_set_new_data_intr_state(data, state);
}

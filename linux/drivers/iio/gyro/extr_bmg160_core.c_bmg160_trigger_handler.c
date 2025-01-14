
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_poll_func {int timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
struct bmg160_data {int buffer; int mutex; int regmap; } ;
typedef int irqreturn_t ;


 int AXIS_MAX ;
 int BMG160_REG_XOUT_L ;
 int IRQ_HANDLED ;
 struct bmg160_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int ,int ) ;
 int iio_trigger_notify_done (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_read (int ,int ,int ,int) ;

__attribute__((used)) static irqreturn_t bmg160_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct bmg160_data *data = iio_priv(indio_dev);
 int ret;

 mutex_lock(&data->mutex);
 ret = regmap_bulk_read(data->regmap, BMG160_REG_XOUT_L,
          data->buffer, AXIS_MAX * 2);
 mutex_unlock(&data->mutex);
 if (ret < 0)
  goto err;

 iio_push_to_buffers_with_timestamp(indio_dev, data->buffer,
        pf->timestamp);
err:
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}

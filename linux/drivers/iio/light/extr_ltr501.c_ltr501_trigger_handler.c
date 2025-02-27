
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ltr501_data {int regmap; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; int active_scan_mask; } ;
typedef int irqreturn_t ;
typedef int buf ;
typedef int als_buf ;
typedef int __le16 ;


 int IRQ_HANDLED ;
 int LTR501_ALS_DATA1 ;
 int LTR501_PS_DATA ;
 int LTR501_PS_DATA_MASK ;
 int LTR501_STATUS_ALS_RDY ;
 int LTR501_STATUS_PS_RDY ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct ltr501_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int*,int ) ;
 int iio_trigger_notify_done (int ) ;
 int le16_to_cpu (int ) ;
 int ltr501_drdy (struct ltr501_data*,int) ;
 int memset (int*,int ,int) ;
 int regmap_bulk_read (int ,int ,int*,int) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static irqreturn_t ltr501_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct ltr501_data *data = iio_priv(indio_dev);
 u16 buf[8];
 __le16 als_buf[2];
 u8 mask = 0;
 int j = 0;
 int ret, psdata;

 memset(buf, 0, sizeof(buf));


 if (test_bit(0, indio_dev->active_scan_mask) ||
     test_bit(1, indio_dev->active_scan_mask))
  mask |= LTR501_STATUS_ALS_RDY;
 if (test_bit(2, indio_dev->active_scan_mask))
  mask |= LTR501_STATUS_PS_RDY;

 ret = ltr501_drdy(data, mask);
 if (ret < 0)
  goto done;

 if (mask & LTR501_STATUS_ALS_RDY) {
  ret = regmap_bulk_read(data->regmap, LTR501_ALS_DATA1,
           (u8 *)als_buf, sizeof(als_buf));
  if (ret < 0)
   return ret;
  if (test_bit(0, indio_dev->active_scan_mask))
   buf[j++] = le16_to_cpu(als_buf[1]);
  if (test_bit(1, indio_dev->active_scan_mask))
   buf[j++] = le16_to_cpu(als_buf[0]);
 }

 if (mask & LTR501_STATUS_PS_RDY) {
  ret = regmap_bulk_read(data->regmap, LTR501_PS_DATA,
           &psdata, 2);
  if (ret < 0)
   goto done;
  buf[j++] = psdata & LTR501_PS_DATA_MASK;
 }

 iio_push_to_buffers_with_timestamp(indio_dev, buf,
        iio_get_time_ns(indio_dev));

done:
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}

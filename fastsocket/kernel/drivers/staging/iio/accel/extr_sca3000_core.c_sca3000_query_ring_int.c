
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sca3000_state {int lock; } ;
struct iio_event_attr {int mask; } ;
struct iio_dev {struct sca3000_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int SCA3000_REG_ADDR_INT_MASK ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int kfree (int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca3000_read_data (struct sca3000_state*,int ,int**,int) ;
 int sprintf (char*,char*,int) ;
 struct iio_event_attr* to_iio_event_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t sca3000_query_ring_int(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct iio_event_attr *this_attr = to_iio_event_attr(attr);
 int ret, len;
 u8 *rx;
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct sca3000_state *st = indio_dev->dev_data;
 mutex_lock(&st->lock);
 ret = sca3000_read_data(st, SCA3000_REG_ADDR_INT_MASK, &rx, 1);
 mutex_unlock(&st->lock);
 if (ret)
  return ret;
 len = sprintf(buf, "%d\n", (rx[1] & this_attr->mask) ? 1 : 0);
 kfree(rx);

 return len;
}

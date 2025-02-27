
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srf08_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct srf08_data* iio_priv (struct iio_dev*) ;
 int kstrtouint (char const*,int,unsigned int*) ;
 int srf08_write_sensitivity (struct srf08_data*,unsigned int) ;

__attribute__((used)) static ssize_t srf08_store_sensitivity(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t len)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct srf08_data *data = iio_priv(indio_dev);
 int ret;
 unsigned int val;

 ret = kstrtouint(buf, 10, &val);
 if (ret)
  return ret;

 ret = srf08_write_sensitivity(data, val);
 if (ret < 0)
  return ret;

 return len;
}

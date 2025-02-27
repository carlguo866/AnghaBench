
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad799x_state {int client; } ;
typedef int ssize_t ;


 int AD7998_CYCLE_TMR_REG ;
 int AD7998_CYC_MASK ;
 int* ad7998_frequencies ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 struct ad799x_state* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ad799x_read_frequency(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ad799x_state *st = iio_priv(indio_dev);

 int ret = i2c_smbus_read_byte_data(st->client, AD7998_CYCLE_TMR_REG);
 if (ret < 0)
  return ret;

 return sprintf(buf, "%u\n", ad7998_frequencies[ret & AD7998_CYC_MASK]);
}

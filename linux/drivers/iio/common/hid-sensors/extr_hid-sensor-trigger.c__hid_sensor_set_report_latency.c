
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct hid_sensor_common {int latency_ms; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct iio_dev* dev_to_iio_dev (struct device*) ;
 int hid_sensor_get_report_latency (struct hid_sensor_common*) ;
 int hid_sensor_set_report_latency (struct hid_sensor_common*,int) ;
 struct hid_sensor_common* iio_device_get_drvdata (struct iio_dev*) ;
 int iio_str_to_fixpoint (char const*,int,int*,int*) ;

__attribute__((used)) static ssize_t _hid_sensor_set_report_latency(struct device *dev,
           struct device_attribute *attr,
           const char *buf, size_t len)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct hid_sensor_common *attrb = iio_device_get_drvdata(indio_dev);
 int integer, fract, ret;
 int latency;

 ret = iio_str_to_fixpoint(buf, 100000, &integer, &fract);
 if (ret)
  return ret;

 latency = integer * 1000 + fract / 1000;
 ret = hid_sensor_set_report_latency(attrb, latency);
 if (ret < 0)
  return len;

 attrb->latency_ms = hid_sensor_get_report_latency(attrb);

 return len;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int* enh_acoustics; } ;
typedef int ssize_t ;


 int* ad7475_st_map ;
 struct adt7475_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,...) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_st_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 struct adt7475_data *data = dev_get_drvdata(dev);
 long val;

 switch (sattr->index) {
 case 0:
  val = data->enh_acoustics[0] & 0xf;
  break;
 case 1:
  val = (data->enh_acoustics[1] >> 4) & 0xf;
  break;
 case 2:
 default:
  val = data->enh_acoustics[1] & 0xf;
  break;
 }

 if (val & 0x8)
  return sprintf(buf, "%d\n", ad7475_st_map[val & 0x7]);
 else
  return sprintf(buf, "0\n");
}

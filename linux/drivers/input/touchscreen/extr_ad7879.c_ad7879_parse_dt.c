
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct device {int dummy; } ;
struct ad7879 {int swap_xy; int pen_down_acc_interval; int averaging; int median; int acquisition_time; int first_conversion_delay; scalar_t__ x_plate_ohms; } ;


 int dev_err (struct device*,char*) ;
 int device_property_read_bool (struct device*,char*) ;
 int device_property_read_u32 (struct device*,char*,scalar_t__*) ;
 int device_property_read_u8 (struct device*,char*,int *) ;

__attribute__((used)) static int ad7879_parse_dt(struct device *dev, struct ad7879 *ts)
{
 int err;
 u32 tmp;

 err = device_property_read_u32(dev, "adi,resistance-plate-x", &tmp);
 if (err) {
  dev_err(dev, "failed to get resistance-plate-x property\n");
  return err;
 }
 ts->x_plate_ohms = (u16)tmp;

 device_property_read_u8(dev, "adi,first-conversion-delay",
    &ts->first_conversion_delay);
 device_property_read_u8(dev, "adi,acquisition-time",
    &ts->acquisition_time);
 device_property_read_u8(dev, "adi,median-filter-size", &ts->median);
 device_property_read_u8(dev, "adi,averaging", &ts->averaging);
 device_property_read_u8(dev, "adi,conversion-interval",
    &ts->pen_down_acc_interval);

 ts->swap_xy = device_property_read_bool(dev, "touchscreen-swapped-x-y");

 return 0;
}

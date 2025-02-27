
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntrig_data {int min_height; int sensor_physical_height; int sensor_logical_height; } ;
struct hid_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct ntrig_data* hid_get_drvdata (struct hid_device*) ;
 int sprintf (char*,char*,int) ;
 struct hid_device* to_hid_device (struct device*) ;

__attribute__((used)) static ssize_t show_min_height(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct hid_device *hdev = to_hid_device(dev);
 struct ntrig_data *nd = hid_get_drvdata(hdev);

 return sprintf(buf, "%d\n", nd->min_height *
        nd->sensor_physical_height /
        nd->sensor_logical_height);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int max_brightness; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct led_classdev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t led_max_brightness_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);

 return sprintf(buf, "%u\n", led_cdev->max_brightness);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm8323_pwm {int fade_time; } ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct lm8323_pwm* cdev_to_pwm (struct led_classdev*) ;
 struct led_classdev* dev_get_drvdata (struct device*) ;
 int kstrtoint (char const*,int,int*) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t lm8323_pwm_store_time(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t len)
{
 struct led_classdev *led_cdev = dev_get_drvdata(dev);
 struct lm8323_pwm *pwm = cdev_to_pwm(led_cdev);
 int ret, time;

 ret = kstrtoint(buf, 10, &time);

 if (ret)
  return ret;

 pwm->fade_time = time;

 return strlen(buf);
}

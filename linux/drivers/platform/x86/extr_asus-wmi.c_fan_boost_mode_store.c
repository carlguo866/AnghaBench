
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asus_wmi {scalar_t__ fan_boost_mode_mask; scalar_t__ fan_boost_mode; } ;
typedef int ssize_t ;


 scalar_t__ ASUS_FAN_BOOST_MODE_NORMAL ;
 scalar_t__ ASUS_FAN_BOOST_MODE_OVERBOOST ;
 scalar_t__ ASUS_FAN_BOOST_MODE_OVERBOOST_MASK ;
 scalar_t__ ASUS_FAN_BOOST_MODE_SILENT ;
 scalar_t__ ASUS_FAN_BOOST_MODE_SILENT_MASK ;
 int EINVAL ;
 struct asus_wmi* dev_get_drvdata (struct device*) ;
 int fan_boost_mode_write (struct asus_wmi*) ;
 int kstrtou8 (char const*,int,scalar_t__*) ;
 int pr_warn (char*) ;

__attribute__((used)) static ssize_t fan_boost_mode_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 int result;
 u8 new_mode;
 struct asus_wmi *asus = dev_get_drvdata(dev);
 u8 mask = asus->fan_boost_mode_mask;

 result = kstrtou8(buf, 10, &new_mode);
 if (result < 0) {
  pr_warn("Trying to store invalid value\n");
  return result;
 }

 if (new_mode == ASUS_FAN_BOOST_MODE_OVERBOOST) {
  if (!(mask & ASUS_FAN_BOOST_MODE_OVERBOOST_MASK))
   return -EINVAL;
 } else if (new_mode == ASUS_FAN_BOOST_MODE_SILENT) {
  if (!(mask & ASUS_FAN_BOOST_MODE_SILENT_MASK))
   return -EINVAL;
 } else if (new_mode != ASUS_FAN_BOOST_MODE_NORMAL) {
  return -EINVAL;
 }

 asus->fan_boost_mode = new_mode;
 fan_boost_mode_write(asus);

 return result;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lenovo_drvdata_cptkbd {int fn_lock; } ;
struct hid_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct lenovo_drvdata_cptkbd* hid_get_drvdata (struct hid_device*) ;
 int snprintf (char*,int ,char*,int) ;
 struct hid_device* to_hid_device (struct device*) ;

__attribute__((used)) static ssize_t attr_fn_lock_show_cptkbd(struct device *dev,
  struct device_attribute *attr,
  char *buf)
{
 struct hid_device *hdev = to_hid_device(dev);
 struct lenovo_drvdata_cptkbd *cptkbd_data = hid_get_drvdata(hdev);

 return snprintf(buf, PAGE_SIZE, "%u\n", cptkbd_data->fn_lock);
}

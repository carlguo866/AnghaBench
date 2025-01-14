
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ipath_devdata {int* ipath_statusp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ PAGE_SIZE ;
 struct ipath_devdata* dev_get_drvdata (struct device*) ;
 char** ipath_status_str ;
 scalar_t__ strlcat (char*,char*,scalar_t__) ;
 int strlen (char*) ;

__attribute__((used)) static ssize_t show_status_str(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct ipath_devdata *dd = dev_get_drvdata(dev);
 int i, any;
 u64 s;
 ssize_t ret;

 if (!dd->ipath_statusp) {
  ret = -EINVAL;
  goto bail;
 }

 s = *(dd->ipath_statusp);
 *buf = '\0';
 for (any = i = 0; s && ipath_status_str[i]; i++) {
  if (s & 1) {
   if (any && strlcat(buf, " ", PAGE_SIZE) >=
       PAGE_SIZE)

    break;
   if (strlcat(buf, ipath_status_str[i],
        PAGE_SIZE) >= PAGE_SIZE)
    break;
   any = 1;
  }
  s >>= 1;
 }
 if (any)
  strlcat(buf, "\n", PAGE_SIZE);

 ret = strlen(buf);

bail:
 return ret;
}

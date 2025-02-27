
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct siox_master {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int siox_device_add (struct siox_master*,char*,size_t,size_t,int ) ;
 int sscanf (char const*,char*,char*,size_t*,size_t*,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 struct siox_master* to_siox_master (struct device*) ;

__attribute__((used)) static ssize_t device_add_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct siox_master *smaster = to_siox_master(dev);
 int ret;
 char type[20] = "";
 size_t inbytes = 0, outbytes = 0;
 u8 statustype = 0;

 ret = sscanf(buf, "%19s %zu %zu %hhu", type, &inbytes,
       &outbytes, &statustype);
 if (ret != 3 && ret != 4)
  return -EINVAL;

 if (strcmp(type, "siox-12x8") || inbytes != 2 || outbytes != 4)
  return -EINVAL;

 siox_device_add(smaster, "siox-12x8", inbytes, outbytes, statustype);

 return count;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 scalar_t__ ib_qib_version ;
 int scnprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t version_show(struct device *device,
       struct device_attribute *attr, char *buf)
{

 return scnprintf(buf, PAGE_SIZE, "%s", (char *)ib_qib_version);
}

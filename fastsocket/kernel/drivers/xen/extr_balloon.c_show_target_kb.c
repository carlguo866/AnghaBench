
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int target_pages; } ;


 int PAGES2KB (int ) ;
 TYPE_1__ balloon_stats ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t show_target_kb(struct sys_device *dev, struct sysdev_attribute *attr,
         char *buf)
{
 return sprintf(buf, "%lu\n", PAGES2KB(balloon_stats.target_pages));
}

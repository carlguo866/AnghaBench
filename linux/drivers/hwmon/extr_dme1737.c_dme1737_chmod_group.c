
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct device {int dummy; } ;
struct attribute_group {struct attribute** attrs; } ;
struct attribute {int dummy; } ;


 int dme1737_chmod_file (struct device*,struct attribute*,int ) ;

__attribute__((used)) static void dme1737_chmod_group(struct device *dev,
    const struct attribute_group *group,
    umode_t mode)
{
 struct attribute **attr;

 for (attr = group->attrs; *attr; attr++)
  dme1737_chmod_file(dev, *attr, mode);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int printk (char*,unsigned long,unsigned long) ;
 unsigned long readl (scalar_t__) ;
 scalar_t__ remapped_regs ;
 unsigned long simple_strtoul (char const*,int *,int) ;

__attribute__((used)) static ssize_t w100fb_reg_read(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 unsigned long regs, param;
 regs = simple_strtoul(buf, ((void*)0), 16);
 param = readl(remapped_regs + regs);
 printk("Read Register 0x%08lX: 0x%08lX\n", regs, param);
 return count;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subsys_interface {int dummy; } ;
struct device {int dummy; } ;


 int pm_cpu_prep ;
 int pm_cpu_sleep ;
 int s3c2410_cpu_suspend ;
 int s3c2410_pm_prepare ;

__attribute__((used)) static int s3c2410_pm_add(struct device *dev, struct subsys_interface *sif)
{
 pm_cpu_prep = s3c2410_pm_prepare;
 pm_cpu_sleep = s3c2410_cpu_suspend;

 return 0;
}

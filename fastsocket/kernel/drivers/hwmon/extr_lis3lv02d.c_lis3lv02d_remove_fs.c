
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lis3lv02d {TYPE_2__* pdev; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int lis3lv02d_attribute_group ;
 int platform_device_unregister (TYPE_2__*) ;
 int sysfs_remove_group (int *,int *) ;

int lis3lv02d_remove_fs(struct lis3lv02d *lis3)
{
 sysfs_remove_group(&lis3->pdev->dev.kobj, &lis3lv02d_attribute_group);
 platform_device_unregister(lis3->pdev);
 return 0;
}

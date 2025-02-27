
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct lis3lv02d {TYPE_2__* pdev; } ;
struct TYPE_5__ {int kobj; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;


 int DRIVER_NAME ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int PTR_ERR (TYPE_2__*) ;
 int lis3lv02d_attribute_group ;
 TYPE_2__* platform_device_register_simple (int ,int,int *,int ) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int lis3lv02d_add_fs(struct lis3lv02d *lis3)
{
 lis3->pdev = platform_device_register_simple(DRIVER_NAME, -1, ((void*)0), 0);
 if (IS_ERR(lis3->pdev))
  return PTR_ERR(lis3->pdev);

 return sysfs_create_group(&lis3->pdev->dev.kobj, &lis3lv02d_attribute_group);
}

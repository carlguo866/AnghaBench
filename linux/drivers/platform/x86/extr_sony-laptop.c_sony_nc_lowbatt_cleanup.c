
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int device_remove_file (int *,int *) ;
 int kfree (int *) ;
 int * lowbatt_handle ;

__attribute__((used)) static void sony_nc_lowbatt_cleanup(struct platform_device *pd)
{
 if (lowbatt_handle) {
  device_remove_file(&pd->dev, lowbatt_handle);
  kfree(lowbatt_handle);
  lowbatt_handle = ((void*)0);
 }
}

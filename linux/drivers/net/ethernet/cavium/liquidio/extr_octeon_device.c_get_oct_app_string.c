
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ CVM_DRV_APP_END ;
 scalar_t__ CVM_DRV_APP_START ;
 scalar_t__ CVM_DRV_INVALID_APP ;
 char** oct_dev_app_str ;

__attribute__((used)) static char *get_oct_app_string(u32 app_mode)
{
 if (app_mode <= CVM_DRV_APP_END)
  return oct_dev_app_str[app_mode - CVM_DRV_APP_START];
 return oct_dev_app_str[CVM_DRV_INVALID_APP - CVM_DRV_APP_START];
}

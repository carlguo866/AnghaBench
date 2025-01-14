
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* unsigned_integer; } ;
struct TYPE_6__ {TYPE_1__ target; } ;
struct TYPE_7__ {TYPE_2__ value; } ;
typedef TYPE_3__ rarch_setting_t ;



__attribute__((used)) static int setting_uint_action_left_crt_switch_resolution_super(
      rarch_setting_t *setting, bool wraparound)
{
   if (!setting)
      return -1;

   switch (*setting->value.target.unsigned_integer)
   {
      case 0:
         *setting->value.target.unsigned_integer = 3840;
         break;
      case 1:
         *setting->value.target.unsigned_integer = 0;
         break;
      case 1920:
         *setting->value.target.unsigned_integer = 1;
         break;
      case 2560:
         *setting->value.target.unsigned_integer = 1920;
         break;
      case 3840:
         *setting->value.target.unsigned_integer = 2560;
         break;
   }

   return 0;
}

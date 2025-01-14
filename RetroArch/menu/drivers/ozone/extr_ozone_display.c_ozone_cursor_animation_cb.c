
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cursor_state; int cursor_border; } ;
struct TYPE_7__ {TYPE_1__ theme_dynamic; TYPE_2__* theme; } ;
typedef TYPE_3__ ozone_handle_t ;
struct TYPE_6__ {float* cursor_border_1; float* cursor_border_0; } ;


 int ozone_animate_cursor (TYPE_3__*,int ,float*) ;

__attribute__((used)) static void ozone_cursor_animation_cb(void *userdata)
{
   ozone_handle_t *ozone = (ozone_handle_t*) userdata;

   float *target = ((void*)0);

   switch (ozone->theme_dynamic.cursor_state)
   {
      case 0:
         target = ozone->theme->cursor_border_1;
         break;
      case 1:
         target = ozone->theme->cursor_border_0;
         break;
   }

   ozone->theme_dynamic.cursor_state = (ozone->theme_dynamic.cursor_state + 1) % 2;

   ozone_animate_cursor(ozone, ozone->theme_dynamic.cursor_border, target);
}

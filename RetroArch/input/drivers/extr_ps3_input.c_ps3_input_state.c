
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct retro_keybind {int joyaxis; int joykey; } ;
struct TYPE_10__ {float axis_threshold; int joy_idx; TYPE_1__* auto_binds; } ;
typedef TYPE_3__ rarch_joypad_info_t ;
struct TYPE_11__ {TYPE_2__* accelerometer_state; TYPE_6__* joypad; } ;
typedef TYPE_4__ ps3_input_t ;
typedef int int16_t ;
struct TYPE_12__ {int (* axis ) (int ,int const) ;int (* button ) (int ,int ) ;} ;
struct TYPE_9__ {int z; int y; int x; } ;
struct TYPE_8__ {int joyaxis; int joykey; } ;


 int AXIS_NONE ;
 int NO_BTN ;
 unsigned int RARCH_FIRST_CUSTOM_BIND ;

 unsigned int RETRO_DEVICE_ID_JOYPAD_MASK ;






 scalar_t__ abs (int ) ;
 int input_joypad_analog (TYPE_6__*,TYPE_3__,unsigned int,unsigned int,unsigned int,struct retro_keybind const*) ;
 int ps3_mouse_device_state (void*,unsigned int,unsigned int) ;
 int retval ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int const) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int const) ;

__attribute__((used)) static int16_t ps3_input_state(void *data,
      rarch_joypad_info_t joypad_info,
      const struct retro_keybind **binds,
      unsigned port, unsigned device,
      unsigned idx, unsigned id)
{
   ps3_input_t *ps3 = (ps3_input_t*)data;

   if (!ps3)
      return 0;

   switch (device)
   {
      case 130:
         if (id == RETRO_DEVICE_ID_JOYPAD_MASK)
         {
            unsigned i;
            int16_t ret = 0;
            for (i = 0; i < RARCH_FIRST_CUSTOM_BIND; i++)
            {

               const uint64_t joykey = (binds[port][i].joykey != NO_BTN)
                  ? binds[port][i].joykey : joypad_info.auto_binds[i].joykey;
               const uint32_t joyaxis = (binds[port][i].joyaxis != AXIS_NONE)
                  ? binds[port][i].joyaxis : joypad_info.auto_binds[i].joyaxis;

               if ((uint16_t)joykey != NO_BTN && ps3->joypad->button(joypad_info.joy_idx, (uint16_t)joykey))
               {
                  ret |= (1 << i);
                  continue;
               }
               else if (((float)abs(ps3->joypad->axis(joypad_info.joy_idx, joyaxis)) / 0x8000) > joypad_info.axis_threshold)
               {
                  ret |= (1 << i);
                  continue;
               }
            }

            return ret;
         }
         else
         {

            const uint64_t joykey = (binds[port][id].joykey != NO_BTN)
               ? binds[port][id].joykey : joypad_info.auto_binds[id].joykey;
            const uint32_t joyaxis = (binds[port][id].joyaxis != AXIS_NONE)
               ? binds[port][id].joyaxis : joypad_info.auto_binds[id].joyaxis;

            if ((uint16_t)joykey != NO_BTN && ps3->joypad->button(joypad_info.joy_idx, (uint16_t)joykey))
               return 1;
            if (((float)abs(ps3->joypad->axis(joypad_info.joy_idx, joyaxis)) / 0x8000) > joypad_info.axis_threshold)
               return 1;
         }
         break;
      case 134:
         if (binds[port])
            return input_joypad_analog(ps3->joypad, joypad_info, port, idx, id, binds[port]);
         break;
   }

   return 0;
}

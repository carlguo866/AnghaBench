
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ joypad; } ;
typedef TYPE_1__ psp_input_t ;
typedef enum retro_rumble_effect { ____Placeholder_retro_rumble_effect } retro_rumble_effect ;


 int input_joypad_set_rumble (scalar_t__,unsigned int,int,int ) ;

__attribute__((used)) static bool psp_input_set_rumble(void *data, unsigned port,
      enum retro_rumble_effect effect, uint16_t strength)
{
   psp_input_t *psp = (psp_input_t*)data;

   if (psp && psp->joypad)
      return input_joypad_set_rumble(psp->joypad,
         port, effect, strength);
   return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_keybind {scalar_t__ key; } ;
typedef int sdl_input_t ;
typedef int int16_t ;


 scalar_t__ RETROK_LAST ;
 int input_conv_analog_id_to_bind_id (unsigned int,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ sdl_key_pressed (scalar_t__) ;

__attribute__((used)) static int16_t sdl_analog_pressed(sdl_input_t *sdl, const struct retro_keybind *binds,
      unsigned idx, unsigned id)
{
   int16_t pressed_minus = 0, pressed_plus = 0;
   unsigned id_minus = 0;
   unsigned id_plus = 0;

   input_conv_analog_id_to_bind_id(idx, id, id_minus, id_plus);

   if ((binds[id_minus].key < RETROK_LAST) && sdl_key_pressed(binds[id_minus].key))
      pressed_minus = -0x7fff;
   if ((binds[id_plus].key < RETROK_LAST) && sdl_key_pressed(binds[id_plus].key))
      pressed_plus = 0x7fff;

   return pressed_plus + pressed_minus;
}

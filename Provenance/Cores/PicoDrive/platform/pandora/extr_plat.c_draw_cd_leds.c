
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* s68k_regs; } ;


 TYPE_1__* Pico_mcd ;
 scalar_t__ g_screen_ptr ;
 int g_screen_width ;

__attribute__((used)) static void draw_cd_leds(void)
{
 int old_reg;
 old_reg = Pico_mcd->s68k_regs[0];

 if (0) {

  unsigned int col_g = (old_reg & 2) ? 0xc0c0c0c0 : 0xe0e0e0e0;
  unsigned int col_r = (old_reg & 1) ? 0xd0d0d0d0 : 0xe0e0e0e0;
  *(unsigned int *)((char *)g_screen_ptr + g_screen_width*2+ 4) =
  *(unsigned int *)((char *)g_screen_ptr + g_screen_width*3+ 4) =
  *(unsigned int *)((char *)g_screen_ptr + g_screen_width*4+ 4) = col_g;
  *(unsigned int *)((char *)g_screen_ptr + g_screen_width*2+12) =
  *(unsigned int *)((char *)g_screen_ptr + g_screen_width*3+12) =
  *(unsigned int *)((char *)g_screen_ptr + g_screen_width*4+12) = col_r;
 } else {

  unsigned int *p = (unsigned int *)((short *)g_screen_ptr + g_screen_width*2+4);
  unsigned int col_g = (old_reg & 2) ? 0x06000600 : 0;
  unsigned int col_r = (old_reg & 1) ? 0xc000c000 : 0;
  *p++ = col_g; *p++ = col_g; p+=2; *p++ = col_r; *p++ = col_r; p += g_screen_width/2 - 12/2;
  *p++ = col_g; *p++ = col_g; p+=2; *p++ = col_r; *p++ = col_r; p += g_screen_width/2 - 12/2;
  *p++ = col_g; *p++ = col_g; p+=2; *p++ = col_r; *p++ = col_r;
 }
}

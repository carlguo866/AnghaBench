
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {int dummy; } ;


 int writemmr (struct tridentfb_par*,int,int) ;

__attribute__((used)) static void image_init_accel(struct tridentfb_par *par, int pitch, int bpp)
{
 int tmp = bpp == 24 ? 2: (bpp >> 4);

 writemmr(par, 0x2120, 0xF0000000);
 writemmr(par, 0x2120, 0x40000000 | tmp);
 writemmr(par, 0x2120, 0x80000000);
 writemmr(par, 0x2144, 0x00000000);
 writemmr(par, 0x2148, 0x00000000);
 writemmr(par, 0x2150, 0x00000000);
 writemmr(par, 0x2154, 0x00000000);
 writemmr(par, 0x2120, 0x60000000 | (pitch << 16) | pitch);
 writemmr(par, 0x216C, 0x00000000);
 writemmr(par, 0x2170, 0x00000000);
 writemmr(par, 0x217C, 0x00000000);
 writemmr(par, 0x2120, 0x10000000);
 writemmr(par, 0x2130, (2047 << 16) | 2047);
}

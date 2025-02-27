
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long red_mask; unsigned long green_mask; unsigned long blue_mask; int depth; } ;
struct TYPE_4__ {int bitsperpixel; size_t mode; int convert_func; TYPE_1__ visual; int display; } ;


 void* ABGR8888 ;
 void* ARGB8888 ;
 size_t BGR233 ;
 void* BGR888 ;
 void* BGRA8888 ;
 int ImageByteOrder (int ) ;
 int LSBFirst ;
 int MSBFirst ;
 size_t RGB555 ;
 size_t RGB555_BR ;
 size_t RGB565 ;
 size_t RGB565_BR ;
 void* RGB888 ;
 void* RGBA8888 ;
 size_t UNKNOWN ;
 int ffs (unsigned long) ;
 TYPE_2__ info ;
 scalar_t__ is_big_endian () ;
 char** modename ;
 int printf (char*,...) ;
 int * ximage_convert_funcs ;

__attribute__((used)) static void
select_mode(void)
{
 int byteorder;
 int byterev;
 unsigned long rm, gm, bm;
 unsigned long rs, gs, bs;

 byteorder = ImageByteOrder(info.display);
 if (is_big_endian())
  byterev = byteorder != MSBFirst;
 else
  byterev = byteorder != LSBFirst;

 rm = info.visual.red_mask;
 gm = info.visual.green_mask;
 bm = info.visual.blue_mask;

 rs = ffs(rm) - 1;
 gs = ffs(gm) - 1;
 bs = ffs(bm) - 1;
 info.mode = UNKNOWN;
 if (info.bitsperpixel == 8) {

  info.mode = BGR233;
 }
 else if (info.bitsperpixel == 16) {
  if (rm == 0xF800 && gm == 0x07E0 && bm == 0x001F)
   info.mode = !byterev ? RGB565 : RGB565_BR;
  if (rm == 0x7C00 && gm == 0x03E0 && bm == 0x001F)
   info.mode = !byterev ? RGB555 : RGB555_BR;
 }
 else if (info.bitsperpixel == 24) {
  if (rs == 0 && gs == 8 && bs == 16)
   info.mode = byteorder == MSBFirst ? RGB888 : BGR888;
  if (rs == 16 && gs == 8 && bs == 0)
   info.mode = byteorder == MSBFirst ? BGR888 : RGB888;
 }
 else if (info.bitsperpixel == 32) {
  if (rs == 0 && gs == 8 && bs == 16)
   info.mode = byteorder == MSBFirst ? ABGR8888 : RGBA8888;
  if (rs == 8 && gs == 16 && bs == 24)
   info.mode = byteorder == MSBFirst ? BGRA8888 : ARGB8888;
  if (rs == 16 && gs == 8 && bs == 0)
   info.mode = byteorder == MSBFirst ? ARGB8888 : BGRA8888;
  if (rs == 24 && gs == 16 && bs == 8)
   info.mode = byteorder == MSBFirst ? RGBA8888 : ABGR8888;
 }






 info.convert_func = ximage_convert_funcs[info.mode];
}

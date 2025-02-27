
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_color; } ;


 scalar_t__ logo_active ;
 int newport_clear_screen (int,int,int,int,int) ;
 int topscan ;

__attribute__((used)) static void newport_clear(struct vc_data *vc, int sy, int sx, int height,
     int width)
{
 int xend = ((sx + width) << 3) - 1;
 int ystart = ((sy << 4) + topscan) & 0x3ff;
 int yend = (((sy + height) << 4) + topscan - 1) & 0x3ff;

 if (logo_active)
  return;

 if (ystart < yend) {
  newport_clear_screen(sx << 3, ystart, xend, yend,
         (vc->vc_color & 0xf0) >> 4);
 } else {
  newport_clear_screen(sx << 3, ystart, xend, 1023,
         (vc->vc_color & 0xf0) >> 4);
  newport_clear_screen(sx << 3, 0, xend, yend,
         (vc->vc_color & 0xf0) >> 4);
 }
}

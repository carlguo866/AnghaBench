
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {unsigned long yres_virtual; int xres_virtual; int bits_per_pixel; unsigned long yres; } ;


 int DBG (char*) ;
 unsigned long OMAPFB_PLANE_YRES_MIN ;

__attribute__((used)) static void shrink_height(unsigned long max_frame_size,
  struct fb_var_screeninfo *var)
{
 DBG("can't fit FB into memory, reducing y\n");
 var->yres_virtual = max_frame_size /
  (var->xres_virtual * var->bits_per_pixel >> 3);

 if (var->yres_virtual < OMAPFB_PLANE_YRES_MIN)
  var->yres_virtual = OMAPFB_PLANE_YRES_MIN;

 if (var->yres > var->yres_virtual)
  var->yres = var->yres_virtual;
}

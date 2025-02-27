
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_7__ {int offset; int length; scalar_t__ msb_right; } ;
struct TYPE_10__ {int offset; int length; scalar_t__ msb_right; } ;
struct TYPE_9__ {int offset; int length; scalar_t__ msb_right; } ;
struct TYPE_8__ {int offset; int length; scalar_t__ msb_right; } ;
struct fb_var_screeninfo {int vmode; int xoffset; int yoffset; int xres; int yres; int xres_virtual; int yres_virtual; int bits_per_pixel; TYPE_2__ transp; TYPE_5__ blue; TYPE_4__ green; TYPE_3__ red; } ;
struct TYPE_6__ {int xoffset; int yoffset; } ;
struct fb_info {TYPE_1__ var; } ;


 int EINVAL ;
 int ENOMEM ;
 int FB_VMODE_CONUPDATE ;
 int FB_VMODE_YWRAP ;
 int UNIFB_MEMSIZE ;
 int get_line_length (int,int) ;

__attribute__((used)) static int unifb_check_var(struct fb_var_screeninfo *var,
    struct fb_info *info)
{
 u_long line_length;






 if (var->vmode & FB_VMODE_CONUPDATE) {
  var->vmode |= FB_VMODE_YWRAP;
  var->xoffset = info->var.xoffset;
  var->yoffset = info->var.yoffset;
 }




 if (!var->xres)
  var->xres = 1;
 if (!var->yres)
  var->yres = 1;
 if (var->xres > var->xres_virtual)
  var->xres_virtual = var->xres;
 if (var->yres > var->yres_virtual)
  var->yres_virtual = var->yres;
 if (var->bits_per_pixel <= 1)
  var->bits_per_pixel = 1;
 else if (var->bits_per_pixel <= 8)
  var->bits_per_pixel = 8;
 else if (var->bits_per_pixel <= 16)
  var->bits_per_pixel = 16;
 else if (var->bits_per_pixel <= 24)
  var->bits_per_pixel = 24;
 else if (var->bits_per_pixel <= 32)
  var->bits_per_pixel = 32;
 else
  return -EINVAL;

 if (var->xres_virtual < var->xoffset + var->xres)
  var->xres_virtual = var->xoffset + var->xres;
 if (var->yres_virtual < var->yoffset + var->yres)
  var->yres_virtual = var->yoffset + var->yres;




 line_length =
     get_line_length(var->xres_virtual, var->bits_per_pixel);
 if (line_length * var->yres_virtual > UNIFB_MEMSIZE)
  return -ENOMEM;






 switch (var->bits_per_pixel) {
 case 1:
 case 8:
  var->red.offset = 0;
  var->red.length = 8;
  var->green.offset = 0;
  var->green.length = 8;
  var->blue.offset = 0;
  var->blue.length = 8;
  var->transp.offset = 0;
  var->transp.length = 0;
  break;
 case 16:
  if (var->transp.length) {
   var->red.offset = 0;
   var->red.length = 5;
   var->green.offset = 5;
   var->green.length = 5;
   var->blue.offset = 10;
   var->blue.length = 5;
   var->transp.offset = 15;
   var->transp.length = 1;
  } else {
   var->red.offset = 11;
   var->red.length = 5;
   var->green.offset = 5;
   var->green.length = 6;
   var->blue.offset = 0;
   var->blue.length = 5;
   var->transp.offset = 0;
   var->transp.length = 0;
  }
  break;
 case 24:
  var->red.offset = 0;
  var->red.length = 8;
  var->green.offset = 8;
  var->green.length = 8;
  var->blue.offset = 16;
  var->blue.length = 8;
  var->transp.offset = 0;
  var->transp.length = 0;
  break;
 case 32:
  var->red.offset = 16;
  var->red.length = 8;
  var->green.offset = 8;
  var->green.length = 8;
  var->blue.offset = 0;
  var->blue.length = 8;
  var->transp.offset = 24;
  var->transp.length = 8;
  break;
 }
 var->red.msb_right = 0;
 var->green.msb_right = 0;
 var->blue.msb_right = 0;
 var->transp.msb_right = 0;

 return 0;
}

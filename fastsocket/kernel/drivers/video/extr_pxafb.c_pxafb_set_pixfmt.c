
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int length; scalar_t__ offset; } ;
struct TYPE_7__ {int length; scalar_t__ offset; } ;
struct TYPE_6__ {int length; scalar_t__ offset; } ;
struct TYPE_5__ {int length; scalar_t__ offset; } ;
struct fb_var_screeninfo {int bits_per_pixel; TYPE_4__ transp; TYPE_3__ blue; TYPE_2__ green; TYPE_1__ red; } ;


 int SET_PIXFMT (struct fb_var_screeninfo*,int,int,int,int) ;

__attribute__((used)) static void pxafb_set_pixfmt(struct fb_var_screeninfo *var, int depth)
{
 if (depth == 0)
  depth = var->bits_per_pixel;

 if (var->bits_per_pixel < 16) {

  var->red.offset = 0; var->red.length = 8;
  var->green.offset = 0; var->green.length = 8;
  var->blue.offset = 0; var->blue.length = 8;
  var->transp.offset = 0; var->transp.length = 8;
 }

 switch (depth) {
 case 16: var->transp.length ?
   SET_PIXFMT(var, 5, 5, 5, 1) :
   SET_PIXFMT(var, 5, 6, 5, 0); break;
 case 18: SET_PIXFMT(var, 6, 6, 6, 0); break;
 case 19: SET_PIXFMT(var, 6, 6, 6, 1); break;
 case 24: var->transp.length ?
   SET_PIXFMT(var, 8, 8, 7, 1) :
   SET_PIXFMT(var, 8, 8, 8, 0); break;
 case 25: SET_PIXFMT(var, 8, 8, 8, 1); break;
 }
}

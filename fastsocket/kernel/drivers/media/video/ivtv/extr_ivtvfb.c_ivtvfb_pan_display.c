
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int osd_x_pan; int osd_y_pan; int yuv_forced_update; } ;
struct ivtv {TYPE_2__* osd_info; TYPE_1__ yuv_info; } ;
struct fb_var_screeninfo {int xoffset; int yoffset; int xres_virtual; int bits_per_pixel; } ;
struct fb_info {scalar_t__ par; } ;
struct TYPE_4__ {int pan_cur; } ;


 int write_reg (int,int) ;

__attribute__((used)) static int ivtvfb_pan_display(struct fb_var_screeninfo *var, struct fb_info *info)
{
 u32 osd_pan_index;
 struct ivtv *itv = (struct ivtv *) info->par;

 osd_pan_index = (var->xoffset + (var->yoffset * var->xres_virtual))*var->bits_per_pixel/8;
 write_reg(osd_pan_index, 0x02A0C);


 itv->yuv_info.osd_x_pan = var->xoffset;
 itv->yuv_info.osd_y_pan = var->yoffset;

 itv->yuv_info.yuv_forced_update = 1;

 itv->osd_info->pan_cur = osd_pan_index;
 return 0;
}

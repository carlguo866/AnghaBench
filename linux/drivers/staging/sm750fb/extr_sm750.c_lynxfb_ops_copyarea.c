
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int (* de_copyarea ) (TYPE_4__*,unsigned int,unsigned int,int ,int ,unsigned int,unsigned int,unsigned int,int ,int ,int ,int ,int ) ;} ;
struct sm750_dev {int slock; TYPE_4__ accel; } ;
struct TYPE_5__ {unsigned int oScreen; } ;
struct lynxfb_par {TYPE_1__ crtc; struct sm750_dev* dev; } ;
struct TYPE_7__ {int bits_per_pixel; } ;
struct TYPE_6__ {unsigned int line_length; } ;
struct fb_info {TYPE_3__ var; TYPE_2__ fix; struct lynxfb_par* par; } ;
struct fb_copyarea {int height; int width; int dy; int dx; int sy; int sx; } ;


 int HW_ROP2_COPY ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_4__*,unsigned int,unsigned int,int ,int ,unsigned int,unsigned int,unsigned int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void lynxfb_ops_copyarea(struct fb_info *info,
    const struct fb_copyarea *region)
{
 struct lynxfb_par *par;
 struct sm750_dev *sm750_dev;
 unsigned int base, pitch, Bpp;

 par = info->par;
 sm750_dev = par->dev;





 base = par->crtc.oScreen;
 pitch = info->fix.line_length;
 Bpp = info->var.bits_per_pixel >> 3;







 spin_lock(&sm750_dev->slock);

 sm750_dev->accel.de_copyarea(&sm750_dev->accel,
         base, pitch, region->sx, region->sy,
         base, pitch, Bpp, region->dx, region->dy,
         region->width, region->height,
         HW_ROP2_COPY);
 spin_unlock(&sm750_dev->slock);
}

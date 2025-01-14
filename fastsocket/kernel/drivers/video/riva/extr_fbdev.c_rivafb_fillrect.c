
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int u32 ;
struct TYPE_8__ {scalar_t__ Architecture; TYPE_3__* Bitmap; } ;
struct riva_par {int* palette; TYPE_4__ riva; } ;
struct TYPE_5__ {int bits_per_pixel; } ;
struct fb_info {int flags; scalar_t__ pseudo_palette; TYPE_1__ var; struct riva_par* par; } ;
struct fb_fillrect {int color; int rop; int dx; int dy; int width; int height; } ;
struct TYPE_7__ {TYPE_2__* UnclippedRectangle; int Color1A; } ;
struct TYPE_6__ {int WidthHeight; int TopLeft; } ;


 int Bitmap ;
 int FBINFO_HWACCEL_DISABLED ;
 scalar_t__ NV_ARCH_03 ;
 int NV_WR32 (int *,int ,int) ;
 int RIVA_FIFO_FREE (TYPE_4__,int ,int) ;


 int cfb_fillrect (struct fb_info*,struct fb_fillrect const*) ;
 int mb () ;
 int riva_set_rop_solid (struct riva_par*,int) ;

__attribute__((used)) static void rivafb_fillrect(struct fb_info *info, const struct fb_fillrect *rect)
{
 struct riva_par *par = info->par;
 u_int color, rop = 0;

 if ((info->flags & FBINFO_HWACCEL_DISABLED)) {
  cfb_fillrect(info, rect);
  return;
 }

 if (info->var.bits_per_pixel == 8)
  color = rect->color;
 else {
  if (par->riva.Architecture != NV_ARCH_03)
   color = ((u32 *)info->pseudo_palette)[rect->color];
  else
   color = par->palette[rect->color];
 }

 switch (rect->rop) {
 case 128:
  rop = 0x66;
  break;
 case 129:
 default:
  rop = 0xCC;
  break;
 }

 riva_set_rop_solid(par, rop);

 RIVA_FIFO_FREE(par->riva, Bitmap, 1);
 NV_WR32(&par->riva.Bitmap->Color1A, 0, color);

 RIVA_FIFO_FREE(par->riva, Bitmap, 2);
 NV_WR32(&par->riva.Bitmap->UnclippedRectangle[0].TopLeft, 0,
  (rect->dx << 16) | rect->dy);
 mb();
 NV_WR32(&par->riva.Bitmap->UnclippedRectangle[0].WidthHeight, 0,
  (rect->width << 16) | rect->height);
 mb();
 riva_set_rop_solid(par, 0xcc);

}

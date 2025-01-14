
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {int line_length; } ;
struct TYPE_3__ {int bits_per_pixel; } ;
struct fb_info {scalar_t__ state; int flags; int screen_base; TYPE_2__ fix; TYPE_1__ var; scalar_t__ pseudo_palette; struct cirrusfb_info* par; } ;
struct fb_image {int depth; int width; int height; size_t fg_color; size_t bg_color; int dx; int data; int dy; } ;
struct cirrusfb_info {scalar_t__ btype; int regbase; } ;


 scalar_t__ BT_ALPINE ;
 scalar_t__ BT_SD64 ;
 int FBINFO_HWACCEL_DISABLED ;
 scalar_t__ FBINFO_STATE_RUNNING ;
 int cfb_imageblit (struct fb_info*,struct fb_image const*) ;
 int cirrusfb_RectFill (int ,int,int,int ,int,int,size_t,size_t,int ,unsigned char) ;
 int memcpy (int ,int ,unsigned int) ;

__attribute__((used)) static void cirrusfb_imageblit(struct fb_info *info,
          const struct fb_image *image)
{
 struct cirrusfb_info *cinfo = info->par;
 unsigned char op = (info->var.bits_per_pixel == 24) ? 0xc : 0x4;

 if (info->state != FBINFO_STATE_RUNNING)
  return;

 if (info->flags & FBINFO_HWACCEL_DISABLED || image->depth != 1)
  cfb_imageblit(info, image);
 else if ((cinfo->btype == BT_ALPINE || cinfo->btype == BT_SD64) &&
    op == 0xc)
  cfb_imageblit(info, image);
 else {
  unsigned size = ((image->width + 7) >> 3) * image->height;
  int m = info->var.bits_per_pixel;
  u32 fg, bg;

  if (info->var.bits_per_pixel == 8) {
   fg = image->fg_color;
   bg = image->bg_color;
  } else {
   fg = ((u32 *)(info->pseudo_palette))[image->fg_color];
   bg = ((u32 *)(info->pseudo_palette))[image->bg_color];
  }
  if (info->var.bits_per_pixel == 24) {

   cirrusfb_RectFill(cinfo->regbase,
       info->var.bits_per_pixel,
       (image->dx * m) / 8, image->dy,
       (image->width * m) / 8,
       image->height,
       bg, bg,
       info->fix.line_length, 0x40);
  }
  cirrusfb_RectFill(cinfo->regbase,
      info->var.bits_per_pixel,
      (image->dx * m) / 8, image->dy,
      (image->width * m) / 8, image->height,
      fg, bg,
      info->fix.line_length, op);
  memcpy(info->screen_base, image->data, size);
 }
}

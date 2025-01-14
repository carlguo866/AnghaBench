
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct vc_data {size_t vc_num; } ;
struct fbcon_ops {int (* bmove ) (struct vc_data*,struct fb_info*,int ,int,int ,int,int,int) ;} ;
struct fb_info {struct fbcon_ops* fbcon_par; } ;
struct display {int dummy; } ;


 size_t* con2fb_map ;
 int real_y (struct display*,int) ;
 struct fb_info** registered_fb ;
 int stub1 (struct vc_data*,struct fb_info*,int ,int,int ,int,int,int) ;

__attribute__((used)) static void fbcon_bmove_rec(struct vc_data *vc, struct display *p, int sy, int sx,
       int dy, int dx, int height, int width, u_int y_break)
{
 struct fb_info *info = registered_fb[con2fb_map[vc->vc_num]];
 struct fbcon_ops *ops = info->fbcon_par;
 u_int b;

 if (sy < y_break && sy + height > y_break) {
  b = y_break - sy;
  if (dy < sy) {
   fbcon_bmove_rec(vc, p, sy, sx, dy, dx, b, width,
     y_break);
   fbcon_bmove_rec(vc, p, sy + b, sx, dy + b, dx,
     height - b, width, y_break);
  } else {
   fbcon_bmove_rec(vc, p, sy + b, sx, dy + b, dx,
     height - b, width, y_break);
   fbcon_bmove_rec(vc, p, sy, sx, dy, dx, b, width,
     y_break);
  }
  return;
 }

 if (dy < y_break && dy + height > y_break) {
  b = y_break - dy;
  if (dy < sy) {
   fbcon_bmove_rec(vc, p, sy, sx, dy, dx, b, width,
     y_break);
   fbcon_bmove_rec(vc, p, sy + b, sx, dy + b, dx,
     height - b, width, y_break);
  } else {
   fbcon_bmove_rec(vc, p, sy + b, sx, dy + b, dx,
     height - b, width, y_break);
   fbcon_bmove_rec(vc, p, sy, sx, dy, dx, b, width,
     y_break);
  }
  return;
 }
 ops->bmove(vc, info, real_y(p, sy), sx, real_y(p, dy), dx,
     height, width);
}

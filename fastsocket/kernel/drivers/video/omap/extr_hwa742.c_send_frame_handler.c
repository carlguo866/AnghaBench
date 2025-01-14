
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct update_param {int x; int y; int width; int height; int color_mode; int flags; } ;
struct TYPE_9__ {struct update_param update; } ;
struct hwa742_request {TYPE_3__ par; } ;
struct TYPE_12__ {int prev_flags; int prev_color_mode; TYPE_5__* extif; TYPE_4__* int_ctrl; TYPE_2__* fbdev; } ;
struct TYPE_11__ {int (* transfer_area ) (int,int,int ,struct hwa742_request*) ;int (* set_bits_per_cycle ) (int) ;} ;
struct TYPE_10__ {int (* enable_plane ) (int ,int) ;int (* setup_plane ) (int ,int ,unsigned long,int,int ,int ,int,int,int) ;} ;
struct TYPE_8__ {int dev; TYPE_1__* panel; } ;
struct TYPE_7__ {int x_res; int y_res; } ;


 int EINVAL ;
 int OMAPFB_CHANNEL_OUT_LCD ;



 int OMAPFB_FORMAT_FLAG_FORCE_VSYNC ;
 int OMAPFB_FORMAT_FLAG_TEARSYNC ;
 int OMAPFB_PLANE_GFX ;
 int REQ_PENDING ;
 int dev_dbg (int ,char*,int,int,int,int,int,int,int) ;
 int disable_tearsync () ;
 int enable_tearsync (int,int,int,int,int) ;
 TYPE_6__ hwa742 ;
 int request_complete ;
 int set_format_regs (int,int,int) ;
 int set_window_regs (int,int,int,int) ;
 int stub1 (int ,int ,unsigned long,int,int ,int ,int,int,int) ;
 int stub2 (int) ;
 int stub3 (int ,int) ;
 int stub4 (int,int,int ,struct hwa742_request*) ;

__attribute__((used)) static int send_frame_handler(struct hwa742_request *req)
{
 struct update_param *par = &req->par.update;
 int x = par->x;
 int y = par->y;
 int w = par->width;
 int h = par->height;
 int bpp;
 int conv, transl;
 unsigned long offset;
 int color_mode = par->color_mode;
 int flags = par->flags;
 int scr_width = hwa742.fbdev->panel->x_res;
 int scr_height = hwa742.fbdev->panel->y_res;







 switch (color_mode) {
 case 128:
  bpp = 16;
  conv = 0x08;
  transl = 0x25;
  break;
 case 129:
  bpp = 12;
  conv = 0x09;
  transl = 0x25;
  break;
 case 130:
  bpp = 16;
  conv = 0x01;
  transl = 0x05;
  break;
 default:
  return -EINVAL;
 }

 if (hwa742.prev_flags != flags ||
     hwa742.prev_color_mode != color_mode) {
  set_format_regs(conv, transl, flags);
  hwa742.prev_color_mode = color_mode;
  hwa742.prev_flags = flags;
 }
 flags = req->par.update.flags;
 if (flags & OMAPFB_FORMAT_FLAG_TEARSYNC)
  enable_tearsync(y, scr_width, h, scr_height,
    flags & OMAPFB_FORMAT_FLAG_FORCE_VSYNC);
 else
  disable_tearsync();

 set_window_regs(x, y, x + w, y + h);

 offset = (scr_width * y + x) * bpp / 8;

 hwa742.int_ctrl->setup_plane(OMAPFB_PLANE_GFX,
   OMAPFB_CHANNEL_OUT_LCD, offset, scr_width, 0, 0, w, h,
   color_mode);

 hwa742.extif->set_bits_per_cycle(16);

 hwa742.int_ctrl->enable_plane(OMAPFB_PLANE_GFX, 1);
 hwa742.extif->transfer_area(w, h, request_complete, req);

 return REQ_PENDING;
}

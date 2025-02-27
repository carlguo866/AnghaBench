
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_rect {int height; int width; int top; int left; } ;
struct TYPE_2__ {int osd_vis_w; int osd_vis_h; int osd_x_offset; int osd_y_offset; } ;
struct ivtv {TYPE_1__ yuv_info; scalar_t__ is_out_50hz; } ;


 int EINVAL ;
 int IVTVFB_DEBUG_WARN (char*,int,int) ;
 int IVTV_OSD_MAX_WIDTH ;
 int write_reg (int,int) ;

__attribute__((used)) static int ivtvfb_set_display_window(struct ivtv *itv, struct v4l2_rect *ivtv_window)
{
 int osd_height_limit = itv->is_out_50hz ? 576 : 480;


 if ((ivtv_window->height > osd_height_limit) || (ivtv_window->width > IVTV_OSD_MAX_WIDTH))
  return -EINVAL;


 if (ivtv_window->top + ivtv_window->height > osd_height_limit) {
  IVTVFB_DEBUG_WARN("ivtv_ioctl_fb_set_display_window - Invalid height setting (%d, %d)\n",
   ivtv_window->top, ivtv_window->height);
  ivtv_window->top = osd_height_limit - ivtv_window->height;
 }

 if (ivtv_window->left + ivtv_window->width > IVTV_OSD_MAX_WIDTH) {
  IVTVFB_DEBUG_WARN("ivtv_ioctl_fb_set_display_window - Invalid width setting (%d, %d)\n",
   ivtv_window->left, ivtv_window->width);
  ivtv_window->left = IVTV_OSD_MAX_WIDTH - ivtv_window->width;
 }


 write_reg((ivtv_window->top << 16) | ivtv_window->left, 0x02a04);


 write_reg(((ivtv_window->top+ivtv_window->height) << 16) | (ivtv_window->left+ivtv_window->width), 0x02a08);


 itv->yuv_info.osd_vis_w = ivtv_window->width;
 itv->yuv_info.osd_vis_h = ivtv_window->height;
 itv->yuv_info.osd_x_offset = ivtv_window->left;
 itv->yuv_info.osd_y_offset = ivtv_window->top;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef uintptr_t uint32_t ;
struct TYPE_9__ {uintptr_t layer_id; int layer_scaler_is_enabled; uintptr_t framebuffer_paddr; uintptr_t fb_id; int fd_disp; int layer_format; int layer_buf_h; int layer_buf_w; int layer_buf_y; int layer_buf_x; } ;
typedef TYPE_2__ sunxi_disp_t ;
typedef int fb ;
struct TYPE_10__ {int member_2; int member_3; int height; int width; int y; int x; int member_1; int member_0; } ;
typedef TYPE_3__ __disp_rect_t ;
struct TYPE_8__ {int height; int width; } ;
struct TYPE_11__ {uintptr_t* addr; int format; TYPE_1__ size; void* mode; int seq; } ;
typedef TYPE_4__ __disp_fb_t ;


 int DISP_CMD_LAYER_SET_FB ;
 int DISP_CMD_LAYER_SET_SRC_WINDOW ;
 int DISP_FORMAT_ARGB8888 ;
 int DISP_FORMAT_RGB565 ;
 int DISP_LAYER_WORK_MODE_SCALER ;
 void* DISP_MOD_INTERLEAVED ;
 int DISP_SEQ_ARGB ;
 int DISP_SEQ_P10 ;
 int ioctl (int ,int ,uintptr_t**) ;
 int memset (TYPE_4__*,int ,int) ;
 scalar_t__ sunxi_layer_change_work_mode (TYPE_2__*,int ) ;

__attribute__((used)) static int sunxi_layer_set_rgb_input_buffer(sunxi_disp_t *ctx,
   int bpp,
   uint32_t offset_in_framebuffer,
   int width,
   int height,
   int stride)
{
   __disp_fb_t fb;
   uint32_t tmp[4];
   __disp_rect_t rect = { 0, 0, width, height };

   memset(&fb, 0, sizeof(fb));

   if (ctx->layer_id < 0)
      return -1;

   if (!ctx->layer_scaler_is_enabled)
   {
      if (sunxi_layer_change_work_mode(ctx, DISP_LAYER_WORK_MODE_SCALER) == 0)
         ctx->layer_scaler_is_enabled = 1;
      else
         return -1;
   }

   fb.addr[0] = ctx->framebuffer_paddr + offset_in_framebuffer;
   fb.size.height = height;

   if (bpp == 32)
   {
      fb.format = DISP_FORMAT_ARGB8888;
      fb.seq = DISP_SEQ_ARGB;
      fb.mode = DISP_MOD_INTERLEAVED;
      fb.size.width = stride;
   }
   else if (bpp == 16)
   {
      fb.format = DISP_FORMAT_RGB565;
      fb.seq = DISP_SEQ_P10;
      fb.mode = DISP_MOD_INTERLEAVED;
      fb.size.width = stride * 2;
   }
   else
      return -1;

   tmp[0] = ctx->fb_id;
   tmp[1] = ctx->layer_id;
   tmp[2] = (uintptr_t)&fb;

   if (ioctl(ctx->fd_disp, DISP_CMD_LAYER_SET_FB, &tmp) < 0)
      return -1;

   ctx->layer_buf_x = rect.x;
   ctx->layer_buf_y = rect.y;
   ctx->layer_buf_w = rect.width;
   ctx->layer_buf_h = rect.height;
   ctx->layer_format = fb.format;

   tmp[0] = ctx->fb_id;
   tmp[1] = ctx->layer_id;
   tmp[2] = (uintptr_t)&rect;

   return ioctl(ctx->fd_disp, DISP_CMD_LAYER_SET_SRC_WINDOW, &tmp);
}

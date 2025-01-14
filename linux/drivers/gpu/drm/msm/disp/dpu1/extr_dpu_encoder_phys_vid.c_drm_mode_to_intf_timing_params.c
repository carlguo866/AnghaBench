
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intf_timing_params {scalar_t__ width; scalar_t__ height; scalar_t__ xres; scalar_t__ yres; scalar_t__ h_back_porch; scalar_t__ h_front_porch; scalar_t__ v_back_porch; scalar_t__ v_front_porch; scalar_t__ hsync_pulse_width; scalar_t__ vsync_pulse_width; int hsync_polarity; int vsync_polarity; int underflow_clr; int hsync_skew; scalar_t__ border_clr; } ;
struct drm_display_mode {scalar_t__ htotal; scalar_t__ hsync_end; scalar_t__ hsync_start; scalar_t__ hdisplay; scalar_t__ vtotal; scalar_t__ vsync_end; scalar_t__ vsync_start; scalar_t__ vdisplay; int flags; int hskew; } ;
struct dpu_encoder_phys {TYPE_2__* hw_intf; } ;
struct TYPE_4__ {TYPE_1__* cap; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 int DPU_ERROR (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_NVSYNC ;
 scalar_t__ INTF_DSI ;
 int memset (struct intf_timing_params*,int ,int) ;

__attribute__((used)) static void drm_mode_to_intf_timing_params(
  const struct dpu_encoder_phys *phys_enc,
  const struct drm_display_mode *mode,
  struct intf_timing_params *timing)
{
 memset(timing, 0, sizeof(*timing));

 if ((mode->htotal < mode->hsync_end)
   || (mode->hsync_start < mode->hdisplay)
   || (mode->vtotal < mode->vsync_end)
   || (mode->vsync_start < mode->vdisplay)
   || (mode->hsync_end < mode->hsync_start)
   || (mode->vsync_end < mode->vsync_start)) {
  DPU_ERROR(
      "invalid params - hstart:%d,hend:%d,htot:%d,hdisplay:%d\n",
    mode->hsync_start, mode->hsync_end,
    mode->htotal, mode->hdisplay);
  DPU_ERROR("vstart:%d,vend:%d,vtot:%d,vdisplay:%d\n",
    mode->vsync_start, mode->vsync_end,
    mode->vtotal, mode->vdisplay);
  return;
 }
 timing->width = mode->hdisplay;
 timing->height = mode->vdisplay;
 timing->xres = timing->width;
 timing->yres = timing->height;
 timing->h_back_porch = mode->htotal - mode->hsync_end;
 timing->h_front_porch = mode->hsync_start - mode->hdisplay;
 timing->v_back_porch = mode->vtotal - mode->vsync_end;
 timing->v_front_porch = mode->vsync_start - mode->vdisplay;
 timing->hsync_pulse_width = mode->hsync_end - mode->hsync_start;
 timing->vsync_pulse_width = mode->vsync_end - mode->vsync_start;
 timing->hsync_polarity = (mode->flags & DRM_MODE_FLAG_NHSYNC) ? 1 : 0;
 timing->vsync_polarity = (mode->flags & DRM_MODE_FLAG_NVSYNC) ? 1 : 0;
 timing->border_clr = 0;
 timing->underflow_clr = 0xff;
 timing->hsync_skew = mode->hskew;


 if (phys_enc->hw_intf->cap->type == INTF_DSI) {
  timing->hsync_polarity = 0;
  timing->vsync_polarity = 0;
 }
}

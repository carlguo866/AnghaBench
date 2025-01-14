
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_overlay {TYPE_1__* crtc; } ;
struct intel_crtc_state {scalar_t__ pipe_src_w; scalar_t__ pipe_src_h; } ;
struct drm_intel_overlay_put_image {scalar_t__ dst_x; scalar_t__ dst_width; scalar_t__ dst_y; scalar_t__ dst_height; } ;
struct TYPE_2__ {struct intel_crtc_state* config; } ;


 int EINVAL ;

__attribute__((used)) static int check_overlay_dst(struct intel_overlay *overlay,
        struct drm_intel_overlay_put_image *rec)
{
 const struct intel_crtc_state *pipe_config =
  overlay->crtc->config;

 if (rec->dst_x < pipe_config->pipe_src_w &&
     rec->dst_x + rec->dst_width <= pipe_config->pipe_src_w &&
     rec->dst_y < pipe_config->pipe_src_h &&
     rec->dst_y + rec->dst_height <= pipe_config->pipe_src_h)
  return 0;
 else
  return -EINVAL;
}

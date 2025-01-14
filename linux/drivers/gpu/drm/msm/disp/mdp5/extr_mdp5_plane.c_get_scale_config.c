
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int pixel_format; } ;
struct mdp_format {int is_yuv; TYPE_1__ base; } ;
struct drm_format_info {int hsub; int vsub; } ;


 int COND (int,int ) ;
 int MDP5_PIPE_SCALE_CONFIG_SCALEX_EN ;
 int MDP5_PIPE_SCALE_CONFIG_SCALEX_FILTER_COMP_0 (int) ;
 int MDP5_PIPE_SCALE_CONFIG_SCALEX_FILTER_COMP_1_2 (int) ;
 int MDP5_PIPE_SCALE_CONFIG_SCALEX_FILTER_COMP_3 (int) ;
 int MDP5_PIPE_SCALE_CONFIG_SCALEY_EN ;
 int MDP5_PIPE_SCALE_CONFIG_SCALEY_FILTER_COMP_0 (int) ;
 int MDP5_PIPE_SCALE_CONFIG_SCALEY_FILTER_COMP_1_2 (int) ;
 int MDP5_PIPE_SCALE_CONFIG_SCALEY_FILTER_COMP_3 (int) ;
 int SCALE_FILTER_BIL ;
 int SCALE_FILTER_PCMN ;
 struct drm_format_info* drm_format_info (int ) ;

__attribute__((used)) static uint32_t get_scale_config(const struct mdp_format *format,
  uint32_t src, uint32_t dst, bool horz)
{
 const struct drm_format_info *info = drm_format_info(format->base.pixel_format);
 bool scaling = format->is_yuv ? 1 : (src != dst);
 uint32_t sub;
 uint32_t ya_filter, uv_filter;
 bool yuv = format->is_yuv;

 if (!scaling)
  return 0;

 if (yuv) {
  sub = horz ? info->hsub : info->vsub;
  uv_filter = ((src / sub) <= dst) ?
       SCALE_FILTER_BIL : SCALE_FILTER_PCMN;
 }
 ya_filter = (src <= dst) ? SCALE_FILTER_BIL : SCALE_FILTER_PCMN;

 if (horz)
  return MDP5_PIPE_SCALE_CONFIG_SCALEX_EN |
   MDP5_PIPE_SCALE_CONFIG_SCALEX_FILTER_COMP_0(ya_filter) |
   MDP5_PIPE_SCALE_CONFIG_SCALEX_FILTER_COMP_3(ya_filter) |
   COND(yuv, MDP5_PIPE_SCALE_CONFIG_SCALEX_FILTER_COMP_1_2(uv_filter));
 else
  return MDP5_PIPE_SCALE_CONFIG_SCALEY_EN |
   MDP5_PIPE_SCALE_CONFIG_SCALEY_FILTER_COMP_0(ya_filter) |
   MDP5_PIPE_SCALE_CONFIG_SCALEY_FILTER_COMP_3(ya_filter) |
   COND(yuv, MDP5_PIPE_SCALE_CONFIG_SCALEY_FILTER_COMP_1_2(uv_filter));
}

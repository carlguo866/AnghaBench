
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int u32 ;
struct drm_format_info {int num_planes; } ;


 scalar_t__ DRM_FORMAT_MOD_ALLWINNER_TILED ;
 int EINVAL ;
 int SUN4I_FRONTEND_INPUT_FMT_DATA_MOD_MB32_PLANAR ;
 int SUN4I_FRONTEND_INPUT_FMT_DATA_MOD_MB32_SEMIPLANAR ;
 int SUN4I_FRONTEND_INPUT_FMT_DATA_MOD_PACKED ;
 int SUN4I_FRONTEND_INPUT_FMT_DATA_MOD_PLANAR ;
 int SUN4I_FRONTEND_INPUT_FMT_DATA_MOD_SEMIPLANAR ;

__attribute__((used)) static int
sun4i_frontend_drm_format_to_input_mode(const struct drm_format_info *format,
     uint64_t modifier, u32 *val)
{
 bool tiled = (modifier == DRM_FORMAT_MOD_ALLWINNER_TILED);

 switch (format->num_planes) {
 case 1:
  *val = SUN4I_FRONTEND_INPUT_FMT_DATA_MOD_PACKED;
  return 0;

 case 2:
  *val = tiled ? SUN4I_FRONTEND_INPUT_FMT_DATA_MOD_MB32_SEMIPLANAR
        : SUN4I_FRONTEND_INPUT_FMT_DATA_MOD_SEMIPLANAR;
  return 0;

 case 3:
  *val = tiled ? SUN4I_FRONTEND_INPUT_FMT_DATA_MOD_MB32_PLANAR
        : SUN4I_FRONTEND_INPUT_FMT_DATA_MOD_PLANAR;
  return 0;

 default:
  return -EINVAL;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct drm_plane {unsigned int format_count; scalar_t__* format_types; unsigned int modifier_count; scalar_t__* modifiers; TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* format_mod_supported ) (struct drm_plane*,scalar_t__,scalar_t__) ;} ;


 int EINVAL ;
 int stub1 (struct drm_plane*,scalar_t__,scalar_t__) ;

int drm_plane_check_pixel_format(struct drm_plane *plane,
     u32 format, u64 modifier)
{
 unsigned int i;

 for (i = 0; i < plane->format_count; i++) {
  if (format == plane->format_types[i])
   break;
 }
 if (i == plane->format_count)
  return -EINVAL;

 if (plane->funcs->format_mod_supported) {
  if (!plane->funcs->format_mod_supported(plane, format, modifier))
   return -EINVAL;
 } else {
  if (!plane->modifier_count)
   return 0;

  for (i = 0; i < plane->modifier_count; i++) {
   if (modifier == plane->modifiers[i])
    break;
  }
  if (i == plane->modifier_count)
   return -EINVAL;
 }

 return 0;
}

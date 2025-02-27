
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int hdisplay; int vdisplay; } ;
struct drm_device {int dummy; } ;


 struct drm_display_mode* drm_dmt_modes ;
 struct drm_display_mode* drm_mode_duplicate (struct drm_device*,struct drm_display_mode const*) ;
 int drm_mode_vrefresh (struct drm_display_mode const*) ;
 int drm_num_dmt_modes ;
 int mode_is_rb (struct drm_display_mode const*) ;

struct drm_display_mode *drm_mode_find_dmt(struct drm_device *dev,
        int hsize, int vsize, int fresh,
        bool rb)
{
 int i;

 for (i = 0; i < drm_num_dmt_modes; i++) {
  const struct drm_display_mode *ptr = &drm_dmt_modes[i];
  if (hsize != ptr->hdisplay)
   continue;
  if (vsize != ptr->vdisplay)
   continue;
  if (fresh != drm_mode_vrefresh(ptr))
   continue;
  if (rb != mode_is_rb(ptr))
   continue;

  return drm_mode_duplicate(dev, ptr);
 }

 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct edid {int revision; } ;
struct drm_display_mode {int dummy; } ;


 int drm_mode_vrefresh (struct drm_display_mode const*) ;

__attribute__((used)) static bool
mode_in_vsync_range(const struct drm_display_mode *mode,
      struct edid *edid, u8 *t)
{
 int vsync, vmin, vmax;

 vmin = t[5];
 if (edid->revision >= 4)
     vmin += ((t[4] & 0x01) ? 255 : 0);
 vmax = t[6];
 if (edid->revision >= 4)
     vmax += ((t[4] & 0x02) ? 255 : 0);
 vsync = drm_mode_vrefresh(mode);

 return (vsync <= vmax && vsync >= vmin);
}

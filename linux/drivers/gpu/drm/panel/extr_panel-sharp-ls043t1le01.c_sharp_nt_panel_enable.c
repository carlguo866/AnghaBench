
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sharp_nt_panel {int enabled; int backlight; } ;
struct drm_panel {int dummy; } ;


 int backlight_enable (int ) ;
 struct sharp_nt_panel* to_sharp_nt_panel (struct drm_panel*) ;

__attribute__((used)) static int sharp_nt_panel_enable(struct drm_panel *panel)
{
 struct sharp_nt_panel *sharp_nt = to_sharp_nt_panel(panel);

 if (sharp_nt->enabled)
  return 0;

 backlight_enable(sharp_nt->backlight);

 sharp_nt->enabled = 1;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wuxga_nt_panel {int enabled; TYPE_2__* backlight; } ;
struct drm_panel {int dummy; } ;
struct TYPE_3__ {int state; int power; } ;
struct TYPE_4__ {TYPE_1__ props; } ;


 int BL_CORE_FBBLANK ;
 int FB_BLANK_UNBLANK ;
 int backlight_update_status (TYPE_2__*) ;
 struct wuxga_nt_panel* to_wuxga_nt_panel (struct drm_panel*) ;

__attribute__((used)) static int wuxga_nt_panel_enable(struct drm_panel *panel)
{
 struct wuxga_nt_panel *wuxga_nt = to_wuxga_nt_panel(panel);

 if (wuxga_nt->enabled)
  return 0;

 if (wuxga_nt->backlight) {
  wuxga_nt->backlight->props.power = FB_BLANK_UNBLANK;
  wuxga_nt->backlight->props.state &= ~BL_CORE_FBBLANK;
  backlight_update_status(wuxga_nt->backlight);
 }

 wuxga_nt->enabled = 1;

 return 0;
}

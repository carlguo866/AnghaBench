
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_parallel_display {int panel; } ;
struct drm_encoder {int dummy; } ;


 int drm_panel_disable (int ) ;
 int drm_panel_unprepare (int ) ;
 struct imx_parallel_display* enc_to_imxpd (struct drm_encoder*) ;

__attribute__((used)) static void imx_pd_encoder_disable(struct drm_encoder *encoder)
{
 struct imx_parallel_display *imxpd = enc_to_imxpd(encoder);

 drm_panel_disable(imxpd->panel);
 drm_panel_unprepare(imxpd->panel);
}

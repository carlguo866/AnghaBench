
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;


 int drm_encoder_cleanup (struct drm_encoder*) ;

__attribute__((used)) static void oaktrail_hdmi_enc_destroy(struct drm_encoder *encoder)
{
 drm_encoder_cleanup(encoder);
}

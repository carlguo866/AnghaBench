
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int min_width; int min_height; int max_width; int max_height; int preferred_depth; int * funcs; scalar_t__ prefer_shadow; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int drm_mode_config_init (struct drm_device*) ;
 int udl_connector_init (struct drm_device*,struct drm_encoder*) ;
 int udl_crtc_init (struct drm_device*) ;
 struct drm_encoder* udl_encoder_init (struct drm_device*) ;
 int udl_mode_funcs ;

int udl_modeset_init(struct drm_device *dev)
{
 struct drm_encoder *encoder;
 drm_mode_config_init(dev);

 dev->mode_config.min_width = 640;
 dev->mode_config.min_height = 480;

 dev->mode_config.max_width = 2048;
 dev->mode_config.max_height = 2048;

 dev->mode_config.prefer_shadow = 0;
 dev->mode_config.preferred_depth = 24;

 dev->mode_config.funcs = &udl_mode_funcs;

 udl_crtc_init(dev);

 encoder = udl_encoder_init(dev);

 udl_connector_init(dev, encoder);

 return 0;
}

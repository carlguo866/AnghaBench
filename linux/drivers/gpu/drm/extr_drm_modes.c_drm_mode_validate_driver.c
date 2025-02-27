
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_display_mode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct drm_device {TYPE_2__ mode_config; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;
struct TYPE_3__ {int (* mode_valid ) (struct drm_device*,struct drm_display_mode const*) ;} ;


 int MODE_OK ;
 int drm_mode_validate_basic (struct drm_display_mode const*) ;
 int stub1 (struct drm_device*,struct drm_display_mode const*) ;

enum drm_mode_status
drm_mode_validate_driver(struct drm_device *dev,
   const struct drm_display_mode *mode)
{
 enum drm_mode_status status;

 status = drm_mode_validate_basic(mode);
 if (status != MODE_OK)
  return status;

 if (dev->mode_config.funcs->mode_valid)
  return dev->mode_config.funcs->mode_valid(dev, mode);
 else
  return MODE_OK;
}

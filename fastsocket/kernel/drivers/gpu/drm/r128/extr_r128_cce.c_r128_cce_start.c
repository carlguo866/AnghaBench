
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_4__ {scalar_t__ cce_mode; scalar_t__ cce_running; } ;
typedef TYPE_1__ drm_r128_private_t ;


 int DEV_INIT_TEST_WITH_RETURN (TYPE_1__*) ;
 int DRM_DEBUG (char*) ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 scalar_t__ R128_PM4_NONPM4 ;
 int r128_do_cce_start (TYPE_1__*) ;

int r128_cce_start(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_r128_private_t *dev_priv = dev->dev_private;
 DRM_DEBUG("\n");

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 DEV_INIT_TEST_WITH_RETURN(dev_priv);

 if (dev_priv->cce_running || dev_priv->cce_mode == R128_PM4_NONPM4) {
  DRM_DEBUG("while CCE running\n");
  return 0;
 }

 r128_do_cce_start(dev_priv);

 return 0;
}

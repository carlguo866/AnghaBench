
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_drm_private {struct drm_device* drm; } ;
struct drm_device {struct mtk_drm_private* dev_private; } ;
struct device {int dummy; } ;


 int DRM_ERROR (char*,int) ;
 scalar_t__ IS_ERR (struct drm_device*) ;
 int PTR_ERR (struct drm_device*) ;
 struct mtk_drm_private* dev_get_drvdata (struct device*) ;
 struct drm_device* drm_dev_alloc (int *,struct device*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_register (struct drm_device*,int ) ;
 int drm_fbdev_generic_setup (struct drm_device*,int) ;
 int mtk_drm_driver ;
 int mtk_drm_kms_deinit (struct drm_device*) ;
 int mtk_drm_kms_init (struct drm_device*) ;

__attribute__((used)) static int mtk_drm_bind(struct device *dev)
{
 struct mtk_drm_private *private = dev_get_drvdata(dev);
 struct drm_device *drm;
 int ret;

 drm = drm_dev_alloc(&mtk_drm_driver, dev);
 if (IS_ERR(drm))
  return PTR_ERR(drm);

 drm->dev_private = private;
 private->drm = drm;

 ret = mtk_drm_kms_init(drm);
 if (ret < 0)
  goto err_free;

 ret = drm_dev_register(drm, 0);
 if (ret < 0)
  goto err_deinit;

 ret = drm_fbdev_generic_setup(drm, 32);
 if (ret)
  DRM_ERROR("Failed to initialize fbdev: %d\n", ret);

 return 0;

err_deinit:
 mtk_drm_kms_deinit(drm);
err_free:
 drm_dev_put(drm);
 return ret;
}

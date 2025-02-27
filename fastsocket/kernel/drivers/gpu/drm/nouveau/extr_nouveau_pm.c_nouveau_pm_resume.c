
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_pm_level {int dummy; } ;
struct nouveau_pm {struct nouveau_pm_level boot; struct nouveau_pm_level* cur; } ;
struct drm_device {int dummy; } ;


 struct nouveau_pm* nouveau_pm (struct drm_device*) ;
 int nouveau_pm_perflvl_set (struct drm_device*,struct nouveau_pm_level*) ;

void
nouveau_pm_resume(struct drm_device *dev)
{
 struct nouveau_pm *pm = nouveau_pm(dev);
 struct nouveau_pm_level *perflvl;

 if (!pm->cur || pm->cur == &pm->boot)
  return;

 perflvl = pm->cur;
 pm->cur = &pm->boot;
 nouveau_pm_perflvl_set(dev, perflvl);
}

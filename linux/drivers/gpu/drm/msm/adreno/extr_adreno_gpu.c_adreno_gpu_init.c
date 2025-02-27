
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct adreno_platform_config* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct msm_gpu_config {char* ioname; int va_start; int va_end; int nr_rings; int member_0; } ;
struct msm_gpu {int dummy; } ;
struct drm_device {int dummy; } ;
struct adreno_platform_config {int rev; } ;
struct adreno_gpu_funcs {int base; } ;
struct adreno_gpu {TYPE_4__* info; struct msm_gpu base; int rev; int revn; int gmem; struct adreno_gpu_funcs const* funcs; } ;
struct TYPE_7__ {int name; int inactive_period; int revn; int gmem; } ;


 int SZ_16M ;
 int SZ_64K ;
 int adreno_get_pwrlevels (TYPE_1__*,struct msm_gpu*) ;
 TYPE_4__* adreno_info (int ) ;
 scalar_t__ adreno_is_a2xx (struct adreno_gpu*) ;
 int msm_gpu_init (struct drm_device*,struct platform_device*,struct msm_gpu*,int *,int ,struct msm_gpu_config*) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int pm_runtime_set_autosuspend_delay (TYPE_1__*,int ) ;
 int pm_runtime_use_autosuspend (TYPE_1__*) ;

int adreno_gpu_init(struct drm_device *drm, struct platform_device *pdev,
  struct adreno_gpu *adreno_gpu,
  const struct adreno_gpu_funcs *funcs, int nr_rings)
{
 struct adreno_platform_config *config = pdev->dev.platform_data;
 struct msm_gpu_config adreno_gpu_config = { 0 };
 struct msm_gpu *gpu = &adreno_gpu->base;

 adreno_gpu->funcs = funcs;
 adreno_gpu->info = adreno_info(config->rev);
 adreno_gpu->gmem = adreno_gpu->info->gmem;
 adreno_gpu->revn = adreno_gpu->info->revn;
 adreno_gpu->rev = config->rev;

 adreno_gpu_config.ioname = "kgsl_3d0_reg_memory";

 adreno_gpu_config.va_start = SZ_16M;
 adreno_gpu_config.va_end = 0xffffffff;

 if (adreno_is_a2xx(adreno_gpu))
  adreno_gpu_config.va_end = SZ_16M + 0xfff * SZ_64K;

 adreno_gpu_config.nr_rings = nr_rings;

 adreno_get_pwrlevels(&pdev->dev, gpu);

 pm_runtime_set_autosuspend_delay(&pdev->dev,
  adreno_gpu->info->inactive_period);
 pm_runtime_use_autosuspend(&pdev->dev);
 pm_runtime_enable(&pdev->dev);

 return msm_gpu_init(drm, pdev, &adreno_gpu->base, &funcs->base,
   adreno_gpu->info->name, &adreno_gpu_config);
}

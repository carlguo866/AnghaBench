
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct msm_gpu {int aspace; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct adreno_gpu {TYPE_1__** fw; } ;
struct a5xx_gpu {int gpmu_dwords; scalar_t__ gpmu_bo; int gpmu_iova; } ;
struct TYPE_2__ {int size; scalar_t__ data; } ;


 size_t ADRENO_FW_GPMU ;
 scalar_t__ IS_ERR (unsigned int*) ;
 int MSM_BO_GPU_READONLY ;
 int MSM_BO_UNCACHED ;
 unsigned int PKT4 (int,int) ;
 int REG_A5XX_GPMU_INST_RAM_BASE ;
 unsigned int TYPE4_MAX_PAYLOAD ;
 unsigned int* msm_gem_kernel_new_locked (struct drm_device*,int,int,int ,scalar_t__*,int *) ;
 int msm_gem_object_set_name (scalar_t__,char*) ;
 int msm_gem_put_vaddr (scalar_t__) ;
 struct a5xx_gpu* to_a5xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

void a5xx_gpmu_ucode_init(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a5xx_gpu *a5xx_gpu = to_a5xx_gpu(adreno_gpu);
 struct drm_device *drm = gpu->dev;
 uint32_t dwords = 0, offset = 0, bosize;
 unsigned int *data, *ptr, *cmds;
 unsigned int cmds_size;

 if (a5xx_gpu->gpmu_bo)
  return;

 data = (unsigned int *) adreno_gpu->fw[ADRENO_FW_GPMU]->data;







 if (adreno_gpu->fw[ADRENO_FW_GPMU]->size < 8 ||
  (data[0] < 2) || (data[0] >=
   (adreno_gpu->fw[ADRENO_FW_GPMU]->size >> 2)))
  return;


 if (data[1] != 2)
  return;

 cmds = data + data[2] + 3;
 cmds_size = data[0] - data[2] - 2;





 bosize = (cmds_size + (cmds_size / TYPE4_MAX_PAYLOAD) + 1) << 2;

 ptr = msm_gem_kernel_new_locked(drm, bosize,
  MSM_BO_UNCACHED | MSM_BO_GPU_READONLY, gpu->aspace,
  &a5xx_gpu->gpmu_bo, &a5xx_gpu->gpmu_iova);
 if (IS_ERR(ptr))
  return;

 msm_gem_object_set_name(a5xx_gpu->gpmu_bo, "gpmufw");

 while (cmds_size > 0) {
  int i;
  uint32_t _size = cmds_size > TYPE4_MAX_PAYLOAD ?
   TYPE4_MAX_PAYLOAD : cmds_size;

  ptr[dwords++] = PKT4(REG_A5XX_GPMU_INST_RAM_BASE + offset,
   _size);

  for (i = 0; i < _size; i++)
   ptr[dwords++] = *cmds++;

  offset += _size;
  cmds_size -= _size;
 }

 msm_gem_put_vaddr(a5xx_gpu->gpmu_bo);
 a5xx_gpu->gpmu_dwords = dwords;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct msm_gpu {int num_perfcntrs; scalar_t__* last_cntrs; TYPE_1__* perfcntrs; } ;
struct TYPE_2__ {int sample_reg; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ gpu_read (struct msm_gpu*,int ) ;
 int min (scalar_t__,int) ;

__attribute__((used)) static int update_hw_cntrs(struct msm_gpu *gpu, uint32_t ncntrs, uint32_t *cntrs)
{
 uint32_t current_cntrs[ARRAY_SIZE(gpu->last_cntrs)];
 int i, n = min(ncntrs, gpu->num_perfcntrs);


 for (i = 0; i < gpu->num_perfcntrs; i++)
  current_cntrs[i] = gpu_read(gpu, gpu->perfcntrs[i].sample_reg);


 for (i = 0; i < n; i++)
  cntrs[i] = current_cntrs[i] - gpu->last_cntrs[i];


 for (i = 0; i < gpu->num_perfcntrs; i++)
  gpu->last_cntrs[i] = current_cntrs[i];

 return n;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;



__attribute__((used)) static const char *amdkfd_fence_get_driver_name(struct dma_fence *f)
{
 return "amdgpu_amdkfd_fence";
}

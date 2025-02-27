
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct dma_fence {int dummy; } ;
struct amdgpu_ring {TYPE_2__* adev; } ;
struct amdgpu_job {struct amdgpu_ib* ibs; } ;
struct amdgpu_ib {int length_dw; int* ptr; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_3__ {int fw_version; } ;
struct TYPE_4__ {TYPE_1__ vce; } ;


 int amdgpu_bo_gpu_offset (struct amdgpu_bo*) ;
 int amdgpu_job_alloc_with_ib (TYPE_2__*,unsigned int const,struct amdgpu_job**) ;
 int amdgpu_job_free (struct amdgpu_job*) ;
 int amdgpu_job_submit_direct (struct amdgpu_job*,struct amdgpu_ring*,struct dma_fence**) ;
 struct dma_fence* dma_fence_get (struct dma_fence*) ;
 int dma_fence_put (struct dma_fence*) ;
 int upper_32_bits (int) ;

int amdgpu_vce_get_create_msg(struct amdgpu_ring *ring, uint32_t handle,
         struct amdgpu_bo *bo,
         struct dma_fence **fence)
{
 const unsigned ib_size_dw = 1024;
 struct amdgpu_job *job;
 struct amdgpu_ib *ib;
 struct dma_fence *f = ((void*)0);
 uint64_t addr;
 int i, r;

 r = amdgpu_job_alloc_with_ib(ring->adev, ib_size_dw * 4, &job);
 if (r)
  return r;

 ib = &job->ibs[0];

 addr = amdgpu_bo_gpu_offset(bo);


 ib->length_dw = 0;
 ib->ptr[ib->length_dw++] = 0x0000000c;
 ib->ptr[ib->length_dw++] = 0x00000001;
 ib->ptr[ib->length_dw++] = handle;

 if ((ring->adev->vce.fw_version >> 24) >= 52)
  ib->ptr[ib->length_dw++] = 0x00000040;
 else
  ib->ptr[ib->length_dw++] = 0x00000030;
 ib->ptr[ib->length_dw++] = 0x01000001;
 ib->ptr[ib->length_dw++] = 0x00000000;
 ib->ptr[ib->length_dw++] = 0x00000042;
 ib->ptr[ib->length_dw++] = 0x0000000a;
 ib->ptr[ib->length_dw++] = 0x00000001;
 ib->ptr[ib->length_dw++] = 0x00000080;
 ib->ptr[ib->length_dw++] = 0x00000060;
 ib->ptr[ib->length_dw++] = 0x00000100;
 ib->ptr[ib->length_dw++] = 0x00000100;
 ib->ptr[ib->length_dw++] = 0x0000000c;
 ib->ptr[ib->length_dw++] = 0x00000000;
 if ((ring->adev->vce.fw_version >> 24) >= 52) {
  ib->ptr[ib->length_dw++] = 0x00000000;
  ib->ptr[ib->length_dw++] = 0x00000000;
  ib->ptr[ib->length_dw++] = 0x00000000;
  ib->ptr[ib->length_dw++] = 0x00000000;
 }

 ib->ptr[ib->length_dw++] = 0x00000014;
 ib->ptr[ib->length_dw++] = 0x05000005;
 ib->ptr[ib->length_dw++] = upper_32_bits(addr);
 ib->ptr[ib->length_dw++] = addr;
 ib->ptr[ib->length_dw++] = 0x00000001;

 for (i = ib->length_dw; i < ib_size_dw; ++i)
  ib->ptr[i] = 0x0;

 r = amdgpu_job_submit_direct(job, ring, &f);
 if (r)
  goto err;

 if (fence)
  *fence = dma_fence_get(f);
 dma_fence_put(f);
 return 0;

err:
 amdgpu_job_free(job);
 return r;
}

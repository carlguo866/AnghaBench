
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int ready; } ;
struct amdgpu_ring {TYPE_4__ sched; } ;
struct TYPE_7__ {int num_instances; TYPE_1__* instance; } ;
struct TYPE_6__ {struct amdgpu_ring* buffer_funcs_ring; } ;
struct amdgpu_device {TYPE_3__ sdma; TYPE_2__ mman; } ;
struct TYPE_5__ {struct amdgpu_ring ring; } ;


 int IB_ENABLE ;
 int RB_ENABLE ;
 int REG_SET_FIELD (int ,int ,int ,int ) ;
 int RREG32 (int ) ;
 int SDMA0_GFX_IB_CNTL ;
 int SDMA0_GFX_RB_CNTL ;
 int WREG32 (int ,int ) ;
 int amdgpu_ttm_set_buffer_funcs_status (struct amdgpu_device*,int) ;
 int mmSDMA0_GFX_IB_CNTL ;
 int mmSDMA0_GFX_RB_CNTL ;
 int sdma_v5_0_get_reg_offset (struct amdgpu_device*,int,int ) ;

__attribute__((used)) static void sdma_v5_0_gfx_stop(struct amdgpu_device *adev)
{
 struct amdgpu_ring *sdma0 = &adev->sdma.instance[0].ring;
 struct amdgpu_ring *sdma1 = &adev->sdma.instance[1].ring;
 u32 rb_cntl, ib_cntl;
 int i;

 if ((adev->mman.buffer_funcs_ring == sdma0) ||
     (adev->mman.buffer_funcs_ring == sdma1))
  amdgpu_ttm_set_buffer_funcs_status(adev, 0);

 for (i = 0; i < adev->sdma.num_instances; i++) {
  rb_cntl = RREG32(sdma_v5_0_get_reg_offset(adev, i, mmSDMA0_GFX_RB_CNTL));
  rb_cntl = REG_SET_FIELD(rb_cntl, SDMA0_GFX_RB_CNTL, RB_ENABLE, 0);
  WREG32(sdma_v5_0_get_reg_offset(adev, i, mmSDMA0_GFX_RB_CNTL), rb_cntl);
  ib_cntl = RREG32(sdma_v5_0_get_reg_offset(adev, i, mmSDMA0_GFX_IB_CNTL));
  ib_cntl = REG_SET_FIELD(ib_cntl, SDMA0_GFX_IB_CNTL, IB_ENABLE, 0);
  WREG32(sdma_v5_0_get_reg_offset(adev, i, mmSDMA0_GFX_IB_CNTL), ib_cntl);
 }

 sdma0->sched.ready = 0;
 sdma1->sched.ready = 0;
}

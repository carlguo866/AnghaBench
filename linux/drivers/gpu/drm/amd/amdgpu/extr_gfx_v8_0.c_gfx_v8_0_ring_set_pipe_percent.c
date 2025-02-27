
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_ring {int me; int pipe; struct amdgpu_device* adev; } ;
struct TYPE_3__ {int num_pipe_per_mec; } ;
struct TYPE_4__ {TYPE_1__ mec; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32 (int) ;
 int SPI_WCL_PIPE_PERCENT_GFX ;
 int SPI_WCL_PIPE_PERCENT_GFX__VALUE_MASK ;
 int VALUE ;
 int WREG32 (int,int) ;
 int mmSPI_WCL_PIPE_PERCENT_GFX ;

__attribute__((used)) static void gfx_v8_0_ring_set_pipe_percent(struct amdgpu_ring *ring,
        bool acquire)
{
 struct amdgpu_device *adev = ring->adev;
 int pipe_num, tmp, reg;
 int pipe_percent = acquire ? SPI_WCL_PIPE_PERCENT_GFX__VALUE_MASK : 0x1;

 pipe_num = ring->me * adev->gfx.mec.num_pipe_per_mec + ring->pipe;


 if (ring->me > 0)
  pipe_num -= 2;

 reg = mmSPI_WCL_PIPE_PERCENT_GFX + pipe_num;
 tmp = RREG32(reg);
 tmp = REG_SET_FIELD(tmp, SPI_WCL_PIPE_PERCENT_GFX, VALUE, pipe_percent);
 WREG32(reg, tmp);
}

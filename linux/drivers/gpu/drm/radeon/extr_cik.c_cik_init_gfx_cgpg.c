
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int clear_state_size; int* reg_list; int reg_list_size; int save_restore_gpu_addr; int cp_table_gpu_addr; int clear_state_gpu_addr; scalar_t__ cs_data; } ;
struct radeon_device {TYPE_1__ rlc; } ;


 int CP_RB_WPTR_POLL_CNTL ;
 int GFX_PG_SRC ;
 int GRBM_REG_SGIT (int) ;
 int GRBM_REG_SGIT_MASK ;
 int IDLE_POLL_COUNT (int) ;
 int IDLE_POLL_COUNT_MASK ;
 int RLC_AUTO_PG_CTRL ;
 int RLC_CLEAR_STATE_DESCRIPTOR_OFFSET ;
 int RLC_CP_TABLE_RESTORE ;
 int RLC_GPM_SCRATCH_ADDR ;
 int RLC_GPM_SCRATCH_DATA ;
 int RLC_PG_CNTL ;
 int RLC_PG_DELAY ;
 int RLC_PG_DELAY_2 ;
 int RLC_SAVE_AND_RESTORE_BASE ;
 int RLC_SAVE_AND_RESTORE_STARTING_OFFSET ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void cik_init_gfx_cgpg(struct radeon_device *rdev)
{
 u32 data, orig;
 u32 i;

 if (rdev->rlc.cs_data) {
  WREG32(RLC_GPM_SCRATCH_ADDR, RLC_CLEAR_STATE_DESCRIPTOR_OFFSET);
  WREG32(RLC_GPM_SCRATCH_DATA, upper_32_bits(rdev->rlc.clear_state_gpu_addr));
  WREG32(RLC_GPM_SCRATCH_DATA, lower_32_bits(rdev->rlc.clear_state_gpu_addr));
  WREG32(RLC_GPM_SCRATCH_DATA, rdev->rlc.clear_state_size);
 } else {
  WREG32(RLC_GPM_SCRATCH_ADDR, RLC_CLEAR_STATE_DESCRIPTOR_OFFSET);
  for (i = 0; i < 3; i++)
   WREG32(RLC_GPM_SCRATCH_DATA, 0);
 }
 if (rdev->rlc.reg_list) {
  WREG32(RLC_GPM_SCRATCH_ADDR, RLC_SAVE_AND_RESTORE_STARTING_OFFSET);
  for (i = 0; i < rdev->rlc.reg_list_size; i++)
   WREG32(RLC_GPM_SCRATCH_DATA, rdev->rlc.reg_list[i]);
 }

 orig = data = RREG32(RLC_PG_CNTL);
 data |= GFX_PG_SRC;
 if (orig != data)
  WREG32(RLC_PG_CNTL, data);

 WREG32(RLC_SAVE_AND_RESTORE_BASE, rdev->rlc.save_restore_gpu_addr >> 8);
 WREG32(RLC_CP_TABLE_RESTORE, rdev->rlc.cp_table_gpu_addr >> 8);

 data = RREG32(CP_RB_WPTR_POLL_CNTL);
 data &= ~IDLE_POLL_COUNT_MASK;
 data |= IDLE_POLL_COUNT(0x60);
 WREG32(CP_RB_WPTR_POLL_CNTL, data);

 data = 0x10101010;
 WREG32(RLC_PG_DELAY, data);

 data = RREG32(RLC_PG_DELAY_2);
 data &= ~0xff;
 data |= 0x3;
 WREG32(RLC_PG_DELAY_2, data);

 data = RREG32(RLC_AUTO_PG_CTRL);
 data &= ~GRBM_REG_SGIT_MASK;
 data |= GRBM_REG_SGIT(0x700);
 WREG32(RLC_AUTO_PG_CTRL, data);

}

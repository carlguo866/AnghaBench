
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_mixer {struct dpu_hw_blk_reg_map hw; } ;


 int BIT (int) ;
 int DPU_REG_READ (struct dpu_hw_blk_reg_map*,int ) ;
 int DPU_REG_WRITE (struct dpu_hw_blk_reg_map*,int ,int) ;
 int LM_OP_MODE ;

__attribute__((used)) static void dpu_hw_lm_setup_color3(struct dpu_hw_mixer *ctx,
 uint32_t mixer_op_mode)
{
 struct dpu_hw_blk_reg_map *c = &ctx->hw;
 int op_mode;


 op_mode = DPU_REG_READ(c, LM_OP_MODE);

 op_mode = (op_mode & (BIT(31) | BIT(30))) | mixer_op_mode;

 DPU_REG_WRITE(c, LM_OP_MODE, op_mode);
}

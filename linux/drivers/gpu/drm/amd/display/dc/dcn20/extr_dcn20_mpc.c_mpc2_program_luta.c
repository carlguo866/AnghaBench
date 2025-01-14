
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfer_func_reg {void* region_end; void* region_start; void* start_end_cntl2_r; void* start_end_cntl1_r; void* start_end_cntl2_g; void* start_end_cntl1_g; void* start_end_cntl2_b; void* start_end_cntl1_b; void* start_slope_cntl_r; void* start_slope_cntl_g; void* start_slope_cntl_b; void* start_cntl_r; void* start_cntl_g; void* start_cntl_b; } ;
struct pwl_params {int dummy; } ;
struct mpc {int dummy; } ;
struct TYPE_2__ {int ctx; } ;
struct dcn20_mpc {TYPE_1__ base; } ;


 int * MPCC_OGAM_RAMA_END_CNTL1_B ;
 int * MPCC_OGAM_RAMA_END_CNTL1_G ;
 int * MPCC_OGAM_RAMA_END_CNTL1_R ;
 int * MPCC_OGAM_RAMA_END_CNTL2_B ;
 int * MPCC_OGAM_RAMA_END_CNTL2_G ;
 int * MPCC_OGAM_RAMA_END_CNTL2_R ;
 int * MPCC_OGAM_RAMA_REGION_0_1 ;
 int * MPCC_OGAM_RAMA_REGION_32_33 ;
 int * MPCC_OGAM_RAMA_SLOPE_CNTL_B ;
 int * MPCC_OGAM_RAMA_SLOPE_CNTL_G ;
 int * MPCC_OGAM_RAMA_SLOPE_CNTL_R ;
 int * MPCC_OGAM_RAMA_START_CNTL_B ;
 int * MPCC_OGAM_RAMA_START_CNTL_G ;
 int * MPCC_OGAM_RAMA_START_CNTL_R ;
 void* REG (int ) ;
 struct dcn20_mpc* TO_DCN20_MPC (struct mpc*) ;
 int cm_helper_program_xfer_func (int ,struct pwl_params const*,struct xfer_func_reg*) ;
 int mpc2_ogam_get_reg_field (struct mpc*,struct xfer_func_reg*) ;

__attribute__((used)) static void mpc2_program_luta(struct mpc *mpc, int mpcc_id,
  const struct pwl_params *params)
{
 struct dcn20_mpc *mpc20 = TO_DCN20_MPC(mpc);
 struct xfer_func_reg gam_regs;

 mpc2_ogam_get_reg_field(mpc, &gam_regs);

 gam_regs.start_cntl_b = REG(MPCC_OGAM_RAMA_START_CNTL_B[mpcc_id]);
 gam_regs.start_cntl_g = REG(MPCC_OGAM_RAMA_START_CNTL_G[mpcc_id]);
 gam_regs.start_cntl_r = REG(MPCC_OGAM_RAMA_START_CNTL_R[mpcc_id]);
 gam_regs.start_slope_cntl_b = REG(MPCC_OGAM_RAMA_SLOPE_CNTL_B[mpcc_id]);
 gam_regs.start_slope_cntl_g = REG(MPCC_OGAM_RAMA_SLOPE_CNTL_G[mpcc_id]);
 gam_regs.start_slope_cntl_r = REG(MPCC_OGAM_RAMA_SLOPE_CNTL_R[mpcc_id]);
 gam_regs.start_end_cntl1_b = REG(MPCC_OGAM_RAMA_END_CNTL1_B[mpcc_id]);
 gam_regs.start_end_cntl2_b = REG(MPCC_OGAM_RAMA_END_CNTL2_B[mpcc_id]);
 gam_regs.start_end_cntl1_g = REG(MPCC_OGAM_RAMA_END_CNTL1_G[mpcc_id]);
 gam_regs.start_end_cntl2_g = REG(MPCC_OGAM_RAMA_END_CNTL2_G[mpcc_id]);
 gam_regs.start_end_cntl1_r = REG(MPCC_OGAM_RAMA_END_CNTL1_R[mpcc_id]);
 gam_regs.start_end_cntl2_r = REG(MPCC_OGAM_RAMA_END_CNTL2_R[mpcc_id]);
 gam_regs.region_start = REG(MPCC_OGAM_RAMA_REGION_0_1[mpcc_id]);
 gam_regs.region_end = REG(MPCC_OGAM_RAMA_REGION_32_33[mpcc_id]);

 cm_helper_program_xfer_func(mpc20->base.ctx, params, &gam_regs);

}

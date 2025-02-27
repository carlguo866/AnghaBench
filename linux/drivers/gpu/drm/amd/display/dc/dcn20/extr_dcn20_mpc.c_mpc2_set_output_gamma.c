
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pwl_params {int hw_points_num; int rgb_resulted; } ;
struct mpc {TYPE_3__* ctx; } ;
struct dcn20_mpc {int dummy; } ;
typedef enum dc_lut_mode { ____Placeholder_dc_lut_mode } dc_lut_mode ;
struct TYPE_6__ {TYPE_2__* dc; } ;
struct TYPE_4__ {scalar_t__ cm_in_bypass; } ;
struct TYPE_5__ {TYPE_1__ debug; } ;


 int LUT_BYPASS ;
 int LUT_RAM_A ;
 int LUT_RAM_B ;
 int * MPCC_OGAM_MODE ;
 int REG_SET (int ,int ,int *,int) ;
 struct dcn20_mpc* TO_DCN20_MPC (struct mpc*) ;
 int apply_DEDCN20_305_wa (struct mpc*,int,int,int) ;
 int mpc20_configure_ogam_lut (struct mpc*,int,int) ;
 int mpc20_get_ogam_current (struct mpc*,int) ;
 int mpc20_power_on_ogam_lut (struct mpc*,int,int) ;
 int mpc20_program_ogam_pwl (struct mpc*,int,int ,int ) ;
 int mpc2_program_luta (struct mpc*,int,struct pwl_params const*) ;
 int mpc2_program_lutb (struct mpc*,int,struct pwl_params const*) ;

void mpc2_set_output_gamma(
  struct mpc *mpc,
  int mpcc_id,
  const struct pwl_params *params)
{
 enum dc_lut_mode current_mode;
 enum dc_lut_mode next_mode;
 struct dcn20_mpc *mpc20 = TO_DCN20_MPC(mpc);

 if (mpc->ctx->dc->debug.cm_in_bypass) {
  REG_SET(MPCC_OGAM_MODE[mpcc_id], 0, MPCC_OGAM_MODE, 0);
  return;
 }

 if (params == ((void*)0)) {
  REG_SET(MPCC_OGAM_MODE[mpcc_id], 0, MPCC_OGAM_MODE, 0);
  return;
 }

 current_mode = mpc20_get_ogam_current(mpc, mpcc_id);
 if (current_mode == LUT_BYPASS || current_mode == LUT_RAM_A)
  next_mode = LUT_RAM_B;
 else
  next_mode = LUT_RAM_A;

 mpc20_power_on_ogam_lut(mpc, mpcc_id, 1);
 mpc20_configure_ogam_lut(mpc, mpcc_id, next_mode == LUT_RAM_A ? 1:0);

 if (next_mode == LUT_RAM_A)
  mpc2_program_luta(mpc, mpcc_id, params);
 else
  mpc2_program_lutb(mpc, mpcc_id, params);

 apply_DEDCN20_305_wa(mpc, mpcc_id, current_mode, next_mode);

 mpc20_program_ogam_pwl(
   mpc, mpcc_id, params->rgb_resulted, params->hw_points_num);

 REG_SET(MPCC_OGAM_MODE[mpcc_id], 0, MPCC_OGAM_MODE,
  next_mode == LUT_RAM_A ? 1:2);
}

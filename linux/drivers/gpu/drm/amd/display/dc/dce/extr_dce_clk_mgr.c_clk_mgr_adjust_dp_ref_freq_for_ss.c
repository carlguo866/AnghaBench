
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixed31_32 {int dummy; } ;
struct dce_clk_mgr {scalar_t__ dprefclk_ss_divider; int dprefclk_ss_percentage; scalar_t__ ss_on_dprefclk; } ;


 struct fixed31_32 dc_fixpt_div_int (int ,int) ;
 int dc_fixpt_floor (struct fixed31_32) ;
 int dc_fixpt_from_fraction (int ,scalar_t__) ;
 struct fixed31_32 dc_fixpt_mul_int (struct fixed31_32,int) ;
 int dc_fixpt_one ;
 struct fixed31_32 dc_fixpt_sub (int ,struct fixed31_32) ;

__attribute__((used)) static int clk_mgr_adjust_dp_ref_freq_for_ss(struct dce_clk_mgr *clk_mgr_dce, int dp_ref_clk_khz)
{
 if (clk_mgr_dce->ss_on_dprefclk && clk_mgr_dce->dprefclk_ss_divider != 0) {
  struct fixed31_32 ss_percentage = dc_fixpt_div_int(
    dc_fixpt_from_fraction(clk_mgr_dce->dprefclk_ss_percentage,
       clk_mgr_dce->dprefclk_ss_divider), 200);
  struct fixed31_32 adj_dp_ref_clk_khz;

  ss_percentage = dc_fixpt_sub(dc_fixpt_one, ss_percentage);
  adj_dp_ref_clk_khz = dc_fixpt_mul_int(ss_percentage, dp_ref_clk_khz);
  dp_ref_clk_khz = dc_fixpt_floor(adj_dp_ref_clk_khz);
 }
 return dp_ref_clk_khz;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc_clocks {int dcfclk_khz; int fclk_khz; int dppclk_khz; int phyclk_khz; int dispclk_khz; } ;
struct dc {TYPE_1__* dcn_soc; } ;
struct TYPE_2__ {int dcfclkv_max0p9; int dcfclkv_nom0p8; int dcfclkv_mid0p72; int dcfclkv_min0p65; } ;


 int BREAK_TO_DEBUGGER () ;
 int DC_LOG_BANDWIDTH_CALCS (char*,unsigned int) ;
 int DM_PP_CLOCK_TYPE_DCFCLK ;
 int DM_PP_CLOCK_TYPE_DISPLAYPHYCLK ;
 int DM_PP_CLOCK_TYPE_DISPLAY_CLK ;
 int DM_PP_CLOCK_TYPE_DPPCLK ;
 int DM_PP_CLOCK_TYPE_MEMORY_CLK ;
 unsigned int dcn_bw_max (unsigned int,unsigned int) ;
 unsigned int dcn_bw_v_max0p9 ;
 unsigned int dcn_bw_v_max0p91 ;
 unsigned int dcn_bw_v_mid0p72 ;
 unsigned int dcn_bw_v_nom0p8 ;
 unsigned int dcn_find_normalized_clock_vdd_Level (struct dc const*,int ,int ) ;

unsigned int dcn_find_dcfclk_suits_all(
 const struct dc *dc,
 struct dc_clocks *clocks)
{
 unsigned vdd_level, vdd_level_temp;
 unsigned dcf_clk;


 vdd_level = dcn_find_normalized_clock_vdd_Level(
  dc, DM_PP_CLOCK_TYPE_DISPLAY_CLK, clocks->dispclk_khz);
 vdd_level_temp = dcn_find_normalized_clock_vdd_Level(
  dc, DM_PP_CLOCK_TYPE_DISPLAYPHYCLK, clocks->phyclk_khz);

 vdd_level = dcn_bw_max(vdd_level, vdd_level_temp);
 vdd_level_temp = dcn_find_normalized_clock_vdd_Level(
  dc, DM_PP_CLOCK_TYPE_DPPCLK, clocks->dppclk_khz);
 vdd_level = dcn_bw_max(vdd_level, vdd_level_temp);

 vdd_level_temp = dcn_find_normalized_clock_vdd_Level(
  dc, DM_PP_CLOCK_TYPE_MEMORY_CLK, clocks->fclk_khz);
 vdd_level = dcn_bw_max(vdd_level, vdd_level_temp);
 vdd_level_temp = dcn_find_normalized_clock_vdd_Level(
  dc, DM_PP_CLOCK_TYPE_DCFCLK, clocks->dcfclk_khz);


 vdd_level = dcn_bw_max(vdd_level, vdd_level_temp);
 if (vdd_level == dcn_bw_v_max0p91) {
  BREAK_TO_DEBUGGER();
  dcf_clk = dc->dcn_soc->dcfclkv_max0p9*1000;
 } else if (vdd_level == dcn_bw_v_max0p9)
  dcf_clk = dc->dcn_soc->dcfclkv_max0p9*1000;
 else if (vdd_level == dcn_bw_v_nom0p8)
  dcf_clk = dc->dcn_soc->dcfclkv_nom0p8*1000;
 else if (vdd_level == dcn_bw_v_mid0p72)
  dcf_clk = dc->dcn_soc->dcfclkv_mid0p72*1000;
 else
  dcf_clk = dc->dcn_soc->dcfclkv_min0p65*1000;

 DC_LOG_BANDWIDTH_CALCS("\tdcf_clk for voltage = %d\n", dcf_clk);
 return dcf_clk;
}

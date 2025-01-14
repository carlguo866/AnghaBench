
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct timing_generator {int dummy; } ;
struct dce110_timing_generator {int dummy; } ;
struct dc_crtc_timing {scalar_t__ v_border_bottom; scalar_t__ v_border_top; scalar_t__ v_addressable; scalar_t__ v_total; scalar_t__ h_border_right; scalar_t__ h_border_left; scalar_t__ h_addressable; scalar_t__ h_total; scalar_t__ h_front_porch; scalar_t__ v_front_porch; } ;


 int CRTC0_CRTC_H_BLANK_START_END ;
 int CRTC0_CRTC_H_TOTAL ;
 int CRTC0_CRTC_V_BLANK_START_END ;
 int CRTC0_CRTC_V_TOTAL ;
 int CRTC0_CRTC_V_TOTAL_MAX ;
 int CRTC0_CRTC_V_TOTAL_MIN ;
 int CRTC_H_BLANK_END ;
 int CRTC_H_BLANK_START ;
 int CRTC_H_TOTAL ;
 int CRTC_REG_UPDATE (int ,int ,scalar_t__) ;
 int CRTC_REG_UPDATE_2 (int ,int ,scalar_t__,int ,scalar_t__) ;
 int CRTC_V_BLANK_END ;
 int CRTC_V_BLANK_START ;
 int CRTC_V_TOTAL ;
 int CRTC_V_TOTAL_MAX ;
 int CRTC_V_TOTAL_MIN ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;

void dce120_timing_generator_program_blanking(
 struct timing_generator *tg,
 const struct dc_crtc_timing *timing)
{
 uint32_t tmp1 = 0;
 uint32_t tmp2 = 0;
 uint32_t vsync_offset = timing->v_border_bottom +
   timing->v_front_porch;
 uint32_t v_sync_start = timing->v_addressable + vsync_offset;

 uint32_t hsync_offset = timing->h_border_right +
   timing->h_front_porch;
 uint32_t h_sync_start = timing->h_addressable + hsync_offset;
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);

 CRTC_REG_UPDATE(
  CRTC0_CRTC_H_TOTAL,
  CRTC_H_TOTAL,
  timing->h_total - 1);

 CRTC_REG_UPDATE(
  CRTC0_CRTC_V_TOTAL,
  CRTC_V_TOTAL,
  timing->v_total - 1);




 CRTC_REG_UPDATE(
  CRTC0_CRTC_V_TOTAL_MAX,
  CRTC_V_TOTAL_MAX,
  timing->v_total - 1);

 CRTC_REG_UPDATE(
  CRTC0_CRTC_V_TOTAL_MIN,
  CRTC_V_TOTAL_MIN,
  timing->v_total - 1);

 tmp1 = timing->h_total -
   (h_sync_start + timing->h_border_left);
 tmp2 = tmp1 + timing->h_addressable +
   timing->h_border_left + timing->h_border_right;

 CRTC_REG_UPDATE_2(
   CRTC0_CRTC_H_BLANK_START_END,
   CRTC_H_BLANK_END, tmp1,
   CRTC_H_BLANK_START, tmp2);

 tmp1 = timing->v_total - (v_sync_start + timing->v_border_top);
 tmp2 = tmp1 + timing->v_addressable + timing->v_border_top +
   timing->v_border_bottom;

 CRTC_REG_UPDATE_2(
  CRTC0_CRTC_V_BLANK_START_END,
  CRTC_V_BLANK_END, tmp1,
  CRTC_V_BLANK_START, tmp2);
}

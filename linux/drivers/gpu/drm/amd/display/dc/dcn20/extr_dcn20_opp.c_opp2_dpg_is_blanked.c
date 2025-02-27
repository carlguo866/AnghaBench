
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct output_pixel_processor {int dummy; } ;
struct dcn20_opp {int dummy; } ;


 int DPG_CONTROL ;
 int DPG_DOUBLE_BUFFER_PENDING ;
 int DPG_EN ;
 int DPG_MODE ;
 int DPG_STATUS ;
 int REG_GET (int ,int ,int*) ;
 int REG_GET_2 (int ,int ,int*,int ,int*) ;
 struct dcn20_opp* TO_DCN20_OPP (struct output_pixel_processor*) ;

bool opp2_dpg_is_blanked(struct output_pixel_processor *opp)
{
 struct dcn20_opp *oppn20 = TO_DCN20_OPP(opp);
 uint32_t dpg_en, dpg_mode;
 uint32_t double_buffer_pending;

 REG_GET_2(DPG_CONTROL,
   DPG_EN, &dpg_en,
   DPG_MODE, &dpg_mode);

 REG_GET(DPG_STATUS,
   DPG_DOUBLE_BUFFER_PENDING, &double_buffer_pending);

 return (dpg_en == 1) &&
  (double_buffer_pending == 0);
}

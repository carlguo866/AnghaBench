
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct smu7_hwmgr {int vddc_phase_shed_control; } ;
struct pp_hwmgr {scalar_t__ pptable; scalar_t__ backend; } ;
struct phm_ppt_v1_information {int us_ulv_voltage_offset; } ;
struct SMU75_Discrete_Ulv {int VddcPhase; scalar_t__ VddcOffset; scalar_t__ CcPwrDynRm1; scalar_t__ CcPwrDynRm; scalar_t__ VddcOffsetVid; } ;


 int CONVERT_FROM_HOST_TO_SMC_UL (scalar_t__) ;
 int CONVERT_FROM_HOST_TO_SMC_US (scalar_t__) ;
 int VOLTAGE_VID_OFFSET_SCALE1 ;
 int VOLTAGE_VID_OFFSET_SCALE2 ;

__attribute__((used)) static int vegam_populate_ulv_level(struct pp_hwmgr *hwmgr,
  struct SMU75_Discrete_Ulv *state)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 struct phm_ppt_v1_information *table_info =
   (struct phm_ppt_v1_information *)(hwmgr->pptable);

 state->CcPwrDynRm = 0;
 state->CcPwrDynRm1 = 0;

 state->VddcOffset = (uint16_t) table_info->us_ulv_voltage_offset;
 state->VddcOffsetVid = (uint8_t)(table_info->us_ulv_voltage_offset *
   VOLTAGE_VID_OFFSET_SCALE2 / VOLTAGE_VID_OFFSET_SCALE1);

 state->VddcPhase = data->vddc_phase_shed_control ^ 0x3;

 CONVERT_FROM_HOST_TO_SMC_UL(state->CcPwrDynRm);
 CONVERT_FROM_HOST_TO_SMC_UL(state->CcPwrDynRm1);
 CONVERT_FROM_HOST_TO_SMC_US(state->VddcOffset);

 return 0;
}

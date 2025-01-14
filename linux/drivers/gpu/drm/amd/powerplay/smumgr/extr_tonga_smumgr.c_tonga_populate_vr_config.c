
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct smu7_hwmgr {scalar_t__ vdd_gfx_control; scalar_t__ voltage_control; scalar_t__ vddci_control; scalar_t__ mvdd_control; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct TYPE_3__ {int VRConfig; } ;
typedef TYPE_1__ SMU72_Discrete_DpmTable ;


 scalar_t__ SMU7_VOLTAGE_CONTROL_BY_GPIO ;
 scalar_t__ SMU7_VOLTAGE_CONTROL_BY_SVID2 ;
 int VRCONF_MVDD_SHIFT ;
 int VRCONF_VDDCI_SHIFT ;
 int VRCONF_VDDGFX_SHIFT ;
 int VR_MERGED_WITH_VDDC ;
 int VR_SMIO_PATTERN_1 ;
 int VR_SMIO_PATTERN_2 ;
 int VR_SVI2_PLANE_1 ;
 int VR_SVI2_PLANE_2 ;
 int pr_err (char*) ;

__attribute__((used)) static int tonga_populate_vr_config(struct pp_hwmgr *hwmgr,
   SMU72_Discrete_DpmTable *table)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 uint16_t config;

 if (SMU7_VOLTAGE_CONTROL_BY_SVID2 == data->vdd_gfx_control) {

  config = VR_SVI2_PLANE_1;
  table->VRConfig |= (config<<VRCONF_VDDGFX_SHIFT);

  if (SMU7_VOLTAGE_CONTROL_BY_SVID2 == data->voltage_control) {
   config = VR_SVI2_PLANE_2;
   table->VRConfig |= config;
  } else {
   pr_err("VDDC and VDDGFX should "
    "be both on SVI2 control in splitted mode !\n");
  }
 } else {

  config = VR_MERGED_WITH_VDDC;
  table->VRConfig |= (config<<VRCONF_VDDGFX_SHIFT);


  if (SMU7_VOLTAGE_CONTROL_BY_SVID2 == data->voltage_control) {
   config = VR_SVI2_PLANE_1;
   table->VRConfig |= config;
  } else {
   pr_err("VDDC should be on "
     "SVI2 control in merged mode !\n");
  }
 }


 if (SMU7_VOLTAGE_CONTROL_BY_SVID2 == data->vddci_control) {
  config = VR_SVI2_PLANE_2;
  table->VRConfig |= (config<<VRCONF_VDDCI_SHIFT);
 } else if (SMU7_VOLTAGE_CONTROL_BY_GPIO == data->vddci_control) {
  config = VR_SMIO_PATTERN_1;
  table->VRConfig |= (config<<VRCONF_VDDCI_SHIFT);
 }


 if (SMU7_VOLTAGE_CONTROL_BY_GPIO == data->mvdd_control) {
  config = VR_SMIO_PATTERN_2;
  table->VRConfig |= (config<<VRCONF_MVDD_SHIFT);
 }

 return 0;
}

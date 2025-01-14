
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_5__ {TYPE_3__* cac_dtp_table; } ;
struct pp_hwmgr {TYPE_2__ dyn_state; scalar_t__ smu_backend; } ;
struct TYPE_4__ {int TDC_MAWt; int TDC_VDDC_ThrottleReleaseLimitPerc; int TDC_VDDC_PkgLimit; } ;
struct ci_smumgr {TYPE_1__ power_tune_table; struct ci_pt_defaults* power_tune_defaults; } ;
struct ci_pt_defaults {int tdc_mawt; int tdc_vddc_throttle_release_limit_perc; } ;
struct TYPE_6__ {int usTDC; } ;


 int CONVERT_FROM_HOST_TO_SMC_US (scalar_t__) ;

__attribute__((used)) static int ci_populate_tdc_limit(struct pp_hwmgr *hwmgr)
{
 uint16_t tdc_limit;
 struct ci_smumgr *smu_data = (struct ci_smumgr *)(hwmgr->smu_backend);
 const struct ci_pt_defaults *defaults = smu_data->power_tune_defaults;

 tdc_limit = (uint16_t)(hwmgr->dyn_state.cac_dtp_table->usTDC * 256);
 smu_data->power_tune_table.TDC_VDDC_PkgLimit =
   CONVERT_FROM_HOST_TO_SMC_US(tdc_limit);
 smu_data->power_tune_table.TDC_VDDC_ThrottleReleaseLimitPerc =
   defaults->tdc_vddc_throttle_release_limit_perc;
 smu_data->power_tune_table.TDC_MAWt = defaults->tdc_mawt;

 return 0;
}

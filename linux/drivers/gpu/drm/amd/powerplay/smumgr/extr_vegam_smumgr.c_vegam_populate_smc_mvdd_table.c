
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_10__ {scalar_t__ count; int mask_low; TYPE_3__* entries; } ;
struct smu7_hwmgr {scalar_t__ mvdd_control; TYPE_4__ mvdd_voltage_table; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct TYPE_8__ {TYPE_1__* Pattern; } ;
struct TYPE_11__ {scalar_t__ MvddLevelCount; int SmioMask2; int * Smio; TYPE_2__ SmioTable2; } ;
struct TYPE_9__ {int value; int smio_low; } ;
struct TYPE_7__ {scalar_t__ Smio; int Voltage; } ;
typedef TYPE_5__ SMU75_Discrete_DpmTable ;


 scalar_t__ PP_HOST_TO_SMC_UL (scalar_t__) ;
 int PP_HOST_TO_SMC_US (int) ;
 scalar_t__ SMU7_VOLTAGE_CONTROL_BY_GPIO ;
 scalar_t__ SMU_MAX_SMIO_LEVELS ;
 int VOLTAGE_SCALE ;

__attribute__((used)) static int vegam_populate_smc_mvdd_table(struct pp_hwmgr *hwmgr,
   SMU75_Discrete_DpmTable *table)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 uint32_t count, level;

 if (SMU7_VOLTAGE_CONTROL_BY_GPIO == data->mvdd_control) {
  count = data->mvdd_voltage_table.count;
  if (count > SMU_MAX_SMIO_LEVELS)
   count = SMU_MAX_SMIO_LEVELS;
  for (level = 0; level < count; level++) {
   table->SmioTable2.Pattern[level].Voltage = PP_HOST_TO_SMC_US(
     data->mvdd_voltage_table.entries[level].value * VOLTAGE_SCALE);

   table->SmioTable2.Pattern[level].Smio =
    (uint8_t) level;
   table->Smio[level] |=
    data->mvdd_voltage_table.entries[level].smio_low;
  }
  table->SmioMask2 = data->mvdd_voltage_table.mask_low;

  table->MvddLevelCount = (uint32_t) PP_HOST_TO_SMC_UL(count);
 }

 return 0;
}

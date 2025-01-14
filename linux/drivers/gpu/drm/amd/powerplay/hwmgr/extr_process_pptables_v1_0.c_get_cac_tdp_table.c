
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int * cac_dtp_table; } ;
struct pp_hwmgr {TYPE_1__ dyn_state; } ;
struct phm_cac_tdp_table {int ucPlx_I2C_Line; int ucPlx_I2C_address; int ucVr_I2C_Line; int ucVr_I2C_address; int ucLiquid_I2C_Line; int ucLiquid2_I2C_address; int ucLiquid1_I2C_address; void* usTemperatureLimitPlx; void* usTemperatureLimitVrMvdd; void* usTemperatureLimitVrVddc; void* usTemperatureLimitLiquid2; void* usTemperatureLimitLiquid1; void* usTemperatureLimitHotspot; void* usClockStretchAmount; void* usSoftwareShutdownTemp; void* usPowerTuneDataSetID; void* usTargetOperatingTemp; void* usDefaultTargetOperatingTemp; void* usMaximumPowerDeliveryLimit; void* usHighCACLeakage; void* usLowCACLeakage; void* usSmallPowerLimit; void* usBatteryPowerLimit; void* usTDC; void* usConfigurableTDP; void* usTDP; } ;
struct TYPE_9__ {int ucPlx_I2C_Line; int ucPlx_I2C_address; int ucVr_I2C_Line; int ucVr_I2C_address; int ucLiquid_I2C_Line; int ucLiquid2_I2C_address; int ucLiquid1_I2C_address; int usTemperatureLimitPlx; int usTemperatureLimitVrMvdd; int usTemperatureLimitVrVddc; int usTemperatureLimitLiquid2; int usTemperatureLimitLiquid1; int usTemperatureLimitHotspot; int usClockStretchAmount; int usSoftwareShutdownTemp; int usPowerTuneDataSetID; int usTjMax; int usMaximumPowerDeliveryLimit; int usHighCACLeakage; int usLowCACLeakage; int usSmallPowerLimit; int usBatteryPowerLimit; int usTDC; int usConfigurableTDP; int usTDP; } ;
struct TYPE_8__ {int usClockStretchAmount; int usSoftwareShutdownTemp; int usPowerTuneDataSetID; int usTjMax; int usMaximumPowerDeliveryLimit; int usHighCACLeakage; int usLowCACLeakage; int usSmallPowerLimit; int usBatteryPowerLimit; int usTDC; int usConfigurableTDP; int usTDP; } ;
struct TYPE_7__ {int ucRevId; } ;
typedef TYPE_2__ PPTable_Generic_SubTable_Header ;
typedef TYPE_3__ ATOM_Tonga_PowerTune_Table ;
typedef TYPE_4__ ATOM_Fiji_PowerTune_Table ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct phm_cac_tdp_table*) ;
 void* kzalloc (int,int ) ;
 void* le16_to_cpu (int ) ;

__attribute__((used)) static int get_cac_tdp_table(
  struct pp_hwmgr *hwmgr,
  struct phm_cac_tdp_table **cac_tdp_table,
  const PPTable_Generic_SubTable_Header * table
  )
{
 uint32_t table_size;
 struct phm_cac_tdp_table *tdp_table;

 table_size = sizeof(uint32_t) + sizeof(struct phm_cac_tdp_table);
 tdp_table = kzalloc(table_size, GFP_KERNEL);

 if (((void*)0) == tdp_table)
  return -ENOMEM;

 hwmgr->dyn_state.cac_dtp_table = kzalloc(table_size, GFP_KERNEL);

 if (((void*)0) == hwmgr->dyn_state.cac_dtp_table) {
  kfree(tdp_table);
  return -ENOMEM;
 }

 if (table->ucRevId < 3) {
  const ATOM_Tonga_PowerTune_Table *tonga_table =
   (ATOM_Tonga_PowerTune_Table *)table;
  tdp_table->usTDP = le16_to_cpu(tonga_table->usTDP);
  tdp_table->usConfigurableTDP =
   le16_to_cpu(tonga_table->usConfigurableTDP);
  tdp_table->usTDC = le16_to_cpu(tonga_table->usTDC);
  tdp_table->usBatteryPowerLimit =
   le16_to_cpu(tonga_table->usBatteryPowerLimit);
  tdp_table->usSmallPowerLimit =
   le16_to_cpu(tonga_table->usSmallPowerLimit);
  tdp_table->usLowCACLeakage =
   le16_to_cpu(tonga_table->usLowCACLeakage);
  tdp_table->usHighCACLeakage =
   le16_to_cpu(tonga_table->usHighCACLeakage);
  tdp_table->usMaximumPowerDeliveryLimit =
   le16_to_cpu(tonga_table->usMaximumPowerDeliveryLimit);
  tdp_table->usDefaultTargetOperatingTemp =
   le16_to_cpu(tonga_table->usTjMax);
  tdp_table->usTargetOperatingTemp =
   le16_to_cpu(tonga_table->usTjMax);
  tdp_table->usPowerTuneDataSetID =
   le16_to_cpu(tonga_table->usPowerTuneDataSetID);
  tdp_table->usSoftwareShutdownTemp =
   le16_to_cpu(tonga_table->usSoftwareShutdownTemp);
  tdp_table->usClockStretchAmount =
   le16_to_cpu(tonga_table->usClockStretchAmount);
 } else {
  const ATOM_Fiji_PowerTune_Table *fijitable =
   (ATOM_Fiji_PowerTune_Table *)table;
  tdp_table->usTDP = le16_to_cpu(fijitable->usTDP);
  tdp_table->usConfigurableTDP = le16_to_cpu(fijitable->usConfigurableTDP);
  tdp_table->usTDC = le16_to_cpu(fijitable->usTDC);
  tdp_table->usBatteryPowerLimit = le16_to_cpu(fijitable->usBatteryPowerLimit);
  tdp_table->usSmallPowerLimit = le16_to_cpu(fijitable->usSmallPowerLimit);
  tdp_table->usLowCACLeakage = le16_to_cpu(fijitable->usLowCACLeakage);
  tdp_table->usHighCACLeakage = le16_to_cpu(fijitable->usHighCACLeakage);
  tdp_table->usMaximumPowerDeliveryLimit =
   le16_to_cpu(fijitable->usMaximumPowerDeliveryLimit);
  tdp_table->usDefaultTargetOperatingTemp =
   le16_to_cpu(fijitable->usTjMax);
  tdp_table->usTargetOperatingTemp =
   le16_to_cpu(fijitable->usTjMax);
  tdp_table->usPowerTuneDataSetID =
   le16_to_cpu(fijitable->usPowerTuneDataSetID);
  tdp_table->usSoftwareShutdownTemp =
   le16_to_cpu(fijitable->usSoftwareShutdownTemp);
  tdp_table->usClockStretchAmount =
   le16_to_cpu(fijitable->usClockStretchAmount);
  tdp_table->usTemperatureLimitHotspot =
   le16_to_cpu(fijitable->usTemperatureLimitHotspot);
  tdp_table->usTemperatureLimitLiquid1 =
   le16_to_cpu(fijitable->usTemperatureLimitLiquid1);
  tdp_table->usTemperatureLimitLiquid2 =
   le16_to_cpu(fijitable->usTemperatureLimitLiquid2);
  tdp_table->usTemperatureLimitVrVddc =
   le16_to_cpu(fijitable->usTemperatureLimitVrVddc);
  tdp_table->usTemperatureLimitVrMvdd =
   le16_to_cpu(fijitable->usTemperatureLimitVrMvdd);
  tdp_table->usTemperatureLimitPlx =
   le16_to_cpu(fijitable->usTemperatureLimitPlx);
  tdp_table->ucLiquid1_I2C_address =
   fijitable->ucLiquid1_I2C_address;
  tdp_table->ucLiquid2_I2C_address =
   fijitable->ucLiquid2_I2C_address;
  tdp_table->ucLiquid_I2C_Line =
   fijitable->ucLiquid_I2C_Line;
  tdp_table->ucVr_I2C_address = fijitable->ucVr_I2C_address;
  tdp_table->ucVr_I2C_Line = fijitable->ucVr_I2C_Line;
  tdp_table->ucPlx_I2C_address = fijitable->ucPlx_I2C_address;
  tdp_table->ucPlx_I2C_Line = fijitable->ucPlx_I2C_Line;
 }

 *cac_tdp_table = tdp_table;

 return 0;
}

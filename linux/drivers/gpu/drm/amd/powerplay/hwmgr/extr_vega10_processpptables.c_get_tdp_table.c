
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {void* LoadLineSlope; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; } ;
struct phm_tdp_table {void* ucPlx_I2C_LineSDA; void* ucPlx_I2C_Line; int ucPlx_I2C_address; void* ucVr_I2C_LineSDA; void* ucVr_I2C_Line; int ucVr_I2C_address; void* ucLiquid_I2C_LineSDA; void* ucLiquid_I2C_Line; int ulBoostClock; void* usBoostStopTemperature; void* usBoostStartTemperature; int ucLiquid2_I2C_address; int ucLiquid1_I2C_address; void* usTemperatureLimitPlx; void* usTemperatureLimitVrMvdd; void* usTemperatureLimitVrVddc; void* usTemperatureLimitHBM; void* usTemperatureLimitLiquid2; void* usTemperatureLimitLiquid1; void* usTemperatureLimitHotspot; void* usTemperatureLimitTedge; void* usSoftwareShutdownTemp; void* usEDCLimit; void* usTDC; void* usMaximumPowerDeliveryLimit; } ;
struct TYPE_8__ {int ucRevId; } ;
typedef TYPE_2__ Vega10_PPTable_Generic_SubTable_Header ;
struct TYPE_11__ {int usLoadLineResistance; void* ucPlx_I2C_LineSDA; void* ucPlx_I2C_LineSCL; int ucPlx_I2C_address; void* ucVr_I2C_LineSDA; void* ucVr_I2C_LineSCL; int ucVr_I2C_address; void* ucLiquid_I2C_LineSDA; void* ucLiquid_I2C_LineSCL; int ucLiquid2_I2C_address; int ucLiquid1_I2C_address; int usTemperatureLimitPlx; int usTemperatureLimitVrMem; int usTemperatureLimitVrSoc; int usTemperatureLimitHBM; int usTemperatureLimitLiquid2; int usTemperatureLimitLiquid1; int usTemperatureLimitHotSpot; int usTemperatureLimitTedge; int usSoftwareShutdownTemp; int usEdcLimit; int usTdcLimit; int usSocketPowerLimit; } ;
struct TYPE_10__ {int usLoadLineResistance; int ucPlx_I2C_Line; int ucPlx_I2C_address; int ucVr_I2C_Line; int ucVr_I2C_address; int ucLiquid_I2C_Line; int ucLiquid2_I2C_address; int ucLiquid1_I2C_address; int usTemperatureLimitPlx; int usTemperatureLimitVrMem; int usTemperatureLimitVrSoc; int usTemperatureLimitHBM; int usTemperatureLimitLiquid2; int usTemperatureLimitLiquid1; int usTemperatureLimitHotSpot; int usTemperatureLimitTedge; int usSoftwareShutdownTemp; int usEdcLimit; int usTdcLimit; int usSocketPowerLimit; } ;
struct TYPE_9__ {int usLoadLineResistance; int ucPlx_I2C_Line; int ucPlx_I2C_address; int ucVr_I2C_Line; int ucVr_I2C_address; int ucLiquid_I2C_Line; int ulBoostClock; int usBoostStopTemperature; int usBoostStartTemperature; int ucLiquid2_I2C_address; int ucLiquid1_I2C_address; int usTemperatureLimitPlx; int usTemperatureLimitVrMem; int usTemperatureLimitVrSoc; int usTemperatureLimitHBM; int usTemperatureLimitLiquid2; int usTemperatureLimitLiquid1; int usTemperatureLimitHotSpot; int usTemperatureLimitTedge; int usSoftwareShutdownTemp; int usEdcLimit; int usTdcLimit; int usSocketPowerLimit; } ;
typedef TYPE_3__ ATOM_Vega10_PowerTune_Table_V3 ;
typedef TYPE_4__ ATOM_Vega10_PowerTune_Table_V2 ;
typedef TYPE_5__ ATOM_Vega10_PowerTune_Table ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int get_scl_sda_value (int ,void**,void**) ;
 struct phm_tdp_table* kzalloc (int,int ) ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int get_tdp_table(
  struct pp_hwmgr *hwmgr,
  struct phm_tdp_table **info_tdp_table,
  const Vega10_PPTable_Generic_SubTable_Header *table)
{
 uint32_t table_size;
 struct phm_tdp_table *tdp_table;
 uint8_t scl;
 uint8_t sda;
 const ATOM_Vega10_PowerTune_Table *power_tune_table;
 const ATOM_Vega10_PowerTune_Table_V2 *power_tune_table_v2;
 const ATOM_Vega10_PowerTune_Table_V3 *power_tune_table_v3;

 table_size = sizeof(uint32_t) + sizeof(struct phm_tdp_table);

 tdp_table = kzalloc(table_size, GFP_KERNEL);

 if (!tdp_table)
  return -ENOMEM;

 if (table->ucRevId == 5) {
  power_tune_table = (ATOM_Vega10_PowerTune_Table *)table;
  tdp_table->usMaximumPowerDeliveryLimit = le16_to_cpu(power_tune_table->usSocketPowerLimit);
  tdp_table->usTDC = le16_to_cpu(power_tune_table->usTdcLimit);
  tdp_table->usEDCLimit = le16_to_cpu(power_tune_table->usEdcLimit);
  tdp_table->usSoftwareShutdownTemp =
    le16_to_cpu(power_tune_table->usSoftwareShutdownTemp);
  tdp_table->usTemperatureLimitTedge =
    le16_to_cpu(power_tune_table->usTemperatureLimitTedge);
  tdp_table->usTemperatureLimitHotspot =
    le16_to_cpu(power_tune_table->usTemperatureLimitHotSpot);
  tdp_table->usTemperatureLimitLiquid1 =
    le16_to_cpu(power_tune_table->usTemperatureLimitLiquid1);
  tdp_table->usTemperatureLimitLiquid2 =
    le16_to_cpu(power_tune_table->usTemperatureLimitLiquid2);
  tdp_table->usTemperatureLimitHBM =
    le16_to_cpu(power_tune_table->usTemperatureLimitHBM);
  tdp_table->usTemperatureLimitVrVddc =
    le16_to_cpu(power_tune_table->usTemperatureLimitVrSoc);
  tdp_table->usTemperatureLimitVrMvdd =
    le16_to_cpu(power_tune_table->usTemperatureLimitVrMem);
  tdp_table->usTemperatureLimitPlx =
    le16_to_cpu(power_tune_table->usTemperatureLimitPlx);
  tdp_table->ucLiquid1_I2C_address = power_tune_table->ucLiquid1_I2C_address;
  tdp_table->ucLiquid2_I2C_address = power_tune_table->ucLiquid2_I2C_address;
  tdp_table->ucLiquid_I2C_Line = power_tune_table->ucLiquid_I2C_LineSCL;
  tdp_table->ucLiquid_I2C_LineSDA = power_tune_table->ucLiquid_I2C_LineSDA;
  tdp_table->ucVr_I2C_address = power_tune_table->ucVr_I2C_address;
  tdp_table->ucVr_I2C_Line = power_tune_table->ucVr_I2C_LineSCL;
  tdp_table->ucVr_I2C_LineSDA = power_tune_table->ucVr_I2C_LineSDA;
  tdp_table->ucPlx_I2C_address = power_tune_table->ucPlx_I2C_address;
  tdp_table->ucPlx_I2C_Line = power_tune_table->ucPlx_I2C_LineSCL;
  tdp_table->ucPlx_I2C_LineSDA = power_tune_table->ucPlx_I2C_LineSDA;
  hwmgr->platform_descriptor.LoadLineSlope = le16_to_cpu(power_tune_table->usLoadLineResistance);
 } else if (table->ucRevId == 6) {
  power_tune_table_v2 = (ATOM_Vega10_PowerTune_Table_V2 *)table;
  tdp_table->usMaximumPowerDeliveryLimit = le16_to_cpu(power_tune_table_v2->usSocketPowerLimit);
  tdp_table->usTDC = le16_to_cpu(power_tune_table_v2->usTdcLimit);
  tdp_table->usEDCLimit = le16_to_cpu(power_tune_table_v2->usEdcLimit);
  tdp_table->usSoftwareShutdownTemp =
    le16_to_cpu(power_tune_table_v2->usSoftwareShutdownTemp);
  tdp_table->usTemperatureLimitTedge =
    le16_to_cpu(power_tune_table_v2->usTemperatureLimitTedge);
  tdp_table->usTemperatureLimitHotspot =
    le16_to_cpu(power_tune_table_v2->usTemperatureLimitHotSpot);
  tdp_table->usTemperatureLimitLiquid1 =
    le16_to_cpu(power_tune_table_v2->usTemperatureLimitLiquid1);
  tdp_table->usTemperatureLimitLiquid2 =
    le16_to_cpu(power_tune_table_v2->usTemperatureLimitLiquid2);
  tdp_table->usTemperatureLimitHBM =
    le16_to_cpu(power_tune_table_v2->usTemperatureLimitHBM);
  tdp_table->usTemperatureLimitVrVddc =
    le16_to_cpu(power_tune_table_v2->usTemperatureLimitVrSoc);
  tdp_table->usTemperatureLimitVrMvdd =
    le16_to_cpu(power_tune_table_v2->usTemperatureLimitVrMem);
  tdp_table->usTemperatureLimitPlx =
    le16_to_cpu(power_tune_table_v2->usTemperatureLimitPlx);
  tdp_table->ucLiquid1_I2C_address = power_tune_table_v2->ucLiquid1_I2C_address;
  tdp_table->ucLiquid2_I2C_address = power_tune_table_v2->ucLiquid2_I2C_address;

  get_scl_sda_value(power_tune_table_v2->ucLiquid_I2C_Line, &scl, &sda);

  tdp_table->ucLiquid_I2C_Line = scl;
  tdp_table->ucLiquid_I2C_LineSDA = sda;

  tdp_table->ucVr_I2C_address = power_tune_table_v2->ucVr_I2C_address;

  get_scl_sda_value(power_tune_table_v2->ucVr_I2C_Line, &scl, &sda);

  tdp_table->ucVr_I2C_Line = scl;
  tdp_table->ucVr_I2C_LineSDA = sda;
  tdp_table->ucPlx_I2C_address = power_tune_table_v2->ucPlx_I2C_address;

  get_scl_sda_value(power_tune_table_v2->ucPlx_I2C_Line, &scl, &sda);

  tdp_table->ucPlx_I2C_Line = scl;
  tdp_table->ucPlx_I2C_LineSDA = sda;

  hwmgr->platform_descriptor.LoadLineSlope =
     le16_to_cpu(power_tune_table_v2->usLoadLineResistance);
 } else {
  power_tune_table_v3 = (ATOM_Vega10_PowerTune_Table_V3 *)table;
  tdp_table->usMaximumPowerDeliveryLimit = le16_to_cpu(power_tune_table_v3->usSocketPowerLimit);
  tdp_table->usTDC = le16_to_cpu(power_tune_table_v3->usTdcLimit);
  tdp_table->usEDCLimit = le16_to_cpu(power_tune_table_v3->usEdcLimit);
  tdp_table->usSoftwareShutdownTemp = le16_to_cpu(power_tune_table_v3->usSoftwareShutdownTemp);
  tdp_table->usTemperatureLimitTedge = le16_to_cpu(power_tune_table_v3->usTemperatureLimitTedge);
  tdp_table->usTemperatureLimitHotspot = le16_to_cpu(power_tune_table_v3->usTemperatureLimitHotSpot);
  tdp_table->usTemperatureLimitLiquid1 = le16_to_cpu(power_tune_table_v3->usTemperatureLimitLiquid1);
  tdp_table->usTemperatureLimitLiquid2 = le16_to_cpu(power_tune_table_v3->usTemperatureLimitLiquid2);
  tdp_table->usTemperatureLimitHBM = le16_to_cpu(power_tune_table_v3->usTemperatureLimitHBM);
  tdp_table->usTemperatureLimitVrVddc = le16_to_cpu(power_tune_table_v3->usTemperatureLimitVrSoc);
  tdp_table->usTemperatureLimitVrMvdd = le16_to_cpu(power_tune_table_v3->usTemperatureLimitVrMem);
  tdp_table->usTemperatureLimitPlx = le16_to_cpu(power_tune_table_v3->usTemperatureLimitPlx);
  tdp_table->ucLiquid1_I2C_address = power_tune_table_v3->ucLiquid1_I2C_address;
  tdp_table->ucLiquid2_I2C_address = power_tune_table_v3->ucLiquid2_I2C_address;
  tdp_table->usBoostStartTemperature = le16_to_cpu(power_tune_table_v3->usBoostStartTemperature);
  tdp_table->usBoostStopTemperature = le16_to_cpu(power_tune_table_v3->usBoostStopTemperature);
  tdp_table->ulBoostClock = le32_to_cpu(power_tune_table_v3->ulBoostClock);

  get_scl_sda_value(power_tune_table_v3->ucLiquid_I2C_Line, &scl, &sda);

  tdp_table->ucLiquid_I2C_Line = scl;
  tdp_table->ucLiquid_I2C_LineSDA = sda;

  tdp_table->ucVr_I2C_address = power_tune_table_v3->ucVr_I2C_address;

  get_scl_sda_value(power_tune_table_v3->ucVr_I2C_Line, &scl, &sda);

  tdp_table->ucVr_I2C_Line = scl;
  tdp_table->ucVr_I2C_LineSDA = sda;

  tdp_table->ucPlx_I2C_address = power_tune_table_v3->ucPlx_I2C_address;

  get_scl_sda_value(power_tune_table_v3->ucPlx_I2C_Line, &scl, &sda);

  tdp_table->ucPlx_I2C_Line = scl;
  tdp_table->ucPlx_I2C_LineSDA = sda;

  hwmgr->platform_descriptor.LoadLineSlope =
     le16_to_cpu(power_tune_table_v3->usLoadLineResistance);
 }

 *info_tdp_table = tdp_table;

 return 0;
}

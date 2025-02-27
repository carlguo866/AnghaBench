
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct dm_priv {int bTXPowerTracking; int bTXPowerTrackingInit; int TxPowerTrackControl; scalar_t__ TXPowercount; } ;
struct hal_com_data {int EEPROMThermalMeter; struct dm_priv dmpriv; } ;
struct adapter {int dummy; } ;
struct TYPE_5__ {int CCK_index; int* OFDM_index; scalar_t__* PowerIndexOffset; scalar_t__* DeltaPowerIndexLast; scalar_t__* DeltaPowerIndex; int ThermalValue_LCK; int ThermalValue_IQK; int ThermalValue; } ;
struct TYPE_6__ {int* mp_mode; int DefaultOfdmIndex; int DefaultCckIndex; int BbSwingIdxCckBase; int* BbSwingIdxOfdmBase; TYPE_1__ RFCalibrateInfo; struct adapter* Adapter; } ;
typedef TYPE_2__* PDM_ODM_T ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int MAX_RF_PATH ;
 int ODM_RF_PATH_A ;
 int OFDM_TABLE_SIZE ;
 int getSwingIndex (TYPE_2__*) ;

void odm_TXPowerTrackingInit(PDM_ODM_T pDM_Odm)
{
 u8 defaultSwingIndex = getSwingIndex(pDM_Odm);
 u8 p = 0;
 struct adapter *Adapter = pDM_Odm->Adapter;
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);


 struct dm_priv *pdmpriv = &pHalData->dmpriv;

 pdmpriv->bTXPowerTracking = 1;
 pdmpriv->TXPowercount = 0;
 pdmpriv->bTXPowerTrackingInit = 0;

 if (*(pDM_Odm->mp_mode) != 1)
  pdmpriv->TxPowerTrackControl = 1;
 else
  pdmpriv->TxPowerTrackControl = 0;





 pDM_Odm->RFCalibrateInfo.ThermalValue = pHalData->EEPROMThermalMeter;
 pDM_Odm->RFCalibrateInfo.ThermalValue_IQK = pHalData->EEPROMThermalMeter;
 pDM_Odm->RFCalibrateInfo.ThermalValue_LCK = pHalData->EEPROMThermalMeter;


 pDM_Odm->DefaultOfdmIndex = (defaultSwingIndex >= OFDM_TABLE_SIZE) ? 30 : defaultSwingIndex;
 pDM_Odm->DefaultCckIndex = 20;

 pDM_Odm->BbSwingIdxCckBase = pDM_Odm->DefaultCckIndex;
 pDM_Odm->RFCalibrateInfo.CCK_index = pDM_Odm->DefaultCckIndex;

 for (p = ODM_RF_PATH_A; p < MAX_RF_PATH; ++p) {
  pDM_Odm->BbSwingIdxOfdmBase[p] = pDM_Odm->DefaultOfdmIndex;
  pDM_Odm->RFCalibrateInfo.OFDM_index[p] = pDM_Odm->DefaultOfdmIndex;
  pDM_Odm->RFCalibrateInfo.DeltaPowerIndex[p] = 0;
  pDM_Odm->RFCalibrateInfo.DeltaPowerIndexLast[p] = 0;
  pDM_Odm->RFCalibrateInfo.PowerIndexOffset[p] = 0;
 }

}

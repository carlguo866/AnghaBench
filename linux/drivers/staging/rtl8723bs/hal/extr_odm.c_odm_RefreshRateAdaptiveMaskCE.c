
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t u8 ;
struct adapter {scalar_t__ bDriverStopped; } ;
struct TYPE_11__ {TYPE_2__** pODM_StaInfo; int bUseRAMask; struct adapter* Adapter; } ;
struct TYPE_9__ {int UndecoratedSmoothedPWDB; } ;
struct TYPE_10__ {int rssi_level; TYPE_1__ rssi_stat; int hwaddr; } ;
typedef TYPE_2__* PSTA_INFO_T ;
typedef TYPE_3__* PDM_ODM_T ;


 scalar_t__ IS_MCAST (int ) ;
 scalar_t__ IS_STA_VALID (TYPE_2__*) ;
 size_t ODM_ASSOCIATE_ENTRY_NUM ;
 int ODM_COMP_RA_MASK ;
 int ODM_DBG_LOUD ;
 int ODM_DBG_TRACE ;
 int ODM_RAStateCheck (TYPE_3__*,int ,int,int *) ;
 int ODM_RT_TRACE (TYPE_3__*,int ,int ,char*) ;
 int rtw_hal_update_ra_mask (TYPE_2__*,int ) ;

void odm_RefreshRateAdaptiveMaskCE(PDM_ODM_T pDM_Odm)
{
 u8 i;
 struct adapter *padapter = pDM_Odm->Adapter;

 if (padapter->bDriverStopped) {
  ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_TRACE, ("<---- odm_RefreshRateAdaptiveMask(): driver is going to unload\n"));
  return;
 }

 if (!pDM_Odm->bUseRAMask) {
  ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_LOUD, ("<---- odm_RefreshRateAdaptiveMask(): driver does not control rate adaptive mask\n"));
  return;
 }



 for (i = 0; i < ODM_ASSOCIATE_ENTRY_NUM; i++) {
  PSTA_INFO_T pstat = pDM_Odm->pODM_StaInfo[i];

  if (IS_STA_VALID(pstat)) {
   if (IS_MCAST(pstat->hwaddr))
    continue;
   if (IS_MCAST(pstat->hwaddr))
    continue;

   if (1 == ODM_RAStateCheck(pDM_Odm, pstat->rssi_stat.UndecoratedSmoothedPWDB, 0, &pstat->rssi_level)) {
    ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_LOUD, ("RSSI:%d, RSSI_LEVEL:%d\n", pstat->rssi_stat.UndecoratedSmoothedPWDB, pstat->rssi_level));

    rtw_hal_update_ra_mask(pstat, pstat->rssi_level);
   }

  }
 }
}

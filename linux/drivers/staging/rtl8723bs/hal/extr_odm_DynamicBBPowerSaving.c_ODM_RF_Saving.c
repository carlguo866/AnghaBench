
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef TYPE_1__* pPS_T ;
struct TYPE_3__ {int initialize; int Reg874; int RegC70; int Reg85C; int RegA74; scalar_t__ PreRFState; scalar_t__ CurRFState; } ;
struct TYPE_4__ {int PatchID; int RSSI_Min; int Adapter; TYPE_1__ DM_PSTable; } ;
typedef TYPE_2__* PDM_ODM_T ;


 int BIT28 ;
 int BIT3 ;
 int PHY_QueryBBReg (int ,int,int ) ;
 int PHY_SetBBReg (int ,int,int,int) ;
 scalar_t__ RF_MAX ;
 scalar_t__ RF_Normal ;
 scalar_t__ RF_Save ;
 int bMaskDWord ;

void ODM_RF_Saving(void *pDM_VOID, u8 bForceInNormal)
{
 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
 pPS_T pDM_PSTable = &pDM_Odm->DM_PSTable;
 u8 Rssi_Up_bound = 30;
 u8 Rssi_Low_bound = 25;

 if (pDM_Odm->PatchID == 40) {
  Rssi_Up_bound = 50;
  Rssi_Low_bound = 45;
 }

 if (pDM_PSTable->initialize == 0) {

  pDM_PSTable->Reg874 = (PHY_QueryBBReg(pDM_Odm->Adapter, 0x874, bMaskDWord)&0x1CC000)>>14;
  pDM_PSTable->RegC70 = (PHY_QueryBBReg(pDM_Odm->Adapter, 0xc70, bMaskDWord)&BIT3)>>3;
  pDM_PSTable->Reg85C = (PHY_QueryBBReg(pDM_Odm->Adapter, 0x85c, bMaskDWord)&0xFF000000)>>24;
  pDM_PSTable->RegA74 = (PHY_QueryBBReg(pDM_Odm->Adapter, 0xa74, bMaskDWord)&0xF000)>>12;

  pDM_PSTable->initialize = 1;
 }

 if (!bForceInNormal) {
  if (pDM_Odm->RSSI_Min != 0xFF) {
   if (pDM_PSTable->PreRFState == RF_Normal) {
    if (pDM_Odm->RSSI_Min >= Rssi_Up_bound)
     pDM_PSTable->CurRFState = RF_Save;
    else
     pDM_PSTable->CurRFState = RF_Normal;
   } else {
    if (pDM_Odm->RSSI_Min <= Rssi_Low_bound)
     pDM_PSTable->CurRFState = RF_Normal;
    else
     pDM_PSTable->CurRFState = RF_Save;
   }
  } else
   pDM_PSTable->CurRFState = RF_MAX;
 } else
  pDM_PSTable->CurRFState = RF_Normal;

 if (pDM_PSTable->PreRFState != pDM_PSTable->CurRFState) {
  if (pDM_PSTable->CurRFState == RF_Save) {
   PHY_SetBBReg(pDM_Odm->Adapter, 0x874, 0x1C0000, 0x2);
   PHY_SetBBReg(pDM_Odm->Adapter, 0xc70, BIT3, 0);
   PHY_SetBBReg(pDM_Odm->Adapter, 0x85c, 0xFF000000, 0x63);
   PHY_SetBBReg(pDM_Odm->Adapter, 0x874, 0xC000, 0x2);
   PHY_SetBBReg(pDM_Odm->Adapter, 0xa74, 0xF000, 0x3);
   PHY_SetBBReg(pDM_Odm->Adapter, 0x818, BIT28, 0x0);
   PHY_SetBBReg(pDM_Odm->Adapter, 0x818, BIT28, 0x1);
  } else {
   PHY_SetBBReg(pDM_Odm->Adapter, 0x874, 0x1CC000, pDM_PSTable->Reg874);
   PHY_SetBBReg(pDM_Odm->Adapter, 0xc70, BIT3, pDM_PSTable->RegC70);
   PHY_SetBBReg(pDM_Odm->Adapter, 0x85c, 0xFF000000, pDM_PSTable->Reg85C);
   PHY_SetBBReg(pDM_Odm->Adapter, 0xa74, 0xF000, pDM_PSTable->RegA74);
   PHY_SetBBReg(pDM_Odm->Adapter, 0x818, BIT28, 0x0);
  }
  pDM_PSTable->PreRFState = pDM_PSTable->CurRFState;
 }
}

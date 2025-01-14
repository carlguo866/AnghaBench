
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_3__ {int Adapter; } ;
struct hal_com_data {TYPE_1__ odmpriv; } ;
struct adapter {int dummy; } ;
typedef TYPE_1__* PDM_ODM_T ;


 int BIT28 ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int IQK_DELAY_TIME_8723B ;
 int ODM_COMP_CALIBRATION ;
 int ODM_DBG_LOUD ;
 int ODM_RF_PATH_A ;
 int ODM_RT_TRACE (TYPE_1__*,int ,int ,char*) ;
 int PHY_QueryBBReg (int ,int,int ) ;
 int PHY_SetBBReg (int ,int,int ,int) ;
 int PHY_SetRFReg (int ,int ,int ,int,int) ;
 int RF_RCK_OS ;
 int RF_TXPA_G1 ;
 int RF_TXPA_G2 ;
 int RF_WE_LUT ;
 int bMaskDWord ;
 int bMaskH3Bytes ;
 int bRFRegOffsetMask ;
 int mdelay (int ) ;
 int rFPGA0_IQK ;
 int rIQK_AGC_Pts ;
 int rIQK_AGC_Rsp ;
 int rRx_IQK ;
 int rRx_IQK_PI_A ;
 int rRx_IQK_PI_B ;
 int rRx_IQK_Tone_A ;
 int rRx_IQK_Tone_B ;
 int rRx_Power_After_IQK_A_2 ;
 int rTx_IQK ;
 int rTx_IQK_PI_A ;
 int rTx_IQK_PI_B ;
 int rTx_IQK_Tone_A ;
 int rTx_IQK_Tone_B ;
 int rTx_Power_After_IQK_A ;
 int rTx_Power_Before_IQK_A ;

__attribute__((used)) static u8 phy_PathA_IQK_8723B(
 struct adapter *padapter, bool configPathB, u8 RF_Path
)
{
 u32 regEAC, regE94, regE9C, tmp, Path_SEL_BB ;
 u8 result = 0x00;

 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);
 PDM_ODM_T pDM_Odm = &pHalData->odmpriv;


 Path_SEL_BB = PHY_QueryBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord);

 ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("Path A IQK!\n"));


 PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_IQK, bMaskH3Bytes, 0x000000);


 PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_WE_LUT, 0x80000, 0x1);
 PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_RCK_OS, bRFRegOffsetMask, 0x18000);
 PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_TXPA_G1, bRFRegOffsetMask, 0x0003f);
 PHY_SetRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, RF_TXPA_G2, bRFRegOffsetMask, 0xc7f87);






 PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK, bMaskDWord, 0x01007c00);
 PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK, bMaskDWord, 0x01004800);


 PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_Tone_A, bMaskDWord, 0x18008c1c);
 PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_Tone_A, bMaskDWord, 0x38008c1c);
 PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_Tone_B, bMaskDWord, 0x38008c1c);
 PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_Tone_B, bMaskDWord, 0x38008c1c);

 PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_A, bMaskDWord, 0x821303ea);
 PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_PI_A, bMaskDWord, 0x28110000);
 PHY_SetBBReg(pDM_Odm->Adapter, rTx_IQK_PI_B, bMaskDWord, 0x82110000);
 PHY_SetBBReg(pDM_Odm->Adapter, rRx_IQK_PI_B, bMaskDWord, 0x28110000);



 PHY_SetBBReg(pDM_Odm->Adapter, rIQK_AGC_Rsp, bMaskDWord, 0x00462911);


 PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_IQK, bMaskH3Bytes, 0x808000);


 if (configPathB || (RF_Path == 0))

  PHY_SetBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord, 0x00000000);
 else

  PHY_SetBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord, 0x00000280);


 PHY_SetBBReg(pDM_Odm->Adapter, 0x764, bMaskDWord, 0x00000800);



 PHY_SetBBReg(pDM_Odm->Adapter, rIQK_AGC_Pts, bMaskDWord, 0xf9000000);
 PHY_SetBBReg(pDM_Odm->Adapter, rIQK_AGC_Pts, bMaskDWord, 0xf8000000);




 mdelay(IQK_DELAY_TIME_8723B);


 PHY_SetBBReg(pDM_Odm->Adapter, 0x948, bMaskDWord, Path_SEL_BB);

 PHY_SetBBReg(pDM_Odm->Adapter, 0x764, bMaskDWord, 0x00001800);


 PHY_SetBBReg(pDM_Odm->Adapter, rFPGA0_IQK, bMaskH3Bytes, 0x000000);



 regEAC = PHY_QueryBBReg(pDM_Odm->Adapter, rRx_Power_After_IQK_A_2, bMaskDWord);
 regE94 = PHY_QueryBBReg(pDM_Odm->Adapter, rTx_Power_Before_IQK_A, bMaskDWord);
 regE9C = PHY_QueryBBReg(pDM_Odm->Adapter, rTx_Power_After_IQK_A, bMaskDWord);
 ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("0xeac = 0x%x\n", regEAC));
 ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("0xe94 = 0x%x, 0xe9c = 0x%x\n", regE94, regE9C));

 ODM_RT_TRACE(pDM_Odm, ODM_COMP_CALIBRATION, ODM_DBG_LOUD, ("0xe90(before IQK) = 0x%x, 0xe98(afer IQK) = 0x%x\n",
 PHY_QueryBBReg(pDM_Odm->Adapter, 0xe90, bMaskDWord), PHY_QueryBBReg(pDM_Odm->Adapter, 0xe98, bMaskDWord)));



 tmp = (regE9C & 0x03FF0000)>>16;
 if ((tmp & 0x200) > 0)
  tmp = 0x400 - tmp;

 if (
  !(regEAC & BIT28) &&
  (((regE94 & 0x03FF0000)>>16) != 0x142) &&
  (((regE9C & 0x03FF0000)>>16) != 0x42) &&
  (((regE94 & 0x03FF0000)>>16) < 0x110) &&
  (((regE94 & 0x03FF0000)>>16) > 0xf0) &&
  (tmp < 0xf)
 )
  result |= 0x01;
 else
  return result;

 return result;
}

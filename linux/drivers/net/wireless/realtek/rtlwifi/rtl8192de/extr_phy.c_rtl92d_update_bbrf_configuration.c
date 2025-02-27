
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct rtl_phy {size_t num_total_rfpath; scalar_t__ rf_type; void** rfreg_chnlval; void** reg_rf3c; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_hal {scalar_t__ current_bandtype; scalar_t__ macphymode; scalar_t__ interfaceindex; } ;
struct rtl_efuse {int eeprom_c9; int eeprom_cc; scalar_t__* internal_pa_5g; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 scalar_t__ BAND_ON_2_4G ;
 int BDWORD ;
 int BIT (int) ;
 int COMP_INIT ;
 int COMP_RF ;
 int DBG_LOUD ;
 scalar_t__ DUALMAC_DUALPHY ;
 int MASKBYTE0 ;
 int MASKDWORD ;
 size_t RF90_PATH_A ;
 int RFPGA0_ADDALLOCKEN ;
 int RFPGA0_XAB_RFINTERFACESW ;
 int RFPGA0_XAB_RFPARAMETER ;
 int RFPGA0_XA_RFINTERFACEOE ;
 int RFPGA0_XB_RFINTERFACEOE ;
 int RFREG_OFFSET_MASK ;
 scalar_t__ RF_1T1R ;
 int RF_CHNLBW ;
 int ROFDM0_AGCRSSITABLE ;
 int ROFDM0_ECCATHRESHOLD ;
 int ROFDM0_TRXPATHENABLE ;
 int ROFDM0_XARXIQIMBALANCE ;
 int ROFDM0_XATXIQIMBALANCE ;
 int ROFDM0_XBRXIQIMBALANCE ;
 int ROFDM0_XBTXIQIMBALANCE ;
 int ROFDM0_XCTXAFE ;
 int ROFDM0_XDTXAFE ;
 int ROFDM1_CFOTRACKING ;
 int ROFDM1_TRXPATHENABLE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int rtl92d_phy_enable_anotherphy (struct ieee80211_hw*,int) ;
 int rtl92d_phy_powerdown_anotherphy (struct ieee80211_hw*,int) ;
 int rtl92de_read_dword_dbi (struct ieee80211_hw*,int,int) ;
 int rtl92de_write_dword_dbi (struct ieee80211_hw*,int,int,int) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 void* rtl_get_rfreg (struct ieee80211_hw*,size_t,int,int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int,int) ;
 int rtl_set_rfreg (struct ieee80211_hw*,size_t,int,int,int) ;

void rtl92d_update_bbrf_configuration(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 u8 rfpath, i;

 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "==>\n");

 if (rtlhal->current_bandtype == BAND_ON_2_4G) {

  rtl_set_bbreg(hw, RFPGA0_XAB_RFPARAMETER, BIT(0), 0x0);
  rtl_set_bbreg(hw, RFPGA0_XAB_RFPARAMETER, BIT(15), 0x0);
  if (rtlhal->macphymode != DUALMAC_DUALPHY) {
   rtl_set_bbreg(hw, RFPGA0_XAB_RFPARAMETER, BIT(16), 0x0);
   rtl_set_bbreg(hw, RFPGA0_XAB_RFPARAMETER, BIT(31), 0x0);
  }

  rtl_set_bbreg(hw, ROFDM0_AGCRSSITABLE, BIT(6) | BIT(7), 0x0);

  rtl_set_bbreg(hw, ROFDM1_CFOTRACKING, BIT(14) | BIT(13), 0x0);

  rtl_set_bbreg(hw, 0xB30, 0x00F00000, 0xa);

  rtl_set_bbreg(hw, ROFDM0_XATXIQIMBALANCE, MASKDWORD,
         0x40000100);
  rtl_set_bbreg(hw, ROFDM0_XBTXIQIMBALANCE, MASKDWORD,
         0x40000100);
  if (rtlhal->macphymode == DUALMAC_DUALPHY) {
   rtl_set_bbreg(hw, RFPGA0_XAB_RFINTERFACESW,
          BIT(10) | BIT(6) | BIT(5),
          ((rtlefuse->eeprom_c9 & BIT(3)) >> 3) |
          (rtlefuse->eeprom_c9 & BIT(1)) |
          ((rtlefuse->eeprom_cc & BIT(1)) << 4));
   rtl_set_bbreg(hw, RFPGA0_XA_RFINTERFACEOE,
          BIT(10) | BIT(6) | BIT(5),
          ((rtlefuse->eeprom_c9 & BIT(2)) >> 2) |
          ((rtlefuse->eeprom_c9 & BIT(0)) << 1) |
          ((rtlefuse->eeprom_cc & BIT(0)) << 5));
   rtl_set_bbreg(hw, RFPGA0_XAB_RFPARAMETER, BIT(15), 0);
  } else {
   rtl_set_bbreg(hw, RFPGA0_XAB_RFINTERFACESW,
          BIT(26) | BIT(22) | BIT(21) | BIT(10) |
          BIT(6) | BIT(5),
          ((rtlefuse->eeprom_c9 & BIT(3)) >> 3) |
          (rtlefuse->eeprom_c9 & BIT(1)) |
          ((rtlefuse->eeprom_cc & BIT(1)) << 4) |
          ((rtlefuse->eeprom_c9 & BIT(7)) << 9) |
          ((rtlefuse->eeprom_c9 & BIT(5)) << 12) |
          ((rtlefuse->eeprom_cc & BIT(3)) << 18));
   rtl_set_bbreg(hw, RFPGA0_XA_RFINTERFACEOE,
          BIT(10) | BIT(6) | BIT(5),
          ((rtlefuse->eeprom_c9 & BIT(2)) >> 2) |
          ((rtlefuse->eeprom_c9 & BIT(0)) << 1) |
          ((rtlefuse->eeprom_cc & BIT(0)) << 5));
   rtl_set_bbreg(hw, RFPGA0_XB_RFINTERFACEOE,
          BIT(10) | BIT(6) | BIT(5),
          ((rtlefuse->eeprom_c9 & BIT(6)) >> 6) |
          ((rtlefuse->eeprom_c9 & BIT(4)) >> 3) |
          ((rtlefuse->eeprom_cc & BIT(2)) << 3));
   rtl_set_bbreg(hw, RFPGA0_XAB_RFPARAMETER,
          BIT(31) | BIT(15), 0);
  }

 } else {

  rtl_set_bbreg(hw, RFPGA0_XAB_RFPARAMETER, BIT(0), 0x1);
  rtl_set_bbreg(hw, RFPGA0_XAB_RFPARAMETER, BIT(15), 0x1);
  if (rtlhal->macphymode != DUALMAC_DUALPHY) {
   rtl_set_bbreg(hw, RFPGA0_XAB_RFPARAMETER, BIT(16), 0x1);
   rtl_set_bbreg(hw, RFPGA0_XAB_RFPARAMETER, BIT(31), 0x1);
  }

  rtl_set_bbreg(hw, ROFDM0_AGCRSSITABLE, BIT(6) | BIT(7), 0x1);

  rtl_set_bbreg(hw, ROFDM1_CFOTRACKING, BIT(14) | BIT(13), 0x1);

  rtl_set_bbreg(hw, 0xB30, 0x00F00000, 0x0);

  if (rtlefuse->internal_pa_5g[0])
   rtl_set_bbreg(hw, ROFDM0_XATXIQIMBALANCE, MASKDWORD,
          0x2d4000b5);
  else
   rtl_set_bbreg(hw, ROFDM0_XATXIQIMBALANCE, MASKDWORD,
          0x20000080);
  if (rtlefuse->internal_pa_5g[1])
   rtl_set_bbreg(hw, ROFDM0_XBTXIQIMBALANCE, MASKDWORD,
          0x2d4000b5);
  else
   rtl_set_bbreg(hw, ROFDM0_XBTXIQIMBALANCE, MASKDWORD,
          0x20000080);
  if (rtlhal->macphymode == DUALMAC_DUALPHY) {
   rtl_set_bbreg(hw, RFPGA0_XAB_RFINTERFACESW,
          BIT(10) | BIT(6) | BIT(5),
          (rtlefuse->eeprom_cc & BIT(5)));
   rtl_set_bbreg(hw, RFPGA0_XA_RFINTERFACEOE, BIT(10),
          ((rtlefuse->eeprom_cc & BIT(4)) >> 4));
   rtl_set_bbreg(hw, RFPGA0_XAB_RFPARAMETER, BIT(15),
          (rtlefuse->eeprom_cc & BIT(4)) >> 4);
  } else {
   rtl_set_bbreg(hw, RFPGA0_XAB_RFINTERFACESW,
          BIT(26) | BIT(22) | BIT(21) | BIT(10) |
          BIT(6) | BIT(5),
          (rtlefuse->eeprom_cc & BIT(5)) |
          ((rtlefuse->eeprom_cc & BIT(7)) << 14));
   rtl_set_bbreg(hw, RFPGA0_XA_RFINTERFACEOE, BIT(10),
          ((rtlefuse->eeprom_cc & BIT(4)) >> 4));
   rtl_set_bbreg(hw, RFPGA0_XB_RFINTERFACEOE, BIT(10),
          ((rtlefuse->eeprom_cc & BIT(6)) >> 6));
   rtl_set_bbreg(hw, RFPGA0_XAB_RFPARAMETER,
          BIT(31) | BIT(15),
          ((rtlefuse->eeprom_cc & BIT(4)) >> 4) |
          ((rtlefuse->eeprom_cc & BIT(6)) << 10));
  }
 }

 rtl_set_bbreg(hw, ROFDM0_XARXIQIMBALANCE, MASKDWORD, 0x40000100);
 rtl_set_bbreg(hw, ROFDM0_XBRXIQIMBALANCE, MASKDWORD, 0x40000100);
 rtl_set_bbreg(hw, ROFDM0_XCTXAFE, 0xF0000000, 0x00);
 rtl_set_bbreg(hw, ROFDM0_ECCATHRESHOLD, BIT(30) | BIT(28) |
        BIT(26) | BIT(24), 0x00);
 rtl_set_bbreg(hw, ROFDM0_XDTXAFE, 0xF0000000, 0x00);
 rtl_set_bbreg(hw, 0xca0, 0xF0000000, 0x00);
 rtl_set_bbreg(hw, ROFDM0_AGCRSSITABLE, 0x0000F000, 0x00);


 for (rfpath = RF90_PATH_A; rfpath < rtlphy->num_total_rfpath;
      rfpath++) {
  if (rtlhal->current_bandtype == BAND_ON_2_4G) {

   rtl_set_rfreg(hw, rfpath, RF_CHNLBW, BIT(8) | BIT(16) |
          BIT(18), 0);

   rtl_set_rfreg(hw, (enum radio_path)rfpath, 0x0B,
          0x1c000, 0x07);
  } else {

   rtl_set_rfreg(hw, rfpath, RF_CHNLBW, BIT(8) |
          BIT(16) | BIT(18),
          (BIT(16) | BIT(8)) >> 8);
  }
 }


 if (rtlphy->rf_type == RF_1T1R) {

  rtl_set_bbreg(hw, ROFDM0_TRXPATHENABLE, MASKBYTE0, 0x11);
  rtl_set_bbreg(hw, ROFDM1_TRXPATHENABLE, BDWORD, 0x1);


  if (rtlhal->interfaceindex == 0) {
   rtl_set_bbreg(hw, RFPGA0_ADDALLOCKEN, BIT(12) |
          BIT(13), 0x3);
  } else {
   rtl92d_phy_enable_anotherphy(hw, 0);
   RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
     "MAC1 use DBI to update 0x888\n");

   rtl92de_write_dword_dbi(hw, RFPGA0_ADDALLOCKEN,
      rtl92de_read_dword_dbi(hw,
      RFPGA0_ADDALLOCKEN,
      BIT(3)) | BIT(12) | BIT(13),
      BIT(3));
   rtl92d_phy_powerdown_anotherphy(hw, 0);
  }
 } else {


  rtl_set_bbreg(hw, ROFDM0_TRXPATHENABLE, MASKBYTE0, 0x33);
  rtl_set_bbreg(hw, ROFDM1_TRXPATHENABLE, BDWORD, 0x3);

  rtl_set_bbreg(hw, RFPGA0_ADDALLOCKEN, BIT(12) | BIT(13), 0);
 }
 for (rfpath = RF90_PATH_A; rfpath < rtlphy->num_total_rfpath;
      rfpath++) {
  rtlphy->rfreg_chnlval[rfpath] = rtl_get_rfreg(hw, rfpath,
      RF_CHNLBW, RFREG_OFFSET_MASK);
  rtlphy->reg_rf3c[rfpath] = rtl_get_rfreg(hw, rfpath, 0x3C,
   RFREG_OFFSET_MASK);
 }
 for (i = 0; i < 2; i++)
  RT_TRACE(rtlpriv, COMP_RF, DBG_LOUD, "RF 0x18 = 0x%x\n",
    rtlphy->rfreg_chnlval[i]);
 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "<==\n");

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int txpower_trackinginit; int thermalvalue; scalar_t__ txpowercount; } ;
struct TYPE_3__ {int* thermalmeter; } ;
struct rtl_priv {TYPE_2__ dm; TYPE_1__ efuse; } ;
struct rtl_efuse {int eeprom_thermalmeter; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_POWER_TRACKING ;
 int DBG_LOUD ;
 int FW_CMD_TXPWR_TRACK_THERMAL ;
 int FW_TXPWR_TRACK_THERMAL ;
 int RF90_PATH_A ;
 int RF_T_METER ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,...) ;
 int WFM5 ;
 int hal_get_firmwareversion (struct rtl_priv*) ;
 int rtl92s_phy_chk_fwcmd_iodone (struct ieee80211_hw*) ;
 int rtl92s_phy_set_fw_cmd (struct ieee80211_hw*,int ) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 scalar_t__ rtl_get_rfreg (struct ieee80211_hw*,int ,int ,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;

__attribute__((used)) static void _rtl92s_dm_txpowertracking_callback_thermalmeter(
     struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 u8 thermalvalue = 0;
 u32 fw_cmd = 0;

 rtlpriv->dm.txpower_trackinginit = 1;

 thermalvalue = (u8)rtl_get_rfreg(hw, RF90_PATH_A, RF_T_METER, 0x1f);

 RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
   "Readback Thermal Meter = 0x%x pre thermal meter 0x%x eeprom_thermal meter 0x%x\n",
   thermalvalue,
   rtlpriv->dm.thermalvalue, rtlefuse->eeprom_thermalmeter);

 if (thermalvalue) {
  rtlpriv->dm.thermalvalue = thermalvalue;
  if (hal_get_firmwareversion(rtlpriv) >= 0x35) {
   rtl92s_phy_set_fw_cmd(hw, FW_CMD_TXPWR_TRACK_THERMAL);
  } else {
   fw_cmd = (FW_TXPWR_TRACK_THERMAL |
     (rtlpriv->efuse.thermalmeter[0] << 8) |
     (thermalvalue << 16));

   RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
     "Write to FW Thermal Val = 0x%x\n", fw_cmd);

   rtl_write_dword(rtlpriv, WFM5, fw_cmd);
   rtl92s_phy_chk_fwcmd_iodone(hw);
  }
 }

 rtlpriv->dm.txpowercount = 0;
}

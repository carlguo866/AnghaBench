
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tm_trigger; } ;
struct rtl_priv {TYPE_1__ dm; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int COMP_POWER_TRACKING ;
 int DBG_LOUD ;
 int RF90_PATH_A ;
 int RF_T_METER_88E ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int rtl8812ae_dm_txpower_tracking_callback_thermalmeter (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int ,int ,int,int) ;

__attribute__((used)) static void rtl8812ae_dm_check_txpower_tracking_thermalmeter(
  struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (!rtlpriv->dm.tm_trigger) {
  rtl_set_rfreg(hw, RF90_PATH_A, RF_T_METER_88E,
         BIT(17) | BIT(16), 0x03);
  RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
    "Trigger 8812 Thermal Meter!!\n");
  rtlpriv->dm.tm_trigger = 1;
  return;
 }
 RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
   "Schedule TxPowerTracking direct call!!\n");
 rtl8812ae_dm_txpower_tracking_callback_thermalmeter(hw);
}

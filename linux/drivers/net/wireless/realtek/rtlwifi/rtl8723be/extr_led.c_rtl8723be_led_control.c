
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_ps_ctl {scalar_t__ rfoff_reason; } ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum led_ctl_mode { ____Placeholder_led_ctl_mode } led_ctl_mode ;


 int COMP_LED ;
 int DBG_LOUD ;
 int LED_CTL_LINK ;
 int LED_CTL_NO_LINK ;
 int LED_CTL_POWER_ON ;
 int LED_CTL_RX ;
 int LED_CTL_SITE_SURVEY ;
 int LED_CTL_START_TO_LINK ;
 int LED_CTL_TX ;
 scalar_t__ RF_CHANGE_BY_PS ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int _rtl8723be_sw_led_control (struct ieee80211_hw*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;

void rtl8723be_led_control(struct ieee80211_hw *hw,
      enum led_ctl_mode ledaction)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));

 if ((ppsc->rfoff_reason > RF_CHANGE_BY_PS) &&
     (ledaction == LED_CTL_TX ||
      ledaction == LED_CTL_RX ||
      ledaction == LED_CTL_SITE_SURVEY ||
      ledaction == LED_CTL_LINK ||
      ledaction == LED_CTL_NO_LINK ||
      ledaction == LED_CTL_START_TO_LINK ||
      ledaction == LED_CTL_POWER_ON)) {
  return;
 }
 RT_TRACE(rtlpriv, COMP_LED, DBG_LOUD, "ledaction %d,\n", ledaction);
 _rtl8723be_sw_led_control(hw, ledaction);
}

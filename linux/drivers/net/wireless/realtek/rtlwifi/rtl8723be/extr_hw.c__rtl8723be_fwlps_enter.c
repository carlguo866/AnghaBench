
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct rtl_ps_ctl {int fwctrl_psmode; scalar_t__ low_power_enable; } ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct rtl_hal {int allow_sw_to_change_hwclc; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_hw_reg ) (struct ieee80211_hw*,int ,int *) ;} ;


 int FW_PS_STATE_RF_OFF ;
 int FW_PS_STATE_RF_OFF_LOW_PWR ;
 int HW_VAR_FW_PSMODE_STATUS ;
 int HW_VAR_H2C_FW_PWRMODE ;
 int HW_VAR_SET_RPWM ;
 int _rtl8723be_set_fw_clock_off (struct ieee80211_hw*,int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int stub1 (struct ieee80211_hw*,int ,int *) ;
 int stub2 (struct ieee80211_hw*,int ,int *) ;
 int stub3 (struct ieee80211_hw*,int ,int *) ;
 int stub4 (struct ieee80211_hw*,int ,int *) ;
 int stub5 (struct ieee80211_hw*,int ,int *) ;

__attribute__((used)) static void _rtl8723be_fwlps_enter(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 bool fw_current_inps = 1;
 u8 rpwm_val;

 if (ppsc->low_power_enable) {
  rpwm_val = FW_PS_STATE_RF_OFF_LOW_PWR;
  rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_FW_PSMODE_STATUS,
           (u8 *)(&fw_current_inps));
  rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_H2C_FW_PWRMODE,
           (u8 *)(&ppsc->fwctrl_psmode));
  rtlhal->allow_sw_to_change_hwclc = 1;
  _rtl8723be_set_fw_clock_off(hw, rpwm_val);
 } else {
  rpwm_val = FW_PS_STATE_RF_OFF;
  rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_FW_PSMODE_STATUS,
           (u8 *)(&fw_current_inps));
  rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_H2C_FW_PWRMODE,
           (u8 *)(&ppsc->fwctrl_psmode));
  rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_SET_RPWM,
           (u8 *)(&rpwm_val));
 }

}

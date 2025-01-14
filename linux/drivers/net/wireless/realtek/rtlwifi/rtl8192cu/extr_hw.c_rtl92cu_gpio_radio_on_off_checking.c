
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl_ps_ctl {int rfchange_inprogress; int rfpwr_state; int hwradiooff; int reg_rfps_level; scalar_t__ pwrdown_mode; scalar_t__ swrf_processing; } ;
struct TYPE_2__ {int rf_ps_lock; } ;
struct rtl_priv {TYPE_1__ locks; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum rf_pwrstate { ____Placeholder_rf_pwrstate } rf_pwrstate ;


 int BIT (int) ;
 int COMP_POWER ;
 int DBG_DMESG ;
 int DBG_LOUD ;
 int ERFOFF ;
 int ERFON ;
 int REG_APS_FSMCO ;
 int REG_GPIO_IO_SEL ;
 int REG_HSISR ;
 int REG_MAC_PINMUX_CFG ;
 int REG_RSV_CTRL ;
 int RT_CLEAR_PS_LEVEL (struct rtl_ps_ctl*,int) ;
 scalar_t__ RT_IN_PS_LEVEL (struct rtl_ps_ctl*,int) ;
 int RT_RF_OFF_LEVL_ASPM ;
 int RT_RF_OFF_LEVL_PCI_D3 ;
 int RT_SET_PS_LEVEL (struct rtl_ps_ctl*,int) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int rtl_read_byte (struct rtl_priv*,int ) ;
 int rtl_write_byte (struct rtl_priv*,int ,int) ;
 int rtl_write_word (struct rtl_priv*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool rtl92cu_gpio_radio_on_off_checking(struct ieee80211_hw *hw, u8 * valid)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 enum rf_pwrstate e_rfpowerstate_toset, cur_rfstate;
 u8 u1tmp = 0;
 bool actuallyset = 0;
 unsigned long flag = 0;

 u8 usb_autosuspend = 0;

 if (ppsc->swrf_processing)
  return 0;
 spin_lock_irqsave(&rtlpriv->locks.rf_ps_lock, flag);
 if (ppsc->rfchange_inprogress) {
  spin_unlock_irqrestore(&rtlpriv->locks.rf_ps_lock, flag);
  return 0;
 } else {
  ppsc->rfchange_inprogress = 1;
  spin_unlock_irqrestore(&rtlpriv->locks.rf_ps_lock, flag);
 }
 cur_rfstate = ppsc->rfpwr_state;
 if (usb_autosuspend) {

 } else {
  if (ppsc->pwrdown_mode) {
   u1tmp = rtl_read_byte(rtlpriv, REG_HSISR);
   e_rfpowerstate_toset = (u1tmp & BIT(7)) ?
            ERFOFF : ERFON;
   RT_TRACE(rtlpriv, COMP_POWER, DBG_DMESG,
     "pwrdown, 0x5c(BIT7)=%02x\n", u1tmp);
  } else {
   rtl_write_byte(rtlpriv, REG_MAC_PINMUX_CFG,
           rtl_read_byte(rtlpriv,
           REG_MAC_PINMUX_CFG) & ~(BIT(3)));
   u1tmp = rtl_read_byte(rtlpriv, REG_GPIO_IO_SEL);
   e_rfpowerstate_toset = (u1tmp & BIT(3)) ?
       ERFON : ERFOFF;
   RT_TRACE(rtlpriv, COMP_POWER, DBG_DMESG,
     "GPIO_IN=%02x\n", u1tmp);
  }
  RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD, "N-SS RF =%x\n",
    e_rfpowerstate_toset);
 }
 if ((ppsc->hwradiooff) && (e_rfpowerstate_toset == ERFON)) {
  RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
    "GPIOChangeRF  - HW Radio ON, RF ON\n");
  ppsc->hwradiooff = 0;
  actuallyset = 1;
 } else if ((!ppsc->hwradiooff) && (e_rfpowerstate_toset ==
      ERFOFF)) {
  RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
    "GPIOChangeRF  - HW Radio OFF\n");
  ppsc->hwradiooff = 1;
  actuallyset = 1;
 } else {
  RT_TRACE(rtlpriv, COMP_POWER, DBG_LOUD,
    "pHalData->bHwRadioOff and eRfPowerStateToSet do not match: pHalData->bHwRadioOff %x, eRfPowerStateToSet %x\n",
    ppsc->hwradiooff, e_rfpowerstate_toset);
 }
 if (actuallyset) {
  ppsc->hwradiooff = 1;
  if (e_rfpowerstate_toset == ERFON) {
   if ((ppsc->reg_rfps_level & RT_RF_OFF_LEVL_ASPM) &&
        RT_IN_PS_LEVEL(ppsc, RT_RF_OFF_LEVL_ASPM))
    RT_CLEAR_PS_LEVEL(ppsc, RT_RF_OFF_LEVL_ASPM);
   else if ((ppsc->reg_rfps_level & RT_RF_OFF_LEVL_PCI_D3)
     && RT_IN_PS_LEVEL(ppsc, RT_RF_OFF_LEVL_PCI_D3))
    RT_CLEAR_PS_LEVEL(ppsc, RT_RF_OFF_LEVL_PCI_D3);
  }
  spin_lock_irqsave(&rtlpriv->locks.rf_ps_lock, flag);
  ppsc->rfchange_inprogress = 0;
  spin_unlock_irqrestore(&rtlpriv->locks.rf_ps_lock, flag);




  if (ppsc->pwrdown_mode && e_rfpowerstate_toset == ERFOFF) {

   rtl_write_byte(rtlpriv, REG_RSV_CTRL, 0x0);
   rtl_write_word(rtlpriv, REG_APS_FSMCO, 0x8812);
  }
  if (e_rfpowerstate_toset == ERFOFF) {
   if (ppsc->reg_rfps_level & RT_RF_OFF_LEVL_ASPM)
    RT_SET_PS_LEVEL(ppsc, RT_RF_OFF_LEVL_ASPM);
   else if (ppsc->reg_rfps_level & RT_RF_OFF_LEVL_PCI_D3)
    RT_SET_PS_LEVEL(ppsc, RT_RF_OFF_LEVL_PCI_D3);
  }
 } else if (e_rfpowerstate_toset == ERFOFF || cur_rfstate == ERFOFF) {

  if (ppsc->reg_rfps_level & RT_RF_OFF_LEVL_ASPM)
   RT_SET_PS_LEVEL(ppsc, RT_RF_OFF_LEVL_ASPM);
  else if (ppsc->reg_rfps_level & RT_RF_OFF_LEVL_PCI_D3)
   RT_SET_PS_LEVEL(ppsc, RT_RF_OFF_LEVL_PCI_D3);
  spin_lock_irqsave(&rtlpriv->locks.rf_ps_lock, flag);
  ppsc->rfchange_inprogress = 0;
  spin_unlock_irqrestore(&rtlpriv->locks.rf_ps_lock, flag);
 } else {
  spin_lock_irqsave(&rtlpriv->locks.rf_ps_lock, flag);
  ppsc->rfchange_inprogress = 0;
  spin_unlock_irqrestore(&rtlpriv->locks.rf_ps_lock, flag);
 }
 *valid = 1;
 return !ppsc->hwradiooff;
}

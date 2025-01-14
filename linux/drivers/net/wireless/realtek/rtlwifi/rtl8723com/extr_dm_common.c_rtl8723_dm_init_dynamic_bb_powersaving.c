
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps_t {scalar_t__ initialize; scalar_t__ rssi_val_min; void* cur_rfstate; void* pre_rfstate; void* cur_ccasate; void* pre_ccastate; } ;
struct rtl_priv {struct ps_t dm_pstable; } ;
struct ieee80211_hw {int dummy; } ;


 void* CCA_MAX ;
 void* RF_MAX ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl8723_dm_init_dynamic_bb_powersaving(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct ps_t *dm_pstable = &rtlpriv->dm_pstable;

 dm_pstable->pre_ccastate = CCA_MAX;
 dm_pstable->cur_ccasate = CCA_MAX;
 dm_pstable->pre_rfstate = RF_MAX;
 dm_pstable->cur_rfstate = RF_MAX;
 dm_pstable->rssi_val_min = 0;
 dm_pstable->initialize = 0;
}

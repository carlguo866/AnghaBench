
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int rtl8723be_phy_rf6052_config (struct ieee80211_hw*) ;

bool rtl8723be_phy_rf_config(struct ieee80211_hw *hw)
{
 return rtl8723be_phy_rf6052_config(hw);
}

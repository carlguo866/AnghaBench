
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct rtl_phy {int**** tx_power_by_rate_offset; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;
typedef enum band_type { ____Placeholder_band_type } band_type ;


 int BAND_ON_2_4G ;
 int BAND_ON_5G ;
 int FPHY ;
 int MAX_RF_PATH ;
 int PHY_TXPWR ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 size_t _rtl92ee_get_rate_section_index (int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl92ee_store_tx_power_by_rate(struct ieee80211_hw *hw,
         enum band_type band,
         enum radio_path rfpath,
         u32 txnum, u32 regaddr,
         u32 bitmask, u32 data)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 u8 section = _rtl92ee_get_rate_section_index(regaddr);

 if (band != BAND_ON_2_4G && band != BAND_ON_5G) {
  RT_TRACE(rtlpriv, FPHY, PHY_TXPWR, "Invalid Band %d\n", band);
  return;
 }

 if (rfpath > MAX_RF_PATH - 1) {
  RT_TRACE(rtlpriv, FPHY, PHY_TXPWR,
    "Invalid RfPath %d\n", rfpath);
  return;
 }
 if (txnum > MAX_RF_PATH - 1) {
  RT_TRACE(rtlpriv, FPHY, PHY_TXPWR, "Invalid TxNum %d\n", txnum);
  return;
 }

 rtlphy->tx_power_by_rate_offset[band][rfpath][txnum][section] = data;
}

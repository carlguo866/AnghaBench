
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_INIT ;
 int DBG_TRACE ;
 int MAC_2T_ARRAYLENGTH ;
 int* RTL8192CEMAC_2T_ARRAY ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int,int ) ;

__attribute__((used)) static bool _rtl92c_phy_config_mac_with_headerfile(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 i;
 u32 arraylength;
 u32 *ptrarray;

 RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE, "Read Rtl819XMACPHY_Array\n");
 arraylength = MAC_2T_ARRAYLENGTH;
 ptrarray = RTL8192CEMAC_2T_ARRAY;
 RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE, "Img:RTL8192CEMAC_2T_ARRAY\n");
 for (i = 0; i < arraylength; i = i + 2)
  rtl_write_byte(rtlpriv, ptrarray[i], (u8) ptrarray[i + 1]);
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rtl_priv {int dummy; } ;


 scalar_t__ halbtc_is_wifi_uplink (struct rtl_priv*) ;
 scalar_t__ rtl_read_dword (struct rtl_priv*,scalar_t__) ;
 int rtl_write_dword (struct rtl_priv*,scalar_t__,scalar_t__) ;

bool rtl_btc_is_disable_edca_turbo(struct rtl_priv *rtlpriv)
{
 bool bt_change_edca = 0;
 u32 cur_edca_val;
 u32 edca_bt_hs_uplink = 0x5ea42b, edca_bt_hs_downlink = 0x5ea42b;
 u32 edca_hs;
 u32 edca_addr = 0x504;

 cur_edca_val = rtl_read_dword(rtlpriv, edca_addr);
 if (halbtc_is_wifi_uplink(rtlpriv)) {
  if (cur_edca_val != edca_bt_hs_uplink) {
   edca_hs = edca_bt_hs_uplink;
   bt_change_edca = 1;
  }
 } else {
  if (cur_edca_val != edca_bt_hs_downlink) {
   edca_hs = edca_bt_hs_downlink;
   bt_change_edca = 1;
  }
 }

 if (bt_change_edca)
  rtl_write_dword(rtlpriv, edca_addr, edca_hs);

 return 1;
}

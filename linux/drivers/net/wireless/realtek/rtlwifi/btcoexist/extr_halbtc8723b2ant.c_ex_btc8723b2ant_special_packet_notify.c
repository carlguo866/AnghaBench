
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;


 scalar_t__ BTC_PACKET_DHCP ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;

void ex_btc8723b2ant_special_packet_notify(struct btc_coexist *btcoexist,
        u8 type)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 if (type == BTC_PACKET_DHCP)
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], DHCP Packet notify\n");
}

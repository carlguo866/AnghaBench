
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct btc_coexist {int dummy; } ;


 int exhalbtc_halt_notify (struct btc_coexist*) ;
 struct btc_coexist* rtl_btc_coexist (struct rtl_priv*) ;

void rtl_btc_halt_notify(struct rtl_priv *rtlpriv)
{
 struct btc_coexist *btcoexist = rtl_btc_coexist(rtlpriv);

 if (!btcoexist)
  return;

 exhalbtc_halt_notify(btcoexist);
}

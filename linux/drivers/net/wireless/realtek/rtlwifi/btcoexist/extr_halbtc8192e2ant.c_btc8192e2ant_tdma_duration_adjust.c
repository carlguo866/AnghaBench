
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int (* btc_get ) (struct btc_coexist*,int ,int*) ;struct rtl_priv* adapter; } ;
struct TYPE_4__ {int auto_tdma_adjust; int tdma_adj_type; int cur_ps_tdma; } ;
struct TYPE_3__ {int bt_retry_cnt; } ;


 int BTC_GET_BL_WIFI_LINK ;
 int BTC_GET_BL_WIFI_ROAM ;
 int BTC_GET_BL_WIFI_SCAN ;
 int COMP_BT_COEXIST ;
 int DBG_LOUD ;
 int NORMAL_EXEC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int btc8192e2ant_ps_tdma (struct btc_coexist*,int ,int,int) ;
 TYPE_2__* coex_dm ;
 TYPE_1__* coex_sta ;
 int stub1 (struct btc_coexist*,int ,int*) ;
 int stub2 (struct btc_coexist*,int ,int*) ;
 int stub3 (struct btc_coexist*,int ,int*) ;

__attribute__((used)) static void btc8192e2ant_tdma_duration_adjust(struct btc_coexist *btcoexist,
           bool sco_hid, bool tx_pause,
           u8 max_interval)
{
 struct rtl_priv *rtlpriv = btcoexist->adapter;
 static int up, dn, m, n, wait_cnt;



 int result;
 u8 retry_cnt = 0;

 RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
   "[BTCoex], TdmaDurationAdjust()\n");

 if (!coex_dm->auto_tdma_adjust) {
  coex_dm->auto_tdma_adjust = 1;
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], first run TdmaDurationAdjust()!!\n");
  if (sco_hid) {
   if (tx_pause) {
    if (max_interval == 1) {
     btc8192e2ant_ps_tdma(btcoexist,
            NORMAL_EXEC,
            1, 13);
     coex_dm->tdma_adj_type = 13;
    } else if (max_interval == 2) {
     btc8192e2ant_ps_tdma(btcoexist,
            NORMAL_EXEC,
            1, 14);
     coex_dm->tdma_adj_type = 14;
    } else {
     btc8192e2ant_ps_tdma(btcoexist,
            NORMAL_EXEC,
            1, 15);
     coex_dm->tdma_adj_type = 15;
    }
   } else {
    if (max_interval == 1) {
     btc8192e2ant_ps_tdma(btcoexist,
            NORMAL_EXEC,
            1, 9);
     coex_dm->tdma_adj_type = 9;
    } else if (max_interval == 2) {
     btc8192e2ant_ps_tdma(btcoexist,
            NORMAL_EXEC,
            1, 10);
     coex_dm->tdma_adj_type = 10;
    } else {
     btc8192e2ant_ps_tdma(btcoexist,
            NORMAL_EXEC,
            1, 11);
     coex_dm->tdma_adj_type = 11;
    }
   }
  } else {
   if (tx_pause) {
    if (max_interval == 1) {
     btc8192e2ant_ps_tdma(btcoexist,
            NORMAL_EXEC,
            1, 5);
     coex_dm->tdma_adj_type = 5;
    } else if (max_interval == 2) {
     btc8192e2ant_ps_tdma(btcoexist,
            NORMAL_EXEC,
            1, 6);
     coex_dm->tdma_adj_type = 6;
    } else {
     btc8192e2ant_ps_tdma(btcoexist,
            NORMAL_EXEC,
            1, 7);
     coex_dm->tdma_adj_type = 7;
    }
   } else {
    if (max_interval == 1) {
     btc8192e2ant_ps_tdma(btcoexist,
            NORMAL_EXEC,
            1, 1);
     coex_dm->tdma_adj_type = 1;
    } else if (max_interval == 2) {
     btc8192e2ant_ps_tdma(btcoexist,
            NORMAL_EXEC,
            1, 2);
     coex_dm->tdma_adj_type = 2;
    } else {
     btc8192e2ant_ps_tdma(btcoexist,
            NORMAL_EXEC,
            1, 3);
     coex_dm->tdma_adj_type = 3;
    }
   }
  }

  up = 0;
  dn = 0;
  m = 1;
  n = 3;
  result = 0;
  wait_cnt = 0;
 } else {

  retry_cnt = coex_sta->bt_retry_cnt;
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], retry_cnt = %d\n", retry_cnt);
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], up=%d, dn=%d, m=%d, n=%d, wait_cnt=%d\n",
    up, dn, m, n, wait_cnt);
  result = 0;
  wait_cnt++;

  if (retry_cnt == 0) {
   up++;
   dn--;

   if (dn <= 0)
    dn = 0;

   if (up >= n) {
    wait_cnt = 0;
    n = 3;
    up = 0;
    dn = 0;
    result = 1;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
      "[BTCoex]Increase wifi duration!!\n");
   }
  } else if (retry_cnt <= 3) {
   up--;
   dn++;

   if (up <= 0)
    up = 0;

   if (dn == 2) {
    if (wait_cnt <= 2)
     m++;
    else
     m = 1;

    if (m >= 20)
     m = 20;

    n = 3 * m;
    up = 0;
    dn = 0;
    wait_cnt = 0;
    result = -1;
    RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
      "Reduce wifi duration for retry<3\n");
   }
  } else {
   if (wait_cnt == 1)
    m++;
   else
    m = 1;

   if (m >= 20)
    m = 20;

   n = 3*m;
   up = 0;
   dn = 0;
   wait_cnt = 0;
   result = -1;
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "Decrease wifi duration for retryCounter>3!!\n");
  }

  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], max Interval = %d\n", max_interval);
 }





 if (coex_dm->cur_ps_tdma != coex_dm->tdma_adj_type) {
  bool scan = 0, link = 0, roam = 0;

  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "[BTCoex], PsTdma type mismatch!!!, ");
  RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
    "curPsTdma=%d, recordPsTdma=%d\n",
    coex_dm->cur_ps_tdma, coex_dm->tdma_adj_type);

  btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_SCAN, &scan);
  btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_LINK, &link);
  btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_ROAM, &roam);

  if (!scan && !link && !roam)
   btc8192e2ant_ps_tdma(btcoexist, NORMAL_EXEC,
          1, coex_dm->tdma_adj_type);
  else
   RT_TRACE(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
     "[BTCoex], roaming/link/scan is under progress, will adjust next time!!!\n");
 }
}

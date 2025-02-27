
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct btc_coexist {int (* btc_write_4byte ) (struct btc_coexist*,int,int) ;int (* btc_get ) (struct btc_coexist*,int ,int*) ;} ;
struct TYPE_2__ {int cur_arfr_type; int pre_arfr_type; int backup_arfr_cnt1; int backup_arfr_cnt2; } ;


 int BTC_GET_BL_WIFI_UNDER_B_MODE ;
 TYPE_1__* coex_dm ;
 int stub1 (struct btc_coexist*,int,int) ;
 int stub2 (struct btc_coexist*,int,int) ;
 int stub3 (struct btc_coexist*,int ,int*) ;
 int stub4 (struct btc_coexist*,int,int) ;
 int stub5 (struct btc_coexist*,int,int) ;
 int stub6 (struct btc_coexist*,int,int) ;
 int stub7 (struct btc_coexist*,int,int) ;

__attribute__((used)) static void btc8723b1ant_auto_rate_fb_retry(struct btc_coexist *btcoexist,
         bool force_exec, u8 type)
{
 bool wifi_under_bmode = 0;

 coex_dm->cur_arfr_type = type;

 if (force_exec || (coex_dm->pre_arfr_type != coex_dm->cur_arfr_type)) {
  switch (coex_dm->cur_arfr_type) {
  case 0:
   btcoexist->btc_write_4byte(btcoexist, 0x430,
         coex_dm->backup_arfr_cnt1);
   btcoexist->btc_write_4byte(btcoexist, 0x434,
         coex_dm->backup_arfr_cnt2);
   break;
  case 1:
   btcoexist->btc_get(btcoexist,
        BTC_GET_BL_WIFI_UNDER_B_MODE,
        &wifi_under_bmode);
   if (wifi_under_bmode) {
    btcoexist->btc_write_4byte(btcoexist,
          0x430, 0x0);
    btcoexist->btc_write_4byte(btcoexist,
          0x434, 0x01010101);
   } else {
    btcoexist->btc_write_4byte(btcoexist,
          0x430, 0x0);
    btcoexist->btc_write_4byte(btcoexist,
          0x434, 0x04030201);
   }
   break;
  default:
   break;
  }
 }

 coex_dm->pre_arfr_type = coex_dm->cur_arfr_type;
}

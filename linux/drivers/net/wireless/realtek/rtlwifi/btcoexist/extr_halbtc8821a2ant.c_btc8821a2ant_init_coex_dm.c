
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btc_coexist {int dummy; } ;


 int BTC_PS_WIFI_NATIVE ;
 int FORCE_EXEC ;
 int NORMAL_EXEC ;
 int btc8821a2ant_coex_table_with_type (struct btc_coexist*,int ,int ) ;
 int btc8821a2ant_dec_bt_pwr (struct btc_coexist*,int ,int ) ;
 int btc8821a2ant_fw_dac_swing_lvl (struct btc_coexist*,int ,int) ;
 int btc8821a2ant_power_save_state (struct btc_coexist*,int ,int,int) ;
 int btc8821a2ant_ps_tdma (struct btc_coexist*,int ,int,int) ;
 int btc8821a2ant_sw_mechanism1 (struct btc_coexist*,int,int,int,int) ;
 int btc8821a2ant_sw_mechanism2 (struct btc_coexist*,int,int,int,int) ;

__attribute__((used)) static void btc8821a2ant_init_coex_dm(struct btc_coexist *btcoexist)
{

 btc8821a2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 0);

 btc8821a2ant_power_save_state(btcoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
 btc8821a2ant_ps_tdma(btcoexist, FORCE_EXEC, 0, 1);
 btc8821a2ant_fw_dac_swing_lvl(btcoexist, FORCE_EXEC, 6);
 btc8821a2ant_dec_bt_pwr(btcoexist, FORCE_EXEC, 0);

 btc8821a2ant_sw_mechanism1(btcoexist, 0, 0, 0, 0);
 btc8821a2ant_sw_mechanism2(btcoexist, 0, 0, 0, 0x18);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_efuse {scalar_t__ share_ant; } ;
struct rtw_coex_stat {scalar_t__ wl_gl_busy; } ;
struct rtw_coex {struct rtw_coex_stat stat; } ;
struct rtw_dev {struct rtw_chip_info* chip; struct rtw_efuse efuse; struct rtw_coex coex; } ;
struct rtw_chip_info {int * wl_rf_para_rx; } ;


 int COEX_SET_ANT_2G ;
 int rtw_coex_set_ant_path (struct rtw_dev*,int,int ) ;
 int rtw_coex_set_rf_para (struct rtw_dev*,int ) ;
 int rtw_coex_table (struct rtw_dev*,int) ;
 int rtw_coex_tdma (struct rtw_dev*,int,int) ;

__attribute__((used)) static void rtw_coex_action_bt_a2dp_pan_hid(struct rtw_dev *rtwdev)
{
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_stat *coex_stat = &coex->stat;
 struct rtw_efuse *efuse = &rtwdev->efuse;
 struct rtw_chip_info *chip = rtwdev->chip;
 u8 table_case, tdma_case;

 if (efuse->share_ant) {

  table_case = 10;

  if (coex_stat->wl_gl_busy)
   tdma_case = 15;
  else
   tdma_case = 20;
 } else {

  table_case = 113;

  if (coex_stat->wl_gl_busy)
   tdma_case = 115;
  else
   tdma_case = 120;
 }

 rtw_coex_set_ant_path(rtwdev, 0, COEX_SET_ANT_2G);
 rtw_coex_set_rf_para(rtwdev, chip->wl_rf_para_rx[0]);
 rtw_coex_table(rtwdev, table_case);
 rtw_coex_tdma(rtwdev, 0, tdma_case);
}

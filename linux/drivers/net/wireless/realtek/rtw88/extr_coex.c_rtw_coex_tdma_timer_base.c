
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_coex_stat {int tdma_timer_base; } ;
struct rtw_coex {struct rtw_coex_stat stat; } ;
struct rtw_dev {struct rtw_coex coex; } ;


 int COEX_H2C69_TDMA_SLOT ;
 int PARA1_H2C69_TDMA_2SLOT ;
 int PARA1_H2C69_TDMA_4SLOT ;
 int rtw_coex_wl_ccklock_action (struct rtw_dev*) ;
 int rtw_fw_bt_wifi_control (struct rtw_dev*,int,int*) ;

__attribute__((used)) static void rtw_coex_tdma_timer_base(struct rtw_dev *rtwdev, u8 type)
{
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_stat *coex_stat = &coex->stat;
 u8 para[2] = {0};

 if (coex_stat->tdma_timer_base == type)
  return;

 coex_stat->tdma_timer_base = type;

 para[0] = COEX_H2C69_TDMA_SLOT;

 if (type == 3)
  para[1] = PARA1_H2C69_TDMA_4SLOT;
 else
  para[1] = PARA1_H2C69_TDMA_2SLOT;

 rtw_fw_bt_wifi_control(rtwdev, para[0], &para[1]);


 if (coex_stat->tdma_timer_base == 3)
  rtw_coex_wl_ccklock_action(rtwdev);
}

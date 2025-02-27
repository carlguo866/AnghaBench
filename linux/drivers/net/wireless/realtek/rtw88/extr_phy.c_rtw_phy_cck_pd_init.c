
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct rtw_dm_info {int cck_fa_avg; scalar_t__** cck_pd_lv; } ;
struct rtw_dev {struct rtw_dm_info dm_info; } ;


 int CCK_FA_AVG_RESET ;
 size_t RTW_CHANNEL_WIDTH_40 ;
 size_t RTW_RF_PATH_MAX ;

__attribute__((used)) static void rtw_phy_cck_pd_init(struct rtw_dev *rtwdev)
{
 struct rtw_dm_info *dm_info = &rtwdev->dm_info;
 u8 i, j;

 for (i = 0; i <= RTW_CHANNEL_WIDTH_40; i++) {
  for (j = 0; j < RTW_RF_PATH_MAX; j++)
   dm_info->cck_pd_lv[i][j] = 0;
 }

 dm_info->cck_fa_avg = CCK_FA_AVG_RESET;
}

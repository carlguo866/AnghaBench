
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct rtw_hal {int **** tx_pwr_limit_5g; scalar_t__** tx_pwr_by_rate_base_5g; int **** tx_pwr_limit_2g; scalar_t__** tx_pwr_by_rate_base_2g; } ;
typedef scalar_t__ s8 ;


 size_t RTW_MAX_CHANNEL_NUM_2G ;
 size_t RTW_MAX_CHANNEL_NUM_5G ;

__attribute__((used)) static void
__rtw_phy_tx_power_limit_config(struct rtw_hal *hal, u8 regd, u8 bw, u8 rs)
{
 s8 base;
 u8 ch;

 for (ch = 0; ch < RTW_MAX_CHANNEL_NUM_2G; ch++) {
  base = hal->tx_pwr_by_rate_base_2g[0][rs];
  hal->tx_pwr_limit_2g[regd][bw][rs][ch] -= base;
 }

 for (ch = 0; ch < RTW_MAX_CHANNEL_NUM_5G; ch++) {
  base = hal->tx_pwr_by_rate_base_5g[0][rs];
  hal->tx_pwr_limit_5g[regd][bw][rs][ch] -= base;
 }
}

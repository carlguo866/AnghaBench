
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtw_dev {int dummy; } ;


 scalar_t__ RTW_MAX_CHANNEL_NUM_5G ;
 int rtw_xref_txpwr_lmt_by_rs (struct rtw_dev*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
rtw_xref_5g_txpwr_lmt_by_ch(struct rtw_dev *rtwdev, u8 regd, u8 bw)
{
 u8 ch_idx;

 for (ch_idx = 0; ch_idx < RTW_MAX_CHANNEL_NUM_5G; ch_idx++)
  rtw_xref_txpwr_lmt_by_rs(rtwdev, regd, bw, ch_idx);
}

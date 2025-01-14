
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ PHY_BAND_2G ;
 scalar_t__ PHY_BAND_5G ;
 scalar_t__ RTW_MAX_CHANNEL_NUM_2G ;
 scalar_t__ RTW_MAX_CHANNEL_NUM_5G ;
 scalar_t__* rtw_channel_idx_5g ;

__attribute__((used)) static int rtw_channel_to_idx(u8 band, u8 channel)
{
 int ch_idx;
 u8 n_channel;

 if (band == PHY_BAND_2G) {
  ch_idx = channel - 1;
  n_channel = RTW_MAX_CHANNEL_NUM_2G;
 } else if (band == PHY_BAND_5G) {
  n_channel = RTW_MAX_CHANNEL_NUM_5G;
  for (ch_idx = 0; ch_idx < n_channel; ch_idx++)
   if (rtw_channel_idx_5g[ch_idx] == channel)
    break;
 } else {
  return -1;
 }

 if (ch_idx >= n_channel)
  return -1;

 return ch_idx;
}

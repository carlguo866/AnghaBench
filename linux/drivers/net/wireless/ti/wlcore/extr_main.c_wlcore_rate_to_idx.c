
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct wl1271 {size_t hw_tx_rate_tbl_size; size_t** band_rate_to_idx; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int BUG_ON (int) ;
 size_t CONF_HW_RXTX_RATE_UNSUPPORTED ;
 scalar_t__ unlikely (int) ;
 int wl1271_error (char*,size_t) ;

u8 wlcore_rate_to_idx(struct wl1271 *wl, u8 rate, enum nl80211_band band)
{
 u8 idx;

 BUG_ON(band >= 2);

 if (unlikely(rate >= wl->hw_tx_rate_tbl_size)) {
  wl1271_error("Illegal RX rate from HW: %d", rate);
  return 0;
 }

 idx = wl->band_rate_to_idx[band][rate];
 if (unlikely(idx == CONF_HW_RXTX_RATE_UNSUPPORTED)) {
  wl1271_error("Unsupported RX rate from HW: %d", rate);
  return 0;
 }

 return idx;
}

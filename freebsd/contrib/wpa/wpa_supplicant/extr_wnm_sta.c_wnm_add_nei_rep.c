
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wpabuf {int dummy; } ;


 int ETH_ALEN ;
 scalar_t__ IEEE80211_HDRLEN ;
 scalar_t__ IEEE80211_MAX_MMPDU_SIZE ;
 int MSG_DEBUG ;
 int WLAN_EID_NEIGHBOR_REPORT ;
 int WNM_NEIGHBOR_BSS_TRANSITION_CANDIDATE ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_data (struct wpabuf*,int const*,int ) ;
 int wpabuf_put_le32 (struct wpabuf*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;
 scalar_t__ wpabuf_resize (struct wpabuf**,int) ;

__attribute__((used)) static int wnm_add_nei_rep(struct wpabuf **buf, const u8 *bssid,
      u32 bss_info, u8 op_class, u8 chan, u8 phy_type,
      u8 pref)
{
 if (wpabuf_len(*buf) + 18 >
     IEEE80211_MAX_MMPDU_SIZE - IEEE80211_HDRLEN) {
  wpa_printf(MSG_DEBUG,
      "WNM: No room in frame for Neighbor Report element");
  return -1;
 }

 if (wpabuf_resize(buf, 18) < 0) {
  wpa_printf(MSG_DEBUG,
      "WNM: Failed to allocate memory for Neighbor Report element");
  return -1;
 }

 wpabuf_put_u8(*buf, WLAN_EID_NEIGHBOR_REPORT);

 wpabuf_put_u8(*buf, 16);
 wpabuf_put_data(*buf, bssid, ETH_ALEN);
 wpabuf_put_le32(*buf, bss_info);
 wpabuf_put_u8(*buf, op_class);
 wpabuf_put_u8(*buf, chan);
 wpabuf_put_u8(*buf, phy_type);
 wpabuf_put_u8(*buf, WNM_NEIGHBOR_BSS_TRANSITION_CANDIDATE);
 wpabuf_put_u8(*buf, 1);
 wpabuf_put_u8(*buf, pref);
 return 0;
}

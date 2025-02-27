
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct mwifiex_user_scan_cfg {TYPE_3__* chan_list; } ;
struct TYPE_5__ {TYPE_1__* wiphy; } ;
struct mwifiex_private {TYPE_2__ wdev; struct mwifiex_adapter* adapter; } ;
struct mwifiex_chan_scan_param_set {int radio_type; int chan_scan_mode_bitmap; void* max_scan_time; scalar_t__ chan_number; } ;
struct mwifiex_adapter {int specific_scan_time; int active_scan_time; int passive_scan_time; } ;
struct ieee80211_supported_band {int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_channel {int flags; scalar_t__ hw_value; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_6__ {scalar_t__ scan_time; } ;
struct TYPE_4__ {struct ieee80211_supported_band** bands; } ;


 int IEEE80211_CHAN_DISABLED ;
 int IEEE80211_CHAN_NO_IR ;
 int IEEE80211_CHAN_RADAR ;
 int MWIFIEX_DISABLE_CHAN_FILT ;
 int MWIFIEX_HIDDEN_SSID_REPORT ;
 int MWIFIEX_PASSIVE_SCAN ;
 int NUM_NL80211_BANDS ;
 void* cpu_to_le16 (int ) ;

__attribute__((used)) static int
mwifiex_scan_create_channel_list(struct mwifiex_private *priv,
     const struct mwifiex_user_scan_cfg
       *user_scan_in,
     struct mwifiex_chan_scan_param_set
       *scan_chan_list,
     u8 filtered_scan)
{
 enum nl80211_band band;
 struct ieee80211_supported_band *sband;
 struct ieee80211_channel *ch;
 struct mwifiex_adapter *adapter = priv->adapter;
 int chan_idx = 0, i;

 for (band = 0; (band < NUM_NL80211_BANDS) ; band++) {

  if (!priv->wdev.wiphy->bands[band])
   continue;

  sband = priv->wdev.wiphy->bands[band];

  for (i = 0; (i < sband->n_channels) ; i++) {
   ch = &sband->channels[i];
   if (ch->flags & IEEE80211_CHAN_DISABLED)
    continue;
   scan_chan_list[chan_idx].radio_type = band;

   if (user_scan_in &&
       user_scan_in->chan_list[0].scan_time)
    scan_chan_list[chan_idx].max_scan_time =
     cpu_to_le16((u16) user_scan_in->
     chan_list[0].scan_time);
   else if ((ch->flags & IEEE80211_CHAN_NO_IR) ||
     (ch->flags & IEEE80211_CHAN_RADAR))
    scan_chan_list[chan_idx].max_scan_time =
     cpu_to_le16(adapter->passive_scan_time);
   else
    scan_chan_list[chan_idx].max_scan_time =
     cpu_to_le16(adapter->active_scan_time);

   if (ch->flags & IEEE80211_CHAN_NO_IR)
    scan_chan_list[chan_idx].chan_scan_mode_bitmap
     |= (MWIFIEX_PASSIVE_SCAN |
         MWIFIEX_HIDDEN_SSID_REPORT);
   else
    scan_chan_list[chan_idx].chan_scan_mode_bitmap
     &= ~MWIFIEX_PASSIVE_SCAN;
   scan_chan_list[chan_idx].chan_number =
       (u32) ch->hw_value;

   scan_chan_list[chan_idx].chan_scan_mode_bitmap
     |= MWIFIEX_DISABLE_CHAN_FILT;

   if (filtered_scan &&
       !((ch->flags & IEEE80211_CHAN_NO_IR) ||
         (ch->flags & IEEE80211_CHAN_RADAR)))
    scan_chan_list[chan_idx].max_scan_time =
    cpu_to_le16(adapter->specific_scan_time);

   chan_idx++;
  }

 }
 return chan_idx;
}

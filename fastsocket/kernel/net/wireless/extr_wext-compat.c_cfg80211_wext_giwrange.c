
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct wireless_dev {TYPE_4__* wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_6__ {int level; int qual; int noise; int updated; } ;
struct TYPE_5__ {int qual; int level; int noise; int updated; } ;
struct iw_range {int we_version_source; int max_retry; int max_rts; int min_frag; int max_frag; int max_encoding_tokens; int enc_capa; int num_channels; int num_frequency; int scan_capa; int event_capa; TYPE_3__* freq; int num_encoding_sizes; int * encoding_size; TYPE_2__ max_qual; TYPE_1__ avg_qual; scalar_t__ min_rts; scalar_t__ min_retry; void* retry_flags; void* retry_capa; int we_version_compiled; } ;
struct iw_point {int length; } ;
struct ieee80211_supported_band {int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_channel {int flags; int center_freq; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_8__ {int signal_type; int n_cipher_suites; int* cipher_suites; scalar_t__ max_scan_ssids; struct ieee80211_supported_band** bands; } ;
struct TYPE_7__ {int e; int m; int i; } ;





 int EOPNOTSUPP ;
 int IEEE80211_CHAN_DISABLED ;
 int IEEE80211_NUM_BANDS ;
 int IW_ENC_CAPA_CIPHER_CCMP ;
 int IW_ENC_CAPA_CIPHER_TKIP ;
 int IW_ENC_CAPA_WPA ;
 int IW_ENC_CAPA_WPA2 ;
 int IW_EVENT_CAPA_SET (int ,int ) ;
 int IW_EVENT_CAPA_SET_KERNEL (int ) ;
 int IW_MAX_FREQUENCIES ;
 int IW_QUAL_DBM ;
 int IW_QUAL_LEVEL_UPDATED ;
 int IW_QUAL_NOISE_INVALID ;
 int IW_QUAL_QUAL_UPDATED ;
 void* IW_RETRY_LIMIT ;
 int IW_SCAN_CAPA_ESSID ;
 int SIOCGIWAP ;
 int SIOCGIWSCAN ;
 int WIRELESS_EXT ;




 int WLAN_KEY_LEN_WEP104 ;
 int WLAN_KEY_LEN_WEP40 ;
 int ieee80211_frequency_to_channel (int ) ;
 int memset (struct iw_range*,int ,int) ;

int cfg80211_wext_giwrange(struct net_device *dev,
      struct iw_request_info *info,
      struct iw_point *data, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct iw_range *range = (struct iw_range *) extra;
 enum ieee80211_band band;
 int i, c = 0;

 if (!wdev)
  return -EOPNOTSUPP;

 data->length = sizeof(struct iw_range);
 memset(range, 0, sizeof(struct iw_range));

 range->we_version_compiled = WIRELESS_EXT;
 range->we_version_source = 21;
 range->retry_capa = IW_RETRY_LIMIT;
 range->retry_flags = IW_RETRY_LIMIT;
 range->min_retry = 0;
 range->max_retry = 255;
 range->min_rts = 0;
 range->max_rts = 2347;
 range->min_frag = 256;
 range->max_frag = 2346;

 range->max_encoding_tokens = 4;

 range->max_qual.updated = IW_QUAL_NOISE_INVALID;

 switch (wdev->wiphy->signal_type) {
 case 133:
  break;
 case 134:
  range->max_qual.level = (u8)-110;
  range->max_qual.qual = 70;
  range->avg_qual.qual = 35;
  range->max_qual.updated |= IW_QUAL_DBM;
  range->max_qual.updated |= IW_QUAL_QUAL_UPDATED;
  range->max_qual.updated |= IW_QUAL_LEVEL_UPDATED;
  break;
 case 132:
  range->max_qual.level = 100;
  range->max_qual.qual = 100;
  range->avg_qual.qual = 50;
  range->max_qual.updated |= IW_QUAL_QUAL_UPDATED;
  range->max_qual.updated |= IW_QUAL_LEVEL_UPDATED;
  break;
 }

 range->avg_qual.level = range->max_qual.level / 2;
 range->avg_qual.noise = range->max_qual.noise / 2;
 range->avg_qual.updated = range->max_qual.updated;

 for (i = 0; i < wdev->wiphy->n_cipher_suites; i++) {
  switch (wdev->wiphy->cipher_suites[i]) {
  case 130:
   range->enc_capa |= (IW_ENC_CAPA_CIPHER_TKIP |
         IW_ENC_CAPA_WPA);
   break;

  case 131:
   range->enc_capa |= (IW_ENC_CAPA_CIPHER_CCMP |
         IW_ENC_CAPA_WPA2);
   break;

  case 128:
   range->encoding_size[range->num_encoding_sizes++] =
    WLAN_KEY_LEN_WEP40;
   break;

  case 129:
   range->encoding_size[range->num_encoding_sizes++] =
    WLAN_KEY_LEN_WEP104;
   break;
  }
 }

 for (band = 0; band < IEEE80211_NUM_BANDS; band ++) {
  struct ieee80211_supported_band *sband;

  sband = wdev->wiphy->bands[band];

  if (!sband)
   continue;

  for (i = 0; i < sband->n_channels && c < IW_MAX_FREQUENCIES; i++) {
   struct ieee80211_channel *chan = &sband->channels[i];

   if (!(chan->flags & IEEE80211_CHAN_DISABLED)) {
    range->freq[c].i =
     ieee80211_frequency_to_channel(
      chan->center_freq);
    range->freq[c].m = chan->center_freq;
    range->freq[c].e = 6;
    c++;
   }
  }
 }
 range->num_channels = c;
 range->num_frequency = c;

 IW_EVENT_CAPA_SET_KERNEL(range->event_capa);
 IW_EVENT_CAPA_SET(range->event_capa, SIOCGIWAP);
 IW_EVENT_CAPA_SET(range->event_capa, SIOCGIWSCAN);

 if (wdev->wiphy->max_scan_ssids > 0)
  range->scan_capa |= IW_SCAN_CAPA_ESSID;

 return 0;
}

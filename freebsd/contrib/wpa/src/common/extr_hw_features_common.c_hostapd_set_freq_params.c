
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hostapd_freq_params {int mode; int freq; int channel; int ht_enabled; int vht_enabled; int he_enabled; int sec_channel_offset; int center_freq1; int center_freq2; int bandwidth; } ;
struct he_capabilities {int dummy; } ;
typedef enum hostapd_hw_mode { ____Placeholder_hostapd_hw_mode } hostapd_hw_mode ;






 int MSG_ERROR ;
 int VHT_CAP_SUPP_CHAN_WIDTH_160MHZ ;
 int VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ ;
 int os_memset (struct hostapd_freq_params*,int ,int) ;
 int wpa_printf (int ,char*) ;

int hostapd_set_freq_params(struct hostapd_freq_params *data,
       enum hostapd_hw_mode mode,
       int freq, int channel, int ht_enabled,
       int vht_enabled, int he_enabled,
       int sec_channel_offset,
       int oper_chwidth, int center_segment0,
       int center_segment1, u32 vht_caps,
       struct he_capabilities *he_cap)
{
 if (!he_cap)
  he_enabled = 0;
 os_memset(data, 0, sizeof(*data));
 data->mode = mode;
 data->freq = freq;
 data->channel = channel;
 data->ht_enabled = ht_enabled;
 data->vht_enabled = vht_enabled;
 data->he_enabled = he_enabled;
 data->sec_channel_offset = sec_channel_offset;
 data->center_freq1 = freq + sec_channel_offset * 10;
 data->center_freq2 = 0;
 data->bandwidth = sec_channel_offset ? 40 : 20;

 if (data->vht_enabled) switch (oper_chwidth) {
 case 128:
  if (center_segment1 ||
      (center_segment0 != 0 &&
       5000 + center_segment0 * 5 != data->center_freq1 &&
       2407 + center_segment0 * 5 != data->center_freq1))
   return -1;
  break;
 case 129:
  if (!(vht_caps & VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ)) {
   wpa_printf(MSG_ERROR,
       "80+80 channel width is not supported!");
   return -1;
  }
  if (center_segment1 == center_segment0 + 4 ||
      center_segment1 == center_segment0 - 4)
   return -1;
  data->center_freq2 = 5000 + center_segment1 * 5;

 case 130:
  data->bandwidth = 80;
  if ((oper_chwidth == 130 &&
       center_segment1) ||
      (oper_chwidth == 129 &&
       !center_segment1) ||
      !sec_channel_offset)
   return -1;
  if (!center_segment0) {
   if (channel <= 48)
    center_segment0 = 42;
   else if (channel <= 64)
    center_segment0 = 58;
   else if (channel <= 112)
    center_segment0 = 106;
   else if (channel <= 128)
    center_segment0 = 122;
   else if (channel <= 144)
    center_segment0 = 138;
   else if (channel <= 161)
    center_segment0 = 155;
   data->center_freq1 = 5000 + center_segment0 * 5;
  } else {





   if (center_segment0 == channel + 6 ||
       center_segment0 == channel + 2 ||
       center_segment0 == channel - 2 ||
       center_segment0 == channel - 6)
    data->center_freq1 = 5000 + center_segment0 * 5;
   else
    return -1;
  }
  break;
 case 131:
  data->bandwidth = 160;
  if (!(vht_caps & (VHT_CAP_SUPP_CHAN_WIDTH_160MHZ |
      VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ))) {
   wpa_printf(MSG_ERROR,
       "160MHZ channel width is not supported!");
   return -1;
  }
  if (center_segment1)
   return -1;
  if (!sec_channel_offset)
   return -1;




  if (center_segment0 == channel + 14 ||
      center_segment0 == channel + 10 ||
      center_segment0 == channel + 6 ||
      center_segment0 == channel + 2 ||
      center_segment0 == channel - 2 ||
      center_segment0 == channel - 6 ||
      center_segment0 == channel - 10 ||
      center_segment0 == channel - 14)
   data->center_freq1 = 5000 + center_segment0 * 5;
  else
   return -1;
  break;
 }

 return 0;
}

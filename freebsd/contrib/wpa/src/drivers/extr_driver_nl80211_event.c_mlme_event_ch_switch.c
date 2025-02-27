
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ht_enabled; int ch_offset; void* freq; void* cf2; void* cf1; int ch_width; } ;
union wpa_event_data {TYPE_1__ ch_switch; } ;
struct wpa_driver_nl80211_data {void* assoc_freq; } ;
struct nlattr {int dummy; } ;
struct i802_bss {int ctx; void* freq; } ;
typedef enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;
typedef int data ;


 int EVENT_CH_SWITCH ;
 int EVENT_CH_SWITCH_STARTED ;
 int MSG_DEBUG ;
 int MSG_WARNING ;




 int calculate_chan_offset (void*,void*,void*,void*) ;
 int convert2width (void*) ;
 struct i802_bss* get_bss_ifindex (struct wpa_driver_nl80211_data*,int) ;
 void* nla_get_u32 (struct nlattr*) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_supplicant_event (int ,int ,union wpa_event_data*) ;

__attribute__((used)) static void mlme_event_ch_switch(struct wpa_driver_nl80211_data *drv,
     struct nlattr *ifindex, struct nlattr *freq,
     struct nlattr *type, struct nlattr *bw,
     struct nlattr *cf1, struct nlattr *cf2,
     int finished)
{
 struct i802_bss *bss;
 union wpa_event_data data;
 int ht_enabled = 1;
 int chan_offset = 0;
 int ifidx;

 wpa_printf(MSG_DEBUG, "nl80211: Channel switch%s event",
     finished ? "" : " started");

 if (!freq)
  return;

 ifidx = nla_get_u32(ifindex);
 bss = get_bss_ifindex(drv, ifidx);
 if (bss == ((void*)0)) {
  wpa_printf(MSG_WARNING, "nl80211: Unknown ifindex (%d) for channel switch, ignoring",
      ifidx);
  return;
 }

 if (type) {
  enum nl80211_channel_type ch_type = nla_get_u32(type);

  wpa_printf(MSG_DEBUG, "nl80211: Channel type: %d", ch_type);
  switch (ch_type) {
  case 128:
   ht_enabled = 0;
   break;
  case 131:
   break;
  case 129:
   chan_offset = 1;
   break;
  case 130:
   chan_offset = -1;
   break;
  }
 } else if (bw && cf1) {

  chan_offset = calculate_chan_offset(nla_get_u32(bw),
          nla_get_u32(freq),
          nla_get_u32(cf1),
          cf2 ? nla_get_u32(cf2) : 0);
 } else {
  wpa_printf(MSG_WARNING, "nl80211: Unknown secondary channel information - following channel definition calculations may fail");
 }

 os_memset(&data, 0, sizeof(data));
 data.ch_switch.freq = nla_get_u32(freq);
 data.ch_switch.ht_enabled = ht_enabled;
 data.ch_switch.ch_offset = chan_offset;
 if (bw)
  data.ch_switch.ch_width = convert2width(nla_get_u32(bw));
 if (cf1)
  data.ch_switch.cf1 = nla_get_u32(cf1);
 if (cf2)
  data.ch_switch.cf2 = nla_get_u32(cf2);

 if (finished)
  bss->freq = data.ch_switch.freq;
 drv->assoc_freq = data.ch_switch.freq;

 wpa_supplicant_event(bss->ctx, finished ?
        EVENT_CH_SWITCH : EVENT_CH_SWITCH_STARTED, &data);
}

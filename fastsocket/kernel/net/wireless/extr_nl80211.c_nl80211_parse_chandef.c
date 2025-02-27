
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct genl_info {scalar_t__* attrs; } ;
struct cfg80211_registered_device {int wiphy; } ;
struct cfg80211_chan_def {void* center_freq2; void* center_freq1; void* width; TYPE_1__* chan; } ;
typedef enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;
struct TYPE_3__ {int flags; } ;


 int EINVAL ;
 int IEEE80211_CHAN_DISABLED ;
 size_t NL80211_ATTR_CENTER_FREQ1 ;
 size_t NL80211_ATTR_CENTER_FREQ2 ;
 size_t NL80211_ATTR_CHANNEL_WIDTH ;
 size_t NL80211_ATTR_WIPHY_CHANNEL_TYPE ;
 size_t NL80211_ATTR_WIPHY_FREQ ;




 void* NL80211_CHAN_WIDTH_20_NOHT ;
 int cfg80211_chandef_create (struct cfg80211_chan_def*,TYPE_1__*,int) ;
 int cfg80211_chandef_usable (int *,struct cfg80211_chan_def*,int) ;
 int cfg80211_chandef_valid (struct cfg80211_chan_def*) ;
 TYPE_1__* ieee80211_get_channel (int *,void*) ;
 void* nla_get_u32 (scalar_t__) ;

__attribute__((used)) static int nl80211_parse_chandef(struct cfg80211_registered_device *rdev,
     struct genl_info *info,
     struct cfg80211_chan_def *chandef)
{
 u32 control_freq;

 if (!info->attrs[NL80211_ATTR_WIPHY_FREQ])
  return -EINVAL;

 control_freq = nla_get_u32(info->attrs[NL80211_ATTR_WIPHY_FREQ]);

 chandef->chan = ieee80211_get_channel(&rdev->wiphy, control_freq);
 chandef->width = NL80211_CHAN_WIDTH_20_NOHT;
 chandef->center_freq1 = control_freq;
 chandef->center_freq2 = 0;


 if (!chandef->chan || chandef->chan->flags & IEEE80211_CHAN_DISABLED)
  return -EINVAL;

 if (info->attrs[NL80211_ATTR_WIPHY_CHANNEL_TYPE]) {
  enum nl80211_channel_type chantype;

  chantype = nla_get_u32(
    info->attrs[NL80211_ATTR_WIPHY_CHANNEL_TYPE]);

  switch (chantype) {
  case 128:
  case 131:
  case 129:
  case 130:
   cfg80211_chandef_create(chandef, chandef->chan,
      chantype);
   break;
  default:
   return -EINVAL;
  }
 } else if (info->attrs[NL80211_ATTR_CHANNEL_WIDTH]) {
  chandef->width =
   nla_get_u32(info->attrs[NL80211_ATTR_CHANNEL_WIDTH]);
  if (info->attrs[NL80211_ATTR_CENTER_FREQ1])
   chandef->center_freq1 =
    nla_get_u32(
     info->attrs[NL80211_ATTR_CENTER_FREQ1]);
  if (info->attrs[NL80211_ATTR_CENTER_FREQ2])
   chandef->center_freq2 =
    nla_get_u32(
     info->attrs[NL80211_ATTR_CENTER_FREQ2]);
 }

 if (!cfg80211_chandef_valid(chandef))
  return -EINVAL;

 if (!cfg80211_chandef_usable(&rdev->wiphy, chandef,
         IEEE80211_CHAN_DISABLED))
  return -EINVAL;

 return 0;
}

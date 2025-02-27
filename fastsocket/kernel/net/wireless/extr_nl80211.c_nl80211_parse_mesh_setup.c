
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct mesh_setup {int user_mpm; void* is_secure; void* is_authenticated; int ie_len; int ie; int path_metric; int path_sel_proto; int sync_method; } ;
struct genl_info {int * attrs; struct cfg80211_registered_device** user_ptr; } ;
struct TYPE_2__ {int features; } ;
struct cfg80211_registered_device {TYPE_1__ wiphy; } ;


 int EINVAL ;
 int IEEE80211_PATH_METRIC_AIRTIME ;
 int IEEE80211_PATH_METRIC_VENDOR ;
 int IEEE80211_PATH_PROTOCOL_HWMP ;
 int IEEE80211_PATH_PROTOCOL_VENDOR ;
 int IEEE80211_SYNC_METHOD_NEIGHBOR_OFFSET ;
 int IEEE80211_SYNC_METHOD_VENDOR ;
 size_t NL80211_ATTR_MESH_SETUP ;
 int NL80211_FEATURE_USERSPACE_MPM ;
 int NL80211_MESH_SETUP_ATTR_MAX ;
 size_t NL80211_MESH_SETUP_ENABLE_VENDOR_METRIC ;
 size_t NL80211_MESH_SETUP_ENABLE_VENDOR_PATH_SEL ;
 size_t NL80211_MESH_SETUP_ENABLE_VENDOR_SYNC ;
 size_t NL80211_MESH_SETUP_IE ;
 size_t NL80211_MESH_SETUP_USERSPACE_AMPE ;
 size_t NL80211_MESH_SETUP_USERSPACE_AUTH ;
 size_t NL80211_MESH_SETUP_USERSPACE_MPM ;
 int is_valid_ie_attr (struct nlattr*) ;
 int nl80211_mesh_setup_params_policy ;
 int nla_data (struct nlattr*) ;
 void* nla_get_flag (struct nlattr*) ;
 scalar_t__ nla_get_u8 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 scalar_t__ nla_parse_nested (struct nlattr**,int ,int ,int ) ;

__attribute__((used)) static int nl80211_parse_mesh_setup(struct genl_info *info,
         struct mesh_setup *setup)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct nlattr *tb[NL80211_MESH_SETUP_ATTR_MAX + 1];

 if (!info->attrs[NL80211_ATTR_MESH_SETUP])
  return -EINVAL;
 if (nla_parse_nested(tb, NL80211_MESH_SETUP_ATTR_MAX,
        info->attrs[NL80211_ATTR_MESH_SETUP],
        nl80211_mesh_setup_params_policy))
  return -EINVAL;

 if (tb[NL80211_MESH_SETUP_ENABLE_VENDOR_SYNC])
  setup->sync_method =
  (nla_get_u8(tb[NL80211_MESH_SETUP_ENABLE_VENDOR_SYNC])) ?
   IEEE80211_SYNC_METHOD_VENDOR :
   IEEE80211_SYNC_METHOD_NEIGHBOR_OFFSET;

 if (tb[NL80211_MESH_SETUP_ENABLE_VENDOR_PATH_SEL])
  setup->path_sel_proto =
  (nla_get_u8(tb[NL80211_MESH_SETUP_ENABLE_VENDOR_PATH_SEL])) ?
   IEEE80211_PATH_PROTOCOL_VENDOR :
   IEEE80211_PATH_PROTOCOL_HWMP;

 if (tb[NL80211_MESH_SETUP_ENABLE_VENDOR_METRIC])
  setup->path_metric =
  (nla_get_u8(tb[NL80211_MESH_SETUP_ENABLE_VENDOR_METRIC])) ?
   IEEE80211_PATH_METRIC_VENDOR :
   IEEE80211_PATH_METRIC_AIRTIME;


 if (tb[NL80211_MESH_SETUP_IE]) {
  struct nlattr *ieattr =
   tb[NL80211_MESH_SETUP_IE];
  if (!is_valid_ie_attr(ieattr))
   return -EINVAL;
  setup->ie = nla_data(ieattr);
  setup->ie_len = nla_len(ieattr);
 }
 if (tb[NL80211_MESH_SETUP_USERSPACE_MPM] &&
     !(rdev->wiphy.features & NL80211_FEATURE_USERSPACE_MPM))
  return -EINVAL;
 setup->user_mpm = nla_get_flag(tb[NL80211_MESH_SETUP_USERSPACE_MPM]);
 setup->is_authenticated = nla_get_flag(tb[NL80211_MESH_SETUP_USERSPACE_AUTH]);
 setup->is_secure = nla_get_flag(tb[NL80211_MESH_SETUP_USERSPACE_AMPE]);
 if (setup->is_secure)
  setup->user_mpm = 1;

 return 0;
}

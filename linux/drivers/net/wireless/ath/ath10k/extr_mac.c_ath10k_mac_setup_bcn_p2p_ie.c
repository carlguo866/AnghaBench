
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ data; scalar_t__ len; } ;
struct TYPE_5__ {scalar_t__ variable; } ;
struct TYPE_6__ {TYPE_2__ beacon; } ;
struct ieee80211_mgmt {TYPE_3__ u; } ;
struct ath10k_vif {int vdev_id; TYPE_1__* vif; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;
struct TYPE_4__ {scalar_t__ type; int p2p; } ;


 int ENOENT ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int WLAN_OUI_TYPE_WFA_P2P ;
 int WLAN_OUI_WFA ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int ath10k_wmi_p2p_go_bcn_ie (struct ath10k*,int ,int const*) ;
 int * cfg80211_find_vendor_ie (int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int ath10k_mac_setup_bcn_p2p_ie(struct ath10k_vif *arvif,
           struct sk_buff *bcn)
{
 struct ath10k *ar = arvif->ar;
 struct ieee80211_mgmt *mgmt;
 const u8 *p2p_ie;
 int ret;

 if (arvif->vif->type != NL80211_IFTYPE_AP || !arvif->vif->p2p)
  return 0;

 mgmt = (void *)bcn->data;
 p2p_ie = cfg80211_find_vendor_ie(WLAN_OUI_WFA, WLAN_OUI_TYPE_WFA_P2P,
      mgmt->u.beacon.variable,
      bcn->len - (mgmt->u.beacon.variable -
           bcn->data));
 if (!p2p_ie)
  return -ENOENT;

 ret = ath10k_wmi_p2p_go_bcn_ie(ar, arvif->vdev_id, p2p_ie);
 if (ret) {
  ath10k_warn(ar, "failed to submit p2p go bcn ie for vdev %i: %d\n",
       arvif->vdev_id, ret);
  return ret;
 }

 return 0;
}

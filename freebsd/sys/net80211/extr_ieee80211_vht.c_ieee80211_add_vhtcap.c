
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct ieee80211_node {TYPE_2__* ni_vap; } ;
struct TYPE_3__ {int tx_highest; int tx_mcs_map; int rx_highest; int rx_mcs_map; } ;
struct ieee80211_ie_vhtcap {TYPE_1__ supp_mcs; int vht_cap_info; } ;
struct TYPE_4__ {scalar_t__ iv_opmode; } ;


 int ADDSHORT (int*,int ) ;
 int ADDWORD (int*,int ) ;
 int IEEE80211_ELEMID_VHT_CAP ;
 scalar_t__ IEEE80211_M_STA ;
 int ieee80211_vht_get_vhtcap_ie (struct ieee80211_node*,struct ieee80211_ie_vhtcap*,int) ;
 int memset (int*,char,int) ;

uint8_t *
ieee80211_add_vhtcap(uint8_t *frm, struct ieee80211_node *ni)
{
 struct ieee80211_ie_vhtcap vhtcap;
 int opmode;

 opmode = 0;
 if (ni->ni_vap->iv_opmode == IEEE80211_M_STA)
  opmode = 1;

 ieee80211_vht_get_vhtcap_ie(ni, &vhtcap, opmode);

 memset(frm, '\0', sizeof(struct ieee80211_ie_vhtcap));

 frm[0] = IEEE80211_ELEMID_VHT_CAP;
 frm[1] = sizeof(struct ieee80211_ie_vhtcap) - 2;
 frm += 2;


 ADDWORD(frm, vhtcap.vht_cap_info);


 ADDSHORT(frm, vhtcap.supp_mcs.rx_mcs_map);
 ADDSHORT(frm, vhtcap.supp_mcs.rx_highest);
 ADDSHORT(frm, vhtcap.supp_mcs.tx_mcs_map);
 ADDSHORT(frm, vhtcap.supp_mcs.tx_highest);

 return (frm);
}

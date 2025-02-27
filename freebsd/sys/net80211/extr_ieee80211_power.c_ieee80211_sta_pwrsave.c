
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {struct ieee80211_node* iv_bss; } ;
struct TYPE_2__ {scalar_t__ psq_len; } ;
struct ieee80211_node {int ni_flags; TYPE_1__ ni_psq; } ;


 int IEEE80211_MSG_POWER ;
 int IEEE80211_NODE_PWR_MGT ;
 int IEEE80211_NOTE (struct ieee80211vap*,int ,struct ieee80211_node*,char*,char*) ;
 int ieee80211_ref_node (struct ieee80211_node*) ;
 int ieee80211_send_nulldata (int ) ;
 int pwrsave_flushq (struct ieee80211_node*) ;

void
ieee80211_sta_pwrsave(struct ieee80211vap *vap, int enable)
{
 struct ieee80211_node *ni = vap->iv_bss;

 if (!((enable != 0) ^ ((ni->ni_flags & IEEE80211_NODE_PWR_MGT) != 0)))
  return;

 IEEE80211_NOTE(vap, IEEE80211_MSG_POWER, ni,
     "sta power save mode %s", enable ? "on" : "off");
 if (!enable) {
  ni->ni_flags &= ~IEEE80211_NODE_PWR_MGT;
  ieee80211_send_nulldata(ieee80211_ref_node(ni));






  if (ni->ni_psq.psq_len != 0)
   pwrsave_flushq(ni);
 } else {
  ni->ni_flags |= IEEE80211_NODE_PWR_MGT;
  ieee80211_send_nulldata(ieee80211_ref_node(ni));
 }
}

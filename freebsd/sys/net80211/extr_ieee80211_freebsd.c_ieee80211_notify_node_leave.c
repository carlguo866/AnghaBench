
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_vnet; } ;
struct ieee80211vap {struct ieee80211_node* iv_bss; struct ifnet* iv_ifp; } ;
struct ieee80211_node {int ni_macaddr; struct ieee80211vap* ni_vap; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET_QUIET (int ) ;
 int IEEE80211_MSG_NODE ;
 int IEEE80211_NOTE (struct ieee80211vap*,int ,struct ieee80211_node*,char*,char*) ;
 int LINK_STATE_DOWN ;
 int RTM_IEEE80211_DISASSOC ;
 int RTM_IEEE80211_LEAVE ;
 int if_link_state_change (struct ifnet*,int ) ;
 int notify_macaddr (struct ifnet*,int ,int ) ;
 int rt_ieee80211msg (struct ifnet*,int ,int *,int ) ;

void
ieee80211_notify_node_leave(struct ieee80211_node *ni)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct ifnet *ifp = vap->iv_ifp;

 CURVNET_SET_QUIET(ifp->if_vnet);
 IEEE80211_NOTE(vap, IEEE80211_MSG_NODE, ni, "%snode leave",
     (ni == vap->iv_bss) ? "bss " : "");

 if (ni == vap->iv_bss) {
  rt_ieee80211msg(ifp, RTM_IEEE80211_DISASSOC, ((void*)0), 0);
  if_link_state_change(ifp, LINK_STATE_DOWN);
 } else {

  notify_macaddr(ifp, RTM_IEEE80211_LEAVE, ni->ni_macaddr);
 }
 CURVNET_RESTORE();
}

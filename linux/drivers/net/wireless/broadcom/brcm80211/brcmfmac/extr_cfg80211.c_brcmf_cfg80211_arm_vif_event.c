
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_cfg80211_vif_event {int vif_event_lock; scalar_t__ action; struct brcmf_cfg80211_vif* vif; } ;
struct brcmf_cfg80211_vif {int dummy; } ;
struct brcmf_cfg80211_info {struct brcmf_cfg80211_vif_event vif_event; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void brcmf_cfg80211_arm_vif_event(struct brcmf_cfg80211_info *cfg,
      struct brcmf_cfg80211_vif *vif)
{
 struct brcmf_cfg80211_vif_event *event = &cfg->vif_event;

 spin_lock(&event->vif_event_lock);
 event->vif = vif;
 event->action = 0;
 spin_unlock(&event->vif_event_lock);
}

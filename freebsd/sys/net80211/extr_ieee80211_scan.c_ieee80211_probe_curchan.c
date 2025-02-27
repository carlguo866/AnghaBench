
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {TYPE_2__* ic_scan_methods; int ic_flags_ext; TYPE_1__* ic_curchan; } ;
struct TYPE_4__ {int (* sc_scan_probe_curchan ) (struct ieee80211vap*,int) ;} ;
struct TYPE_3__ {int ic_flags; } ;


 int IEEE80211_CHAN_PASSIVE ;
 int IEEE80211_FEXT_PROBECHAN ;
 int stub1 (struct ieee80211vap*,int) ;

void
ieee80211_probe_curchan(struct ieee80211vap *vap, int force)
{
 struct ieee80211com *ic = vap->iv_ic;

 if ((ic->ic_curchan->ic_flags & IEEE80211_CHAN_PASSIVE) && !force) {
  ic->ic_flags_ext |= IEEE80211_FEXT_PROBECHAN;
  return;
 }

 ic->ic_scan_methods->sc_scan_probe_curchan(vap, force);
}

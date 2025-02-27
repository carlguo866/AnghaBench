
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211com {scalar_t__ ic_nrunning; scalar_t__ ic_promisc; struct bwi_softc* ic_softc; } ;
struct bwi_softc {int sc_flags; TYPE_1__* sc_cur_regwin; } ;
struct bwi_mac {int dummy; } ;
struct TYPE_2__ {scalar_t__ rw_type; } ;


 int BWI_F_PROMISC ;
 int BWI_F_RUNNING ;
 int BWI_LOCK (struct bwi_softc*) ;
 scalar_t__ BWI_REGWIN_T_MAC ;
 int BWI_UNLOCK (struct bwi_softc*) ;
 int KASSERT (int,char*) ;
 int bwi_init_statechg (struct bwi_softc*,int) ;
 int bwi_mac_set_promisc (struct bwi_mac*,int) ;
 int bwi_stop_locked (struct bwi_softc*,int) ;
 int ieee80211_start_all (struct ieee80211com*) ;

__attribute__((used)) static void
bwi_parent(struct ieee80211com *ic)
{
 struct bwi_softc *sc = ic->ic_softc;
 int startall = 0;

 BWI_LOCK(sc);
 if (ic->ic_nrunning > 0) {
  struct bwi_mac *mac;
  int promisc = -1;

  KASSERT(sc->sc_cur_regwin->rw_type == BWI_REGWIN_T_MAC,
      ("current regwin type %d",
      sc->sc_cur_regwin->rw_type));
  mac = (struct bwi_mac *)sc->sc_cur_regwin;

  if (ic->ic_promisc > 0 && (sc->sc_flags & BWI_F_PROMISC) == 0) {
   promisc = 1;
   sc->sc_flags |= BWI_F_PROMISC;
  } else if (ic->ic_promisc == 0 &&
      (sc->sc_flags & BWI_F_PROMISC) != 0) {
   promisc = 0;
   sc->sc_flags &= ~BWI_F_PROMISC;
  }

  if (promisc >= 0)
   bwi_mac_set_promisc(mac, promisc);
 }
 if (ic->ic_nrunning > 0) {
  if ((sc->sc_flags & BWI_F_RUNNING) == 0) {
   bwi_init_statechg(sc, 1);
   startall = 1;
  }
 } else if (sc->sc_flags & BWI_F_RUNNING)
  bwi_stop_locked(sc, 1);
 BWI_UNLOCK(sc);
 if (startall)
  ieee80211_start_all(ic);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct rt2560_softc {int sc_flags; struct ieee80211com sc_ic; } ;


 int RAL_LOCK (struct rt2560_softc*) ;
 int RAL_UNLOCK (struct rt2560_softc*) ;
 int RT2560_F_RUNNING ;
 int ieee80211_start_all (struct ieee80211com*) ;
 int rt2560_init_locked (struct rt2560_softc*) ;

__attribute__((used)) static void
rt2560_init(void *priv)
{
 struct rt2560_softc *sc = priv;
 struct ieee80211com *ic = &sc->sc_ic;

 RAL_LOCK(sc);
 rt2560_init_locked(sc);
 RAL_UNLOCK(sc);

 if (sc->sc_flags & RT2560_F_RUNNING)
  ieee80211_start_all(ic);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ieee80211com {int dummy; } ;
struct run_softc {int mac_ver; struct ieee80211com sc_ic; } ;
struct ieee80211_channel {int dummy; } ;


 int EINVAL ;
 int IEEE80211_CHAN_ANY ;
 int ieee80211_chan2ieee (struct ieee80211com*,struct ieee80211_channel*) ;
 int run_delay (struct run_softc*,int) ;
 int run_iq_calib (struct run_softc*,int) ;
 int run_rt2870_set_chan (struct run_softc*,int) ;
 int run_rt3070_set_chan (struct run_softc*,int) ;
 int run_rt3572_set_chan (struct run_softc*,int) ;
 int run_rt3593_set_chan (struct run_softc*,int) ;
 int run_rt5390_set_chan (struct run_softc*,int) ;
 int run_rt5592_set_chan (struct run_softc*,int) ;
 int run_select_chan_group (struct run_softc*,int) ;

__attribute__((used)) static int
run_set_chan(struct run_softc *sc, struct ieee80211_channel *c)
{
 struct ieee80211com *ic = &sc->sc_ic;
 u_int chan, group;

 chan = ieee80211_chan2ieee(ic, c);
 if (chan == 0 || chan == IEEE80211_CHAN_ANY)
  return (EINVAL);

 if (sc->mac_ver == 0x5592)
  run_rt5592_set_chan(sc, chan);
 else if (sc->mac_ver >= 0x5390)
  run_rt5390_set_chan(sc, chan);
 else if (sc->mac_ver == 0x3593)
  run_rt3593_set_chan(sc, chan);
 else if (sc->mac_ver == 0x3572)
  run_rt3572_set_chan(sc, chan);
 else if (sc->mac_ver >= 0x3070)
  run_rt3070_set_chan(sc, chan);
 else
  run_rt2870_set_chan(sc, chan);


 if (chan <= 14)
  group = 0;
 else if (chan <= 64)
  group = 1;
 else if (chan <= 128)
  group = 2;
 else
  group = 3;


 run_select_chan_group(sc, group);

 run_delay(sc, 10);


 if (sc->mac_ver >= 0x5392)
  run_iq_calib(sc, chan);

 return (0);
}

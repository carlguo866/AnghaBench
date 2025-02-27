
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtwn_softc {int dummy; } ;
struct ieee80211_channel {int ic_flags; } ;


 scalar_t__ IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel*) ;
 int KASSERT (int ,char*) ;
 int rtwn_chan2centieee (struct ieee80211_channel*) ;

__attribute__((used)) static int
r88e_get_power_group(struct rtwn_softc *sc, struct ieee80211_channel *c)
{
 uint8_t chan;
 int group;

 chan = rtwn_chan2centieee(c);
 if (IEEE80211_IS_CHAN_2GHZ(c)) {
  if (chan <= 2) group = 0;
  else if (chan <= 5) group = 1;
  else if (chan <= 8) group = 2;
  else if (chan <= 11) group = 3;
  else if (chan <= 13) group = 4;
  else if (chan <= 14) group = 5;
  else {
   KASSERT(0, ("wrong 2GHz channel %d!\n", chan));
   return (-1);
  }
 } else {
  KASSERT(0, ("wrong channel band (flags %08X)\n", c->ic_flags));
  return (-1);
 }

 return (group);
}

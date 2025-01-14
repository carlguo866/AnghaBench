
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct run_softc {int dummy; } ;
struct ieee80211com {scalar_t__ ic_curmode; int ic_flags; scalar_t__ ic_protmode; struct run_softc* ic_softc; } ;
struct TYPE_2__ {int mcs; } ;


 int IEEE80211_F_USEPROT ;
 scalar_t__ IEEE80211_MODE_11A ;
 scalar_t__ IEEE80211_PROT_CTSONLY ;
 scalar_t__ IEEE80211_PROT_RTSCTS ;
 int RT2860_CCK_PROT_CFG ;
 int RT2860_OFDM_PROT_CFG ;
 int RT2860_PHY_OFDM ;
 int RT2860_PROT_CTRL_CTS ;
 int RT2860_PROT_CTRL_RTS_CTS ;
 int RT2860_PROT_NAV_SHORT ;
 size_t RT2860_RIDX_CCK11 ;
 size_t RT2860_RIDX_OFDM6 ;
 int RT2860_RTSTH_EN ;
 int RT2860_TXOP_ALLOW_ALL ;
 TYPE_1__* rt2860_rates ;
 int run_write (struct run_softc*,int ,int) ;

__attribute__((used)) static void
run_updateprot_cb(void *arg)
{
 struct ieee80211com *ic = arg;
 struct run_softc *sc = ic->ic_softc;
 uint32_t tmp;

 tmp = RT2860_RTSTH_EN | RT2860_PROT_NAV_SHORT | RT2860_TXOP_ALLOW_ALL;

 tmp |= (ic->ic_curmode == IEEE80211_MODE_11A) ?
     rt2860_rates[RT2860_RIDX_OFDM6].mcs | RT2860_PHY_OFDM :
     rt2860_rates[RT2860_RIDX_CCK11].mcs;


 run_write(sc, RT2860_CCK_PROT_CFG, tmp);
 if (ic->ic_flags & IEEE80211_F_USEPROT) {
  if (ic->ic_protmode == IEEE80211_PROT_RTSCTS)
   tmp |= RT2860_PROT_CTRL_RTS_CTS;
  else if (ic->ic_protmode == IEEE80211_PROT_CTSONLY)
   tmp |= RT2860_PROT_CTRL_CTS;
 }
 run_write(sc, RT2860_OFDM_PROT_CFG, tmp);
}

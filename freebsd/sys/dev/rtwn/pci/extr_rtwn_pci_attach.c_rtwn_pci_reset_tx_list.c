
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtwn_vap {int id; } ;
struct rtwn_tx_ring {struct rtwn_tx_data* tx_data; } ;
struct rtwn_tx_data {TYPE_1__* ni; } ;
struct rtwn_softc {int dummy; } ;
struct rtwn_pci_softc {struct rtwn_tx_ring* tx_ring; } ;
struct ieee80211vap {scalar_t__ iv_opmode; } ;
struct TYPE_2__ {struct ieee80211vap* ni_vap; } ;


 scalar_t__ IEEE80211_M_HOSTAP ;
 scalar_t__ IEEE80211_M_IBSS ;
 int RTWN_PCI_BEACON_QUEUE ;
 struct rtwn_pci_softc* RTWN_PCI_SOFTC (struct rtwn_softc*) ;
 int RTWN_PCI_TX_LIST_COUNT ;
 int RTWN_PORT_COUNT ;
 struct rtwn_vap* RTWN_VAP (struct ieee80211vap*) ;
 int ieee80211_free_node (TYPE_1__*) ;
 int rtwn_pci_reset_beacon_ring (struct rtwn_softc*,int) ;
 int rtwn_pci_reset_tx_ring_stopped (struct rtwn_softc*,int) ;

__attribute__((used)) static void
rtwn_pci_reset_tx_list(struct rtwn_softc *sc, struct ieee80211vap *vap,
    int qid)
{
 int i;

 if (vap == ((void*)0)) {
  if (qid != RTWN_PCI_BEACON_QUEUE) {



   rtwn_pci_reset_tx_ring_stopped(sc, qid);
  } else {
   for (i = 0; i < RTWN_PORT_COUNT; i++)
    rtwn_pci_reset_beacon_ring(sc, i);
  }
 } else if (qid == RTWN_PCI_BEACON_QUEUE &&
     (vap->iv_opmode == IEEE80211_M_HOSTAP ||
      vap->iv_opmode == IEEE80211_M_IBSS)) {
  struct rtwn_vap *uvp = RTWN_VAP(vap);

  rtwn_pci_reset_beacon_ring(sc, uvp->id);
 } else {
  struct rtwn_pci_softc *pc = RTWN_PCI_SOFTC(sc);
  struct rtwn_tx_ring *ring = &pc->tx_ring[qid];

  for (i = 0; i < RTWN_PCI_TX_LIST_COUNT; i++) {
   struct rtwn_tx_data *data = &ring->tx_data[i];
   if (data->ni != ((void*)0) && data->ni->ni_vap == vap) {






    ieee80211_free_node(data->ni);
    data->ni = ((void*)0);
   }
  }
 }
}

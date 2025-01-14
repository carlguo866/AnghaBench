
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ti_rx_jumbo_ring_map; int ti_rx_jumbo_ring_tag; int ** ti_rx_jumbo_chain; int ti_rx_jumbo_tag; int * ti_rx_jumbo_maps; } ;
struct TYPE_3__ {int ti_rx_jumbo_ring; } ;
struct ti_softc {TYPE_2__ ti_cdata; TYPE_1__ ti_rdata; } ;
typedef int bus_dmamap_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int TI_JUMBO_RX_RING_CNT ;
 int TI_JUMBO_RX_RING_SZ ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bzero (int ,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
ti_free_rx_ring_jumbo(struct ti_softc *sc)
{
 bus_dmamap_t map;
 int i;

 for (i = 0; i < TI_JUMBO_RX_RING_CNT; i++) {
  if (sc->ti_cdata.ti_rx_jumbo_chain[i] != ((void*)0)) {
   map = sc->ti_cdata.ti_rx_jumbo_maps[i];
   bus_dmamap_sync(sc->ti_cdata.ti_rx_jumbo_tag, map,
       BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(sc->ti_cdata.ti_rx_jumbo_tag, map);
   m_freem(sc->ti_cdata.ti_rx_jumbo_chain[i]);
   sc->ti_cdata.ti_rx_jumbo_chain[i] = ((void*)0);
  }
 }
 bzero(sc->ti_rdata.ti_rx_jumbo_ring, TI_JUMBO_RX_RING_SZ);
 bus_dmamap_sync(sc->ti_cdata.ti_rx_jumbo_ring_tag,
     sc->ti_cdata.ti_rx_jumbo_ring_map, BUS_DMASYNC_PREWRITE);
}

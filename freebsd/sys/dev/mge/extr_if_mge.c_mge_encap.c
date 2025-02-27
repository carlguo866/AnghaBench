
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mge_softc {int tx_desc_curr; int tx_desc_used_count; int mge_desc_dtag; int mge_tx_dtag; struct mge_desc_wrapper* mge_tx_desc; struct ifnet* ifp; } ;
struct mge_desc_wrapper {int desc_dmap; TYPE_1__* mge_desc; struct mbuf* buffer; int buffer_dmap; } ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
typedef int bus_dmamap_t ;
struct TYPE_5__ {int ds_addr; int ds_len; } ;
typedef TYPE_2__ bus_dma_segment_t ;
struct TYPE_4__ {int cmd_status; int buffer; int byte_count; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_NOWAIT ;
 int MGE_DMA_OWNED ;
 int MGE_TX_DESC_NUM ;
 int MGE_TX_EN_INT ;
 int MGE_TX_ETH_CRC ;
 int MGE_TX_FIRST ;
 int MGE_TX_LAST ;
 int MGE_TX_PADDING ;
 int bus_dmamap_load_mbuf_sg (int ,int ,struct mbuf*,TYPE_2__*,int*,int ) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (struct mbuf*) ;
 int mge_offload_setup_descriptor (struct mge_softc*,struct mge_desc_wrapper*) ;

__attribute__((used)) static int
mge_encap(struct mge_softc *sc, struct mbuf *m0)
{
 struct mge_desc_wrapper *dw = ((void*)0);
 struct ifnet *ifp;
 bus_dma_segment_t segs[MGE_TX_DESC_NUM];
 bus_dmamap_t mapp;
 int error;
 int seg, nsegs;
 int desc_no;

 ifp = sc->ifp;


 desc_no = sc->tx_desc_curr;
 dw = &sc->mge_tx_desc[desc_no];
 mapp = dw->buffer_dmap;


 error = bus_dmamap_load_mbuf_sg(sc->mge_tx_dtag, mapp, m0, segs, &nsegs,
     BUS_DMA_NOWAIT);
 if (error != 0) {
  m_freem(m0);
  return (error);
 }


 if (nsegs != 1) {
  bus_dmamap_unload(sc->mge_tx_dtag, mapp);
  m_freem(m0);
  return (-1);
 }

 bus_dmamap_sync(sc->mge_tx_dtag, mapp, BUS_DMASYNC_PREWRITE);


 for (seg = 0; seg < nsegs; seg++) {
  dw->mge_desc->byte_count = segs[seg].ds_len;
  dw->mge_desc->buffer = segs[seg].ds_addr;
  dw->buffer = m0;
  dw->mge_desc->cmd_status = 0;
  if (seg == 0)
   mge_offload_setup_descriptor(sc, dw);
  dw->mge_desc->cmd_status |= MGE_TX_LAST | MGE_TX_FIRST |
      MGE_TX_ETH_CRC | MGE_TX_EN_INT | MGE_TX_PADDING |
      MGE_DMA_OWNED;
 }

 bus_dmamap_sync(sc->mge_desc_dtag, dw->desc_dmap,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 sc->tx_desc_curr = (++sc->tx_desc_curr) % MGE_TX_DESC_NUM;
 sc->tx_desc_used_count++;
 return (0);
}

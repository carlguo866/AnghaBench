
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint64_t ;
struct vmxnet3_txq_shared {int dummy; } ;
struct TYPE_4__ {scalar_t__ idi_size; scalar_t__ idi_vaddr; } ;
struct vmxnet3_softc {struct vmxnet3_rxqueue* vmx_rxq; TYPE_1__ vmx_qs_dma; TYPE_3__* vmx_scctx; } ;
struct vmxnet3_rxring {void* vxrxr_paddr; struct vmxnet3_rxdesc* vxrxr_rxd; } ;
struct TYPE_5__ {struct vmxnet3_rxcompdesc* rxcd; } ;
struct vmxnet3_comp_ring {void* vxcr_paddr; TYPE_2__ vxcr_u; } ;
struct vmxnet3_rxqueue {struct vmxnet3_rxring* vxrxq_cmd_ring; struct vmxnet3_comp_ring vxrxq_comp_ring; struct vmxnet3_rxq_shared* vxrxq_rs; } ;
struct vmxnet3_rxq_shared {int dummy; } ;
struct vmxnet3_rxdesc {int dummy; } ;
struct vmxnet3_rxcompdesc {int dummy; } ;
typedef TYPE_3__* if_softc_ctx_t ;
typedef int if_ctx_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_6__ {int isc_ntxqsets; } ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct vmxnet3_softc* iflib_get_softc (int ) ;
 struct vmxnet3_rxqueue* malloc (int,int ,int) ;
 int vmxnet3_init_rxq (struct vmxnet3_softc*,int,int) ;
 int vmxnet3_queues_shared_alloc (struct vmxnet3_softc*) ;

__attribute__((used)) static int
vmxnet3_rx_queues_alloc(if_ctx_t ctx, caddr_t *vaddrs, uint64_t *paddrs,
    int nrxqs, int nrxqsets)
{
 struct vmxnet3_softc *sc;
 if_softc_ctx_t scctx;
 int q;
 int i;
 int error;
 caddr_t kva;

 sc = iflib_get_softc(ctx);
 scctx = sc->vmx_scctx;


 sc->vmx_rxq = malloc(sizeof(struct vmxnet3_rxqueue) *
     nrxqsets, M_DEVBUF, M_NOWAIT | M_ZERO);
 if (sc->vmx_rxq == ((void*)0))
  return (ENOMEM);


 for (q = 0; q < nrxqsets; q++)
  vmxnet3_init_rxq(sc, q, nrxqs);







 if (sc->vmx_qs_dma.idi_size == 0) {
  error = vmxnet3_queues_shared_alloc(sc);
  if (error)
   return (error);
 }

 kva = sc->vmx_qs_dma.idi_vaddr +
     scctx->isc_ntxqsets * sizeof(struct vmxnet3_txq_shared);
 for (q = 0; q < nrxqsets; q++) {
  sc->vmx_rxq[q].vxrxq_rs = (struct vmxnet3_rxq_shared *) kva;
  kva += sizeof(struct vmxnet3_rxq_shared);
 }


 for (q = 0; q < nrxqsets; q++) {
  struct vmxnet3_rxqueue *rxq;
  struct vmxnet3_rxring *rxr;
  struct vmxnet3_comp_ring *rxc;

  rxq = &sc->vmx_rxq[q];
  rxc = &rxq->vxrxq_comp_ring;


  rxc->vxcr_u.rxcd =
      (struct vmxnet3_rxcompdesc *) vaddrs[q * nrxqs + 0];
  rxc->vxcr_paddr = paddrs[q * nrxqs + 0];


  for (i = 0; i < nrxqs - 1; i++) {
   rxr = &rxq->vxrxq_cmd_ring[i];

   rxr->vxrxr_rxd =
       (struct vmxnet3_rxdesc *) vaddrs[q * nrxqs + 1 + i];
   rxr->vxrxr_paddr = paddrs[q * nrxqs + 1 + i];
  }
 }

 return (0);
}

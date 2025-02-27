
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* if_softc_ctx_t ;
typedef TYPE_2__* if_shared_ctx_t ;
typedef TYPE_3__* if_ctx_t ;
typedef int device_t ;
struct TYPE_5__ {int isc_ntxqsets; int isc_nrxqsets; int isc_msix_bar; int isc_vectors; int isc_intr; scalar_t__ isc_disable_msix; } ;
struct TYPE_7__ {int ifc_sysctl_ntxqs; int ifc_sysctl_nrxqs; scalar_t__ ifc_sysctl_qs_eq_override; int * ifc_msix_mem; int ifc_cpus; TYPE_1__ ifc_softc_ctx; TYPE_2__* ifc_sctx; int ifc_dev; } ;
struct TYPE_6__ {int isc_admin_intrcnt; } ;


 int CPU_COUNT (int *) ;
 int IFLIB_INTR_LEGACY ;
 int IFLIB_INTR_MSI ;
 int IFLIB_INTR_MSIX ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int device_printf (int ,char*,...) ;
 int imax (int,int) ;
 int imin (int,int) ;
 int min (int,int) ;
 int mp_ncpus ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 int pci_alloc_msix (int ,int*) ;
 int pci_msi_count (int ) ;
 int pci_msix_count (int ) ;
 int pci_release_msi (int ) ;
 int rss_getnumbuckets () ;

__attribute__((used)) static int
iflib_msix_init(if_ctx_t ctx)
{
 device_t dev = ctx->ifc_dev;
 if_shared_ctx_t sctx = ctx->ifc_sctx;
 if_softc_ctx_t scctx = &ctx->ifc_softc_ctx;
 int admincnt, bar, err, iflib_num_rx_queues, iflib_num_tx_queues;
 int msgs, queuemsgs, queues, rx_queues, tx_queues, vectors;

 iflib_num_tx_queues = ctx->ifc_sysctl_ntxqs;
 iflib_num_rx_queues = ctx->ifc_sysctl_nrxqs;

 if (bootverbose)
  device_printf(dev, "msix_init qsets capped at %d\n",
      imax(scctx->isc_ntxqsets, scctx->isc_nrxqsets));


 if (scctx->isc_disable_msix)
  goto msi;


 if ((msgs = pci_msix_count(dev)) == 0) {
  if (bootverbose)
   device_printf(dev, "MSI-X not supported or disabled\n");
  goto msi;
 }

 bar = ctx->ifc_softc_ctx.isc_msix_bar;







 if (bar != -1) {
  ctx->ifc_msix_mem = bus_alloc_resource_any(dev,
             SYS_RES_MEMORY, &bar, RF_ACTIVE);
  if (ctx->ifc_msix_mem == ((void*)0)) {
   device_printf(dev, "Unable to map MSI-X table\n");
   goto msi;
  }
 }

 admincnt = sctx->isc_admin_intrcnt;




 queuemsgs = msgs - admincnt;




 queues = queuemsgs;

 queues = imin(CPU_COUNT(&ctx->ifc_cpus), queues);
 if (bootverbose)
  device_printf(dev,
      "intr CPUs: %d queue msgs: %d admincnt: %d\n",
      CPU_COUNT(&ctx->ifc_cpus), queuemsgs, admincnt);





 if (iflib_num_rx_queues > 0 && iflib_num_rx_queues < queuemsgs - admincnt)
  rx_queues = iflib_num_rx_queues;
 else
  rx_queues = queues;

 if (rx_queues > scctx->isc_nrxqsets)
  rx_queues = scctx->isc_nrxqsets;




 if (iflib_num_tx_queues > 0 && iflib_num_tx_queues < queues)
  tx_queues = iflib_num_tx_queues;
 else
  tx_queues = mp_ncpus;

 if (tx_queues > scctx->isc_ntxqsets)
  tx_queues = scctx->isc_ntxqsets;

 if (ctx->ifc_sysctl_qs_eq_override == 0) {






  tx_queues = min(rx_queues, tx_queues);
  rx_queues = min(rx_queues, tx_queues);
 }

 vectors = rx_queues + admincnt;
 if (msgs < vectors) {
  device_printf(dev,
      "insufficient number of MSI-X vectors "
      "(supported %d, need %d)\n", msgs, vectors);
  goto msi;
 }

 device_printf(dev, "Using %d RX queues %d TX queues\n", rx_queues,
     tx_queues);
 msgs = vectors;
 if ((err = pci_alloc_msix(dev, &vectors)) == 0) {
  if (vectors != msgs) {
   device_printf(dev,
       "Unable to allocate sufficient MSI-X vectors "
       "(got %d, need %d)\n", vectors, msgs);
   pci_release_msi(dev);
   if (bar != -1) {
    bus_release_resource(dev, SYS_RES_MEMORY, bar,
        ctx->ifc_msix_mem);
    ctx->ifc_msix_mem = ((void*)0);
   }
   goto msi;
  }
  device_printf(dev, "Using MSI-X interrupts with %d vectors\n",
      vectors);
  scctx->isc_vectors = vectors;
  scctx->isc_nrxqsets = rx_queues;
  scctx->isc_ntxqsets = tx_queues;
  scctx->isc_intr = IFLIB_INTR_MSIX;

  return (vectors);
 } else {
  device_printf(dev,
      "failed to allocate %d MSI-X vectors, err: %d\n", vectors,
      err);
  if (bar != -1) {
   bus_release_resource(dev, SYS_RES_MEMORY, bar,
       ctx->ifc_msix_mem);
   ctx->ifc_msix_mem = ((void*)0);
  }
 }

msi:
 vectors = pci_msi_count(dev);
 scctx->isc_nrxqsets = 1;
 scctx->isc_ntxqsets = 1;
 scctx->isc_vectors = vectors;
 if (vectors == 1 && pci_alloc_msi(dev, &vectors) == 0) {
  device_printf(dev,"Using an MSI interrupt\n");
  scctx->isc_intr = IFLIB_INTR_MSI;
 } else {
  scctx->isc_vectors = 1;
  device_printf(dev,"Using a Legacy interrupt\n");
  scctx->isc_intr = IFLIB_INTR_LEGACY;
 }

 return (vectors);
}

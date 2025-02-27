
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_endp_ctx {int dwEpCtx0; } ;
struct xhci_dev_ctx {struct xhci_endp_ctx* ctx_ep; } ;
struct pci_xhci_dev_ep {int * ep_xfer; int * ep_sctx_trbs; } ;
struct pci_xhci_dev_emu {struct pci_xhci_dev_ep* eps; struct xhci_dev_ctx* dev_ctx; } ;


 int DPRINTF (char*) ;
 scalar_t__ XHCI_EPCTX_0_MAXP_STREAMS_GET (int) ;
 int XHCI_ST_EPCTX_DISABLED ;
 int free (int *) ;
 int memset (struct pci_xhci_dev_ep*,int ,int) ;

__attribute__((used)) static void
pci_xhci_disable_ep(struct pci_xhci_dev_emu *dev, int epid)
{
 struct xhci_dev_ctx *dev_ctx;
 struct pci_xhci_dev_ep *devep;
 struct xhci_endp_ctx *ep_ctx;

 DPRINTF(("pci_xhci disable_ep %d\r\n", epid));

 dev_ctx = dev->dev_ctx;
 ep_ctx = &dev_ctx->ctx_ep[epid];
 ep_ctx->dwEpCtx0 = (ep_ctx->dwEpCtx0 & ~0x7) | XHCI_ST_EPCTX_DISABLED;

 devep = &dev->eps[epid];
 if (XHCI_EPCTX_0_MAXP_STREAMS_GET(ep_ctx->dwEpCtx0) > 0 &&
     devep->ep_sctx_trbs != ((void*)0))
   free(devep->ep_sctx_trbs);

 if (devep->ep_xfer != ((void*)0)) {
  free(devep->ep_xfer);
  devep->ep_xfer = ((void*)0);
 }

 memset(devep, 0, sizeof(struct pci_xhci_dev_ep));
}

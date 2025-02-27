
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct xhci_trb {int dwTrb3; int qwTrb0; } ;
struct TYPE_9__ {int dwSctx0; } ;
struct TYPE_8__ {int dwInCtx0; int dwInCtx1; int dwInCtx7; } ;
struct xhci_input_dev_ctx {TYPE_4__ ctx_slot; struct xhci_endp_ctx* ctx_ep; TYPE_3__ ctx_input; } ;
struct xhci_endp_ctx {void* dwEpCtx0; int dwEpCtx4; int qwEpCtx2; int dwEpCtx1; } ;
struct TYPE_10__ {void* dwSctx3; int dwSctx2; int dwSctx1; void* dwSctx0; } ;
struct xhci_dev_ctx {TYPE_5__ ctx_slot; struct xhci_endp_ctx* ctx_ep; } ;
struct pci_xhci_softc {int dummy; } ;
struct TYPE_7__ {scalar_t__ hci_address; } ;
struct pci_xhci_dev_emu {scalar_t__ dev_slotstate; struct xhci_dev_ctx* dev_ctx; TYPE_2__ hci; int dev_sc; TYPE_1__* dev_ue; } ;
struct TYPE_6__ {int (* ue_stop ) (int ) ;} ;


 int DPRINTF (char*) ;
 void* FIELD_COPY (void*,int ,int,int) ;
 void* FIELD_REPLACE (void*,int,int,int) ;
 struct xhci_input_dev_ctx* XHCI_GADDR (struct pci_xhci_softc*,int) ;
 int XHCI_INCTX_0_DROP_MASK (int) ;
 int XHCI_INCTX_1_ADD_MASK (int) ;
 struct pci_xhci_dev_emu* XHCI_SLOTDEV_PTR (struct pci_xhci_softc*,int ) ;
 scalar_t__ XHCI_ST_ADDRESSED ;
 scalar_t__ XHCI_ST_CONFIGURED ;
 int XHCI_ST_EPCTX_RUNNING ;
 int XHCI_ST_SLCTX_ADDRESSED ;
 int XHCI_ST_SLCTX_CONFIGURED ;
 int XHCI_TRB_3_DCEP_BIT ;
 int XHCI_TRB_ERROR_SLOT_NOT_ON ;
 int XHCI_TRB_ERROR_SUCCESS ;
 int assert (int ) ;
 int memcpy (struct xhci_endp_ctx*,struct xhci_endp_ctx*,int) ;
 int pci_xhci_disable_ep (struct pci_xhci_dev_emu*,int) ;
 struct xhci_dev_ctx* pci_xhci_get_dev_ctx (struct pci_xhci_softc*,int ) ;
 int pci_xhci_init_ep (struct pci_xhci_dev_emu*,int) ;
 int stub1 (int ) ;

__attribute__((used)) static uint32_t
pci_xhci_cmd_config_ep(struct pci_xhci_softc *sc, uint32_t slot,
    struct xhci_trb *trb)
{
 struct xhci_input_dev_ctx *input_ctx;
 struct pci_xhci_dev_emu *dev;
 struct xhci_dev_ctx *dev_ctx;
 struct xhci_endp_ctx *ep_ctx, *iep_ctx;
 uint32_t cmderr;
 int i;

 cmderr = XHCI_TRB_ERROR_SUCCESS;

 DPRINTF(("pci_xhci config_ep slot %u\r\n", slot));

 dev = XHCI_SLOTDEV_PTR(sc, slot);
 assert(dev != ((void*)0));

 if ((trb->dwTrb3 & XHCI_TRB_3_DCEP_BIT) != 0) {
  DPRINTF(("pci_xhci config_ep - deconfigure ep slot %u\r\n",
          slot));
  if (dev->dev_ue->ue_stop != ((void*)0))
   dev->dev_ue->ue_stop(dev->dev_sc);

  dev->dev_slotstate = XHCI_ST_ADDRESSED;

  dev->hci.hci_address = 0;
  dev_ctx = pci_xhci_get_dev_ctx(sc, slot);


  dev_ctx->ctx_slot.dwSctx0 = FIELD_REPLACE(
      dev_ctx->ctx_slot.dwSctx0, 1, 0x1F, 27);


  dev_ctx->ctx_slot.dwSctx3 = FIELD_REPLACE(
      dev_ctx->ctx_slot.dwSctx3, XHCI_ST_SLCTX_ADDRESSED,
      0x1F, 27);


  for (i = 2; i < 32; i++)
   pci_xhci_disable_ep(dev, i);

  cmderr = XHCI_TRB_ERROR_SUCCESS;

  goto done;
 }

 if (dev->dev_slotstate < XHCI_ST_ADDRESSED) {
  DPRINTF(("pci_xhci: config_ep slotstate x%x != addressed\r\n",
          dev->dev_slotstate));
  cmderr = XHCI_TRB_ERROR_SLOT_NOT_ON;
  goto done;
 }
 input_ctx = XHCI_GADDR(sc, trb->qwTrb0 & ~0xFUL);
 dev_ctx = dev->dev_ctx;
 DPRINTF(("pci_xhci: config_ep inputctx: D:x%08x A:x%08x 7:x%08x\r\n",
  input_ctx->ctx_input.dwInCtx0, input_ctx->ctx_input.dwInCtx1,
         input_ctx->ctx_input.dwInCtx7));

 for (i = 2; i <= 31; i++) {
  ep_ctx = &dev_ctx->ctx_ep[i];

  if (input_ctx->ctx_input.dwInCtx0 &
      XHCI_INCTX_0_DROP_MASK(i)) {
   DPRINTF((" config ep - dropping ep %d\r\n", i));
   pci_xhci_disable_ep(dev, i);
  }

  if (input_ctx->ctx_input.dwInCtx1 &
      XHCI_INCTX_1_ADD_MASK(i)) {
   iep_ctx = &input_ctx->ctx_ep[i];

   DPRINTF((" enable ep[%d]  %08x %08x %016lx %08x\r\n",
      i, iep_ctx->dwEpCtx0, iep_ctx->dwEpCtx1,
      iep_ctx->qwEpCtx2, iep_ctx->dwEpCtx4));

   memcpy(ep_ctx, iep_ctx, sizeof(struct xhci_endp_ctx));

   pci_xhci_init_ep(dev, i);


   ep_ctx->dwEpCtx0 = FIELD_REPLACE(
       ep_ctx->dwEpCtx0, XHCI_ST_EPCTX_RUNNING, 0x7, 0);
  }
 }


 dev_ctx->ctx_slot.dwSctx3 = FIELD_REPLACE(
     dev_ctx->ctx_slot.dwSctx3, XHCI_ST_SLCTX_CONFIGURED, 0x1F, 27);
 dev_ctx->ctx_slot.dwSctx0 = FIELD_COPY(
     dev_ctx->ctx_slot.dwSctx0, input_ctx->ctx_slot.dwSctx0, 0x1F, 27);
 dev->dev_slotstate = XHCI_ST_CONFIGURED;

 DPRINTF(("EP configured; slot %u [0]=0x%08x [1]=0x%08x [2]=0x%08x "
          "[3]=0x%08x\r\n",
     slot, dev_ctx->ctx_slot.dwSctx0, dev_ctx->ctx_slot.dwSctx1,
     dev_ctx->ctx_slot.dwSctx2, dev_ctx->ctx_slot.dwSctx3));

done:
 return (cmderr);
}

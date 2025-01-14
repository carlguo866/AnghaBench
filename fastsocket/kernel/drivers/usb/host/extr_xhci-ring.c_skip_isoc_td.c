
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_virt_ep {int dummy; } ;
struct xhci_transfer_event {int buffer; } ;
struct xhci_td {scalar_t__ last_trb; TYPE_1__* urb; } ;
struct xhci_ring {scalar_t__ dequeue; } ;
struct xhci_hcd {int dummy; } ;
struct usb_iso_packet_descriptor {scalar_t__ actual_length; int status; } ;
struct urb_priv {int td_cnt; } ;
struct TYPE_2__ {struct usb_iso_packet_descriptor* iso_frame_desc; struct urb_priv* hcpriv; } ;


 int EXDEV ;
 int finish_td (struct xhci_hcd*,struct xhci_td*,int *,struct xhci_transfer_event*,struct xhci_virt_ep*,int*,int) ;
 int inc_deq (struct xhci_hcd*,struct xhci_ring*) ;
 int le64_to_cpu (int ) ;
 struct xhci_ring* xhci_dma_to_transfer_ring (struct xhci_virt_ep*,int ) ;

__attribute__((used)) static int skip_isoc_td(struct xhci_hcd *xhci, struct xhci_td *td,
   struct xhci_transfer_event *event,
   struct xhci_virt_ep *ep, int *status)
{
 struct xhci_ring *ep_ring;
 struct urb_priv *urb_priv;
 struct usb_iso_packet_descriptor *frame;
 int idx;

 ep_ring = xhci_dma_to_transfer_ring(ep, le64_to_cpu(event->buffer));
 urb_priv = td->urb->hcpriv;
 idx = urb_priv->td_cnt;
 frame = &td->urb->iso_frame_desc[idx];


 frame->status = -EXDEV;


 frame->actual_length = 0;


 while (ep_ring->dequeue != td->last_trb)
  inc_deq(xhci, ep_ring);
 inc_deq(xhci, ep_ring);

 return finish_td(xhci, td, ((void*)0), event, ep, status, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct usb_hcd {size_t regs; } ;
struct urb {int dummy; } ;
struct ptd {int dummy; } ;
struct isp1760_qtd {int status; int data_buffer; } ;
struct isp1760_qh {int dummy; } ;
struct isp1760_hcd {TYPE_1__* int_ints; } ;
typedef int ptd ;
struct TYPE_2__ {size_t payload; int data_buffer; struct isp1760_qtd* qtd; struct isp1760_qh* qh; struct urb* urb; } ;


 int URB_ENQUEUED ;
 int URB_TYPE_INT ;
 int enqueue_one_qtd (struct isp1760_qtd*,struct isp1760_hcd*,size_t) ;
 struct usb_hcd* priv_to_hcd (struct isp1760_hcd*) ;
 int priv_write_copy (struct isp1760_hcd*,size_t*,size_t,int) ;
 int transform_into_int (struct isp1760_hcd*,struct isp1760_qh*,struct isp1760_qtd*,struct urb*,size_t,struct ptd*) ;

__attribute__((used)) static void enqueue_one_int_qtd(u32 int_regs, u32 payload,
  struct isp1760_hcd *priv, struct isp1760_qh *qh,
  struct urb *urb, u32 slot, struct isp1760_qtd *qtd)
{
 struct ptd ptd;
 struct usb_hcd *hcd = priv_to_hcd(priv);

 transform_into_int(priv, qh, qtd, urb, payload, &ptd);
 priv_write_copy(priv, (u32 *)&ptd, hcd->regs + int_regs, sizeof(ptd));
 enqueue_one_qtd(qtd, priv, payload);

 priv->int_ints[slot].urb = urb;
 priv->int_ints[slot].qh = qh;
 priv->int_ints[slot].qtd = qtd;
 priv->int_ints[slot].data_buffer = qtd->data_buffer;
 priv->int_ints[slot].payload = payload;
 qtd->status |= URB_ENQUEUED | URB_TYPE_INT;
 qtd->status |= slot << 16;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u8 ;
typedef int u16 ;
struct usb_ctrlrequest {int bRequestType; int wIndex; int wLength; } ;
struct lh7a40x_udc {struct lh7a40x_ep* ep; } ;
struct lh7a40x_ep {int ep_type; int csr1; } ;


 int DEBUG_SETUP (char*,...) ;
 int EOPNOTSUPP ;
 int EP0_CLR_OUT ;
 int EP0_DATA_END ;
 int EP0_IN_PKT_RDY ;
 int EP0_SEND_STALL ;
 int USB_DIR_IN ;
 int USB_EP0_CSR ;
 int USB_IN_CSR1_SEND_STALL ;
 int USB_OUT_CSR1_SEND_STALL ;
 int USB_RECIP_DEVICE ;
 int USB_RECIP_ENDPOINT ;
 int USB_RECIP_INTERFACE ;
 int USB_RECIP_MASK ;



 scalar_t__ ep_index (struct lh7a40x_ep*) ;

 int ep_is_in (struct lh7a40x_ep*) ;
 int lh7a40x_fifo_write (struct lh7a40x_ep*,int *,int) ;
 int usb_read (int ) ;
 int usb_set (int,int ) ;
 int usb_set_index (scalar_t__) ;

__attribute__((used)) static int lh7a40x_handle_get_status(struct lh7a40x_udc *dev,
         struct usb_ctrlrequest *ctrl)
{
 struct lh7a40x_ep *ep0 = &dev->ep[0];
 struct lh7a40x_ep *qep;
 int reqtype = (ctrl->bRequestType & USB_RECIP_MASK);
 u16 val = 0;

 if (reqtype == USB_RECIP_INTERFACE) {




  DEBUG_SETUP("GET_STATUS: USB_RECIP_INTERFACE\n");
 } else if (reqtype == USB_RECIP_DEVICE) {
  DEBUG_SETUP("GET_STATUS: USB_RECIP_DEVICE\n");
  val |= (1 << 0);

 } else if (reqtype == USB_RECIP_ENDPOINT) {
  int ep_num = (ctrl->wIndex & ~USB_DIR_IN);

  DEBUG_SETUP
      ("GET_STATUS: USB_RECIP_ENDPOINT (%d), ctrl->wLength = %d\n",
       ep_num, ctrl->wLength);

  if (ctrl->wLength > 2 || ep_num > 3)
   return -EOPNOTSUPP;

  qep = &dev->ep[ep_num];
  if (ep_is_in(qep) != ((ctrl->wIndex & USB_DIR_IN) ? 1 : 0)
      && ep_index(qep) != 0) {
   return -EOPNOTSUPP;
  }

  usb_set_index(ep_index(qep));


  switch (qep->ep_type) {
  case 129:
   val =
       (usb_read(qep->csr1) & EP0_SEND_STALL) ==
       EP0_SEND_STALL;
   break;
  case 131:
  case 128:
   val =
       (usb_read(qep->csr1) & USB_IN_CSR1_SEND_STALL) ==
       USB_IN_CSR1_SEND_STALL;
   break;
  case 130:
   val =
       (usb_read(qep->csr1) & USB_OUT_CSR1_SEND_STALL) ==
       USB_OUT_CSR1_SEND_STALL;
   break;
  }


  usb_set_index(0);

  DEBUG_SETUP("GET_STATUS, ep: %d (%x), val = %d\n", ep_num,
       ctrl->wIndex, val);
 } else {
  DEBUG_SETUP("Unknown REQ TYPE: %d\n", reqtype);
  return -EOPNOTSUPP;
 }


 usb_set((EP0_CLR_OUT), USB_EP0_CSR);

 lh7a40x_fifo_write(ep0, (u8 *) & val, sizeof(val));

 usb_set((EP0_IN_PKT_RDY | EP0_DATA_END), USB_EP0_CSR);

 return 0;
}

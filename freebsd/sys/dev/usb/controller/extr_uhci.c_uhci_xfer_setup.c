
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_7__ {struct usb_page_cache* page_cache; void* obj_next; void* qh_self; void* td_self; } ;
typedef TYPE_3__ uhci_td_t ;
typedef int uhci_softc_t ;
typedef TYPE_3__ uhci_qh_t ;
struct TYPE_6__ {int bdma_enable; int bdma_no_post_sync; size_t curr_dma_set; } ;
struct usb_xfer {int nframes; int max_data_length; int max_frame_size; TYPE_2__ flags_int; void** qh_start; void** td_start; struct usb_page_cache* buf_fixup; } ;
struct usb_setup_params {int hc_max_packet_size; int hc_max_packet_count; int hc_max_frame_size; int bufsize; scalar_t__ buf; void* err; int * methods; struct usb_xfer* curr_xfer; TYPE_1__* udev; } ;
struct usb_page_search {int physaddr; TYPE_3__* buffer; } ;
struct usb_page_cache {int dummy; } ;
struct TYPE_5__ {int bus; } ;


 int * UHCI_BUS2SC (int ) ;
 int UHCI_PTR_QH ;
 int UHCI_PTR_TD ;
 int UHCI_PTR_VF ;
 int UHCI_QH_ALIGN ;
 int UHCI_TD_ALIGN ;
 void* USB_ERR_NOMEM ;
 int USB_PAGE_SIZE ;
 void* htole32 (int) ;
 int uhci_device_bulk_methods ;
 int uhci_device_ctrl_methods ;
 int uhci_device_intr_methods ;
 int uhci_device_isoc_methods ;
 int usb_pc_cpu_flush (struct usb_page_cache*) ;
 int usbd_get_page (struct usb_page_cache*,int ,struct usb_page_search*) ;
 int usbd_transfer_setup_sub (struct usb_setup_params*) ;
 scalar_t__ usbd_transfer_setup_sub_malloc (struct usb_setup_params*,struct usb_page_cache**,int,int,int) ;

__attribute__((used)) static void
uhci_xfer_setup(struct usb_setup_params *parm)
{
 struct usb_page_search page_info;
 struct usb_page_cache *pc;
 uhci_softc_t *sc;
 struct usb_xfer *xfer;
 void *last_obj;
 uint32_t ntd;
 uint32_t nqh;
 uint32_t nfixup;
 uint32_t n;
 uint16_t align;

 sc = UHCI_BUS2SC(parm->udev->bus);
 xfer = parm->curr_xfer;

 parm->hc_max_packet_size = 0x500;
 parm->hc_max_packet_count = 1;
 parm->hc_max_frame_size = 0x500;




 if (parm->methods == &uhci_device_ctrl_methods) {
  xfer->flags_int.bdma_enable = 1;
  xfer->flags_int.bdma_no_post_sync = 1;

  usbd_transfer_setup_sub(parm);



  nqh = 1;
  ntd = ((2 * xfer->nframes) + 1
      + (xfer->max_data_length / xfer->max_frame_size));

 } else if (parm->methods == &uhci_device_bulk_methods) {
  xfer->flags_int.bdma_enable = 1;
  xfer->flags_int.bdma_no_post_sync = 1;

  usbd_transfer_setup_sub(parm);

  nqh = 1;
  ntd = ((2 * xfer->nframes)
      + (xfer->max_data_length / xfer->max_frame_size));

 } else if (parm->methods == &uhci_device_intr_methods) {
  xfer->flags_int.bdma_enable = 1;
  xfer->flags_int.bdma_no_post_sync = 1;

  usbd_transfer_setup_sub(parm);

  nqh = 1;
  ntd = ((2 * xfer->nframes)
      + (xfer->max_data_length / xfer->max_frame_size));

 } else if (parm->methods == &uhci_device_isoc_methods) {
  xfer->flags_int.bdma_enable = 1;
  xfer->flags_int.bdma_no_post_sync = 1;

  usbd_transfer_setup_sub(parm);

  nqh = 0;
  ntd = xfer->nframes;

 } else {

  usbd_transfer_setup_sub(parm);

  nqh = 0;
  ntd = 0;
 }

 if (parm->err) {
  return;
 }





 nfixup = (parm->bufsize / USB_PAGE_SIZE) + 1;





 align = xfer->max_frame_size;
 n = 0;
 while (align) {
  align >>= 1;
  n++;
 }


 if (!(xfer->max_frame_size &
     (xfer->max_frame_size - 1))) {
  n--;
 }







 if (n < 3) {
  n = 3;
 }
 align = (1 << n);

 if (usbd_transfer_setup_sub_malloc(
     parm, &pc, xfer->max_frame_size,
     align, nfixup)) {
  parm->err = USB_ERR_NOMEM;
  return;
 }
 xfer->buf_fixup = pc;

alloc_dma_set:

 if (parm->err) {
  return;
 }
 last_obj = ((void*)0);

 if (usbd_transfer_setup_sub_malloc(
     parm, &pc, sizeof(uhci_td_t),
     UHCI_TD_ALIGN, ntd)) {
  parm->err = USB_ERR_NOMEM;
  return;
 }
 if (parm->buf) {
  for (n = 0; n != ntd; n++) {
   uhci_td_t *td;

   usbd_get_page(pc + n, 0, &page_info);

   td = page_info.buffer;


   if ((parm->methods == &uhci_device_bulk_methods) ||
       (parm->methods == &uhci_device_ctrl_methods) ||
       (parm->methods == &uhci_device_intr_methods)) {

    td->td_self = htole32(page_info.physaddr |
        UHCI_PTR_TD | UHCI_PTR_VF);
   } else {
    td->td_self = htole32(page_info.physaddr |
        UHCI_PTR_TD);
   }

   td->obj_next = last_obj;
   td->page_cache = pc + n;

   last_obj = td;

   usb_pc_cpu_flush(pc + n);
  }
 }
 xfer->td_start[xfer->flags_int.curr_dma_set] = last_obj;

 last_obj = ((void*)0);

 if (usbd_transfer_setup_sub_malloc(
     parm, &pc, sizeof(uhci_qh_t),
     UHCI_QH_ALIGN, nqh)) {
  parm->err = USB_ERR_NOMEM;
  return;
 }
 if (parm->buf) {
  for (n = 0; n != nqh; n++) {
   uhci_qh_t *qh;

   usbd_get_page(pc + n, 0, &page_info);

   qh = page_info.buffer;


   qh->qh_self = htole32(page_info.physaddr | UHCI_PTR_QH);
   qh->obj_next = last_obj;
   qh->page_cache = pc + n;

   last_obj = qh;

   usb_pc_cpu_flush(pc + n);
  }
 }
 xfer->qh_start[xfer->flags_int.curr_dma_set] = last_obj;

 if (!xfer->flags_int.curr_dma_set) {
  xfer->flags_int.curr_dma_set = 1;
  goto alloc_dma_set;
 }
}

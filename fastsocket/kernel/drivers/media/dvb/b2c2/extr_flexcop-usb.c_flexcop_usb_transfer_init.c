
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct urb {int interval; int number_of_packets; int transfer_buffer_length; TYPE_5__* iso_frame_desc; int * transfer_buffer; int transfer_flags; int pipe; int complete; struct flexcop_usb* context; int dev; } ;
struct flexcop_usb {int buffer_size; int fc_dev; struct urb** iso_urb; int * iso_buffer; int udev; int dma_addr; TYPE_4__* uintf; } ;
struct TYPE_10__ {int offset; int length; } ;
struct TYPE_9__ {TYPE_3__* cur_altsetting; } ;
struct TYPE_8__ {TYPE_2__* endpoint; } ;
struct TYPE_6__ {int wMaxPacketSize; } ;
struct TYPE_7__ {TYPE_1__ desc; } ;


 int B2C2_USB_DATA_PIPE ;
 int B2C2_USB_FRAMES_PER_ISO ;
 int B2C2_USB_NUM_ISO_URB ;
 int ENOMEM ;
 int FC_SRAM_DEST_CAI ;
 int FC_SRAM_DEST_CAO ;
 int FC_SRAM_DEST_MEDIA ;
 int FC_SRAM_DEST_NET ;
 int FC_SRAM_DEST_TARGET_WAN_USB ;
 int FC_WAN_SPEED_8MBITS ;
 int GFP_ATOMIC ;
 int URB_ISO_ASAP ;
 int deb_ts (char*,int,...) ;
 int err (char*,int,int) ;
 int flexcop_sram_ctrl (int ,int,int,int) ;
 int flexcop_sram_set_dest (int ,int,int ) ;
 int flexcop_usb_transfer_exit (struct flexcop_usb*) ;
 int flexcop_usb_urb_complete ;
 int flexcop_wan_set_speed (int ,int ) ;
 int le16_to_cpu (int ) ;
 int memset (int *,int ,int) ;
 int * pci_alloc_consistent (int *,int,int *) ;
 struct urb* usb_alloc_urb (int,int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int flexcop_usb_transfer_init(struct flexcop_usb *fc_usb)
{
 u16 frame_size = le16_to_cpu(
  fc_usb->uintf->cur_altsetting->endpoint[0].desc.wMaxPacketSize);
 int bufsize = B2C2_USB_NUM_ISO_URB * B2C2_USB_FRAMES_PER_ISO *
  frame_size, i, j, ret;
 int buffer_offset = 0;

 deb_ts("creating %d iso-urbs with %d frames "
   "each of %d bytes size = %d.\n", B2C2_USB_NUM_ISO_URB,
   B2C2_USB_FRAMES_PER_ISO, frame_size, bufsize);

 fc_usb->iso_buffer = pci_alloc_consistent(((void*)0),
   bufsize, &fc_usb->dma_addr);
 if (fc_usb->iso_buffer == ((void*)0))
  return -ENOMEM;

 memset(fc_usb->iso_buffer, 0, bufsize);
 fc_usb->buffer_size = bufsize;


 for (i = 0; i < B2C2_USB_NUM_ISO_URB; i++) {
  fc_usb->iso_urb[i] = usb_alloc_urb(B2C2_USB_FRAMES_PER_ISO,
   GFP_ATOMIC);
  if (fc_usb->iso_urb[i] == ((void*)0)) {
   ret = -ENOMEM;
   goto urb_error;
  }
 }


 for (i = 0; i < B2C2_USB_NUM_ISO_URB; i++) {
  int frame_offset = 0;
  struct urb *urb = fc_usb->iso_urb[i];
  deb_ts("initializing and submitting urb no. %d "
   "(buf_offset: %d).\n", i, buffer_offset);

  urb->dev = fc_usb->udev;
  urb->context = fc_usb;
  urb->complete = flexcop_usb_urb_complete;
  urb->pipe = B2C2_USB_DATA_PIPE;
  urb->transfer_flags = URB_ISO_ASAP;
  urb->interval = 1;
  urb->number_of_packets = B2C2_USB_FRAMES_PER_ISO;
  urb->transfer_buffer_length = frame_size * B2C2_USB_FRAMES_PER_ISO;
  urb->transfer_buffer = fc_usb->iso_buffer + buffer_offset;

  buffer_offset += frame_size * B2C2_USB_FRAMES_PER_ISO;
  for (j = 0; j < B2C2_USB_FRAMES_PER_ISO; j++) {
   deb_ts("urb no: %d, frame: %d, frame_offset: %d\n",
     i, j, frame_offset);
   urb->iso_frame_desc[j].offset = frame_offset;
   urb->iso_frame_desc[j].length = frame_size;
   frame_offset += frame_size;
  }

  if ((ret = usb_submit_urb(fc_usb->iso_urb[i],GFP_ATOMIC))) {
   err("submitting urb %d failed with %d.", i, ret);
   goto urb_error;
  }
  deb_ts("submitted urb no. %d.\n",i);
 }


 flexcop_sram_set_dest(fc_usb->fc_dev, FC_SRAM_DEST_MEDIA |
   FC_SRAM_DEST_NET | FC_SRAM_DEST_CAO | FC_SRAM_DEST_CAI,
   FC_SRAM_DEST_TARGET_WAN_USB);
 flexcop_wan_set_speed(fc_usb->fc_dev, FC_WAN_SPEED_8MBITS);
 flexcop_sram_ctrl(fc_usb->fc_dev, 1, 1, 1);
 return 0;

urb_error:
 flexcop_usb_transfer_exit(fc_usb);
 return ret;
}

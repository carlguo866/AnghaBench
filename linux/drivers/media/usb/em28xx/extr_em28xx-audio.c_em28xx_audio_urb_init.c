
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u8 ;
struct usb_interface {size_t num_altsetting; TYPE_3__* altsetting; } ;
struct usb_endpoint_descriptor {scalar_t__ bEndpointAddress; int bInterval; } ;
struct usb_device {int speed; } ;
struct urb {int transfer_flags; int interval; int number_of_packets; int transfer_buffer_length; TYPE_5__* iso_frame_desc; int complete; void* transfer_buffer; int pipe; struct em28xx* context; struct usb_device* dev; int transfer_dma; } ;
struct TYPE_10__ {int period; int num_urb; void** transfer_buffer; struct urb** urb; } ;
struct em28xx {TYPE_4__ adev; TYPE_6__* intf; int ifnum; } ;
struct TYPE_12__ {int dev; } ;
struct TYPE_11__ {int offset; int length; } ;
struct TYPE_7__ {int bNumEndpoints; } ;
struct TYPE_9__ {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct TYPE_8__ {struct usb_endpoint_descriptor desc; } ;


 int DIV_ROUND_UP (int,int) ;
 scalar_t__ EM28XX_EP_AUDIO ;
 int EM28XX_MAX_AUDIO_BUFS ;
 int EM28XX_MIN_AUDIO_PACKETS ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int URB_ISO_ASAP ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int,int,int,...) ;
 int em28xx_audio_ep_packet_size (struct usb_device*,struct usb_endpoint_descriptor*) ;
 int em28xx_audio_free_urb (struct em28xx*) ;
 int em28xx_audio_isocirq ;
 struct usb_device* interface_to_usbdev (TYPE_6__*) ;
 void* kcalloc (int,int,int ) ;
 int kfree (void**) ;
 void* usb_alloc_coherent (struct usb_device*,int,int ,int *) ;
 struct urb* usb_alloc_urb (int,int ) ;
 int usb_endpoint_dir_in (struct usb_endpoint_descriptor*) ;
 struct usb_interface* usb_ifnum_to_if (struct usb_device*,int ) ;
 int usb_rcvisocpipe (struct usb_device*,scalar_t__) ;
 int usb_speed_string (int ) ;

__attribute__((used)) static int em28xx_audio_urb_init(struct em28xx *dev)
{
 struct usb_interface *intf;
 struct usb_endpoint_descriptor *e, *ep = ((void*)0);
 struct usb_device *udev = interface_to_usbdev(dev->intf);
 int i, ep_size, interval, num_urb, npackets;
 int urb_size, bytes_per_transfer;
 u8 alt;

 if (dev->ifnum)
  alt = 1;
 else
  alt = 7;

 intf = usb_ifnum_to_if(udev, dev->ifnum);

 if (intf->num_altsetting <= alt) {
  dev_err(&dev->intf->dev, "alt %d doesn't exist on interface %d\n",
   dev->ifnum, alt);
  return -ENODEV;
 }

 for (i = 0; i < intf->altsetting[alt].desc.bNumEndpoints; i++) {
  e = &intf->altsetting[alt].endpoint[i].desc;
  if (!usb_endpoint_dir_in(e))
   continue;
  if (e->bEndpointAddress == EM28XX_EP_AUDIO) {
   ep = e;
   break;
  }
 }

 if (!ep) {
  dev_err(&dev->intf->dev, "Couldn't find an audio endpoint");
  return -ENODEV;
 }

 ep_size = em28xx_audio_ep_packet_size(udev, ep);
 interval = 1 << (ep->bInterval - 1);

 dev_info(&dev->intf->dev,
   "Endpoint 0x%02x %s on intf %d alt %d interval = %d, size %d\n",
   EM28XX_EP_AUDIO, usb_speed_string(udev->speed),
   dev->ifnum, alt, interval, ep_size);
 bytes_per_transfer = DIV_ROUND_UP(48000 * 2 * 2, 125 * interval);





 num_urb = DIV_ROUND_UP(bytes_per_transfer, ep_size);
 if (num_urb > EM28XX_MAX_AUDIO_BUFS)
  num_urb = EM28XX_MAX_AUDIO_BUFS;






 urb_size = bytes_per_transfer / num_urb;






 npackets = EM28XX_MIN_AUDIO_PACKETS;
 if (urb_size > ep_size * npackets)
  npackets = DIV_ROUND_UP(urb_size, ep_size);

 dev_info(&dev->intf->dev,
   "Number of URBs: %d, with %d packets and %d size\n",
   num_urb, npackets, urb_size);


 dev->adev.period = urb_size * npackets;



 dev->adev.transfer_buffer = kcalloc(num_urb,
         sizeof(*dev->adev.transfer_buffer),
         GFP_KERNEL);
 if (!dev->adev.transfer_buffer)
  return -ENOMEM;

 dev->adev.urb = kcalloc(num_urb, sizeof(*dev->adev.urb), GFP_KERNEL);
 if (!dev->adev.urb) {
  kfree(dev->adev.transfer_buffer);
  return -ENOMEM;
 }


 dev->adev.num_urb = num_urb;
 for (i = 0; i < num_urb; i++) {
  struct urb *urb;
  int j, k;
  void *buf;

  urb = usb_alloc_urb(npackets, GFP_KERNEL);
  if (!urb) {
   em28xx_audio_free_urb(dev);
   return -ENOMEM;
  }
  dev->adev.urb[i] = urb;

  buf = usb_alloc_coherent(udev, npackets * ep_size, GFP_KERNEL,
      &urb->transfer_dma);
  if (!buf) {
   dev_err(&dev->intf->dev,
    "usb_alloc_coherent failed!\n");
   em28xx_audio_free_urb(dev);
   return -ENOMEM;
  }
  dev->adev.transfer_buffer[i] = buf;

  urb->dev = udev;
  urb->context = dev;
  urb->pipe = usb_rcvisocpipe(udev, EM28XX_EP_AUDIO);
  urb->transfer_flags = URB_ISO_ASAP | URB_NO_TRANSFER_DMA_MAP;
  urb->transfer_buffer = buf;
  urb->interval = interval;
  urb->complete = em28xx_audio_isocirq;
  urb->number_of_packets = npackets;
  urb->transfer_buffer_length = ep_size * npackets;

  for (j = k = 0; j < npackets; j++, k += ep_size) {
   urb->iso_frame_desc[j].offset = k;
   urb->iso_frame_desc[j].length = ep_size;
  }
 }

 return 0;
}

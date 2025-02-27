
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; } ;
struct usb_cdc_notification {scalar_t__ bNotificationType; scalar_t__ wValue; } ;
struct urb {int actual_length; struct usb_cdc_notification* transfer_buffer; } ;


 scalar_t__ USB_CDC_NOTIFY_NETWORK_CONNECTION ;
 int netif_carrier_off (int ) ;
 scalar_t__ netif_carrier_ok (int ) ;
 int netif_dbg (struct usbnet*,int ,int ,char*,char*) ;
 int timer ;
 int usbnet_cdc_status (struct usbnet*,struct urb*) ;
 int usbnet_link_change (struct usbnet*,int,int ) ;

__attribute__((used)) static void usbnet_cdc_zte_status(struct usbnet *dev, struct urb *urb)
{
 struct usb_cdc_notification *event;

 if (urb->actual_length < sizeof(*event))
  return;

 event = urb->transfer_buffer;

 if (event->bNotificationType != USB_CDC_NOTIFY_NETWORK_CONNECTION) {
  usbnet_cdc_status(dev, urb);
  return;
 }

 netif_dbg(dev, timer, dev->net, "CDC: carrier %s\n",
    event->wValue ? "on" : "off");

 if (event->wValue &&
     netif_carrier_ok(dev->net))
  netif_carrier_off(dev->net);

 usbnet_link_change(dev, !!event->wValue, 0);
}

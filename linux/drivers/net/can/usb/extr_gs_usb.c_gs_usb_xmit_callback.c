
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_dma; int transfer_buffer; int transfer_buffer_length; int dev; scalar_t__ status; struct gs_tx_context* context; } ;
struct net_device {int dummy; } ;
struct gs_tx_context {int echo_id; struct gs_can* dev; } ;
struct gs_can {struct net_device* netdev; } ;


 int netdev_info (struct net_device*,char*,int ) ;
 int usb_free_coherent (int ,int ,int ,int ) ;

__attribute__((used)) static void gs_usb_xmit_callback(struct urb *urb)
{
 struct gs_tx_context *txc = urb->context;
 struct gs_can *dev = txc->dev;
 struct net_device *netdev = dev->netdev;

 if (urb->status)
  netdev_info(netdev, "usb xmit fail %d\n", txc->echo_id);

 usb_free_coherent(urb->dev,
     urb->transfer_buffer_length,
     urb->transfer_buffer,
     urb->transfer_dma);
}

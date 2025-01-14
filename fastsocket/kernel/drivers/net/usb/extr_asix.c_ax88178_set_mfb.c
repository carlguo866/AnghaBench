
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct usbnet {int rx_urb_size; int hard_mtu; TYPE_1__* net; } ;
struct TYPE_2__ {int mtu; } ;


 int AX_MEDIUM_JFE ;
 int AX_RX_CTL_MFB_16384 ;
 int AX_RX_CTL_MFB_2048 ;
 int AX_RX_CTL_MFB_4096 ;
 int AX_RX_CTL_MFB_8192 ;
 int asix_read_medium_status (struct usbnet*) ;
 int asix_read_rx_ctl (struct usbnet*) ;
 int asix_write_medium_mode (struct usbnet*,int) ;
 int asix_write_rx_ctl (struct usbnet*,int) ;
 int usbnet_unlink_rx_urbs (struct usbnet*) ;

__attribute__((used)) static void ax88178_set_mfb(struct usbnet *dev)
{
 u16 mfb = AX_RX_CTL_MFB_16384;
 u16 rxctl;
 u16 medium;
 int old_rx_urb_size = dev->rx_urb_size;

 if (dev->hard_mtu < 2048) {
  dev->rx_urb_size = 2048;
  mfb = AX_RX_CTL_MFB_2048;
 } else if (dev->hard_mtu < 4096) {
  dev->rx_urb_size = 4096;
  mfb = AX_RX_CTL_MFB_4096;
 } else if (dev->hard_mtu < 8192) {
  dev->rx_urb_size = 8192;
  mfb = AX_RX_CTL_MFB_8192;
 } else if (dev->hard_mtu < 16384) {
  dev->rx_urb_size = 16384;
  mfb = AX_RX_CTL_MFB_16384;
 }

 rxctl = asix_read_rx_ctl(dev);
 asix_write_rx_ctl(dev, (rxctl & ~AX_RX_CTL_MFB_16384) | mfb);

 medium = asix_read_medium_status(dev);
 if (dev->net->mtu > 1500)
  medium |= AX_MEDIUM_JFE;
 else
  medium &= ~AX_MEDIUM_JFE;
 asix_write_medium_mode(dev, medium);

 if (dev->rx_urb_size > old_rx_urb_size)
  usbnet_unlink_rx_urbs(dev);
}

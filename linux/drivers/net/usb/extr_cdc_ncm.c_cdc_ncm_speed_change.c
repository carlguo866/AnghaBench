
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usbnet {int net; } ;
struct usb_cdc_speed_change {int ULBitRate; int DLBitRRate; } ;


 int le32_to_cpu (int ) ;
 int link ;
 int netif_info (struct usbnet*,int ,int ,char*,unsigned int,unsigned int) ;

__attribute__((used)) static void
cdc_ncm_speed_change(struct usbnet *dev,
       struct usb_cdc_speed_change *data)
{
 uint32_t rx_speed = le32_to_cpu(data->DLBitRRate);
 uint32_t tx_speed = le32_to_cpu(data->ULBitRate);





 if ((tx_speed > 1000000) && (rx_speed > 1000000)) {
  netif_info(dev, link, dev->net,
      "%u mbit/s downlink %u mbit/s uplink\n",
      (unsigned int)(rx_speed / 1000000U),
      (unsigned int)(tx_speed / 1000000U));
 } else {
  netif_info(dev, link, dev->net,
      "%u kbit/s downlink %u kbit/s uplink\n",
      (unsigned int)(rx_speed / 1000U),
      (unsigned int)(tx_speed / 1000U));
 }
}

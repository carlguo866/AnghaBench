
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct lbs_private {int dummy; } ;
struct if_usb_card {TYPE_1__* udev; } ;
struct TYPE_2__ {int dev; } ;


 int IPFIELD_ALIGN_OFFSET ;
 int MESSAGE_HEADER_LEN ;
 int MRVDRV_ETH_RX_PACKET_BUFFER_SIZE ;
 int MRVDRV_MIN_PKT_LEN ;
 int kfree_skb (struct sk_buff*) ;
 int lbs_deb_usbd (int *,char*) ;
 int lbs_process_rxed_packet (struct lbs_private*,struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int ) ;

__attribute__((used)) static inline void process_cmdtypedata(int recvlength, struct sk_buff *skb,
           struct if_usb_card *cardp,
           struct lbs_private *priv)
{
 if (recvlength > MRVDRV_ETH_RX_PACKET_BUFFER_SIZE + MESSAGE_HEADER_LEN
     || recvlength < MRVDRV_MIN_PKT_LEN) {
  lbs_deb_usbd(&cardp->udev->dev, "Packet length is Invalid\n");
  kfree_skb(skb);
  return;
 }

 skb_reserve(skb, IPFIELD_ALIGN_OFFSET);
 skb_put(skb, recvlength);
 skb_pull(skb, MESSAGE_HEADER_LEN);

 lbs_process_rxed_packet(priv, skb);
}

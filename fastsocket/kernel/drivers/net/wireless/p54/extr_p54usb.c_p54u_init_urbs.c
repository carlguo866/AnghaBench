
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dummy; } ;
struct sk_buff {scalar_t__ cb; } ;
struct p54u_rx_info {struct ieee80211_hw* dev; struct urb* urb; } ;
struct TYPE_2__ {scalar_t__ rx_mtu; } ;
struct p54u_priv {int rx_queue; int submitted; TYPE_1__ common; int udev; } ;
struct ieee80211_hw {struct p54u_priv* priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int P54U_PIPE_DATA ;
 struct sk_buff* __dev_alloc_skb (scalar_t__,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int p54u_free_urbs (struct ieee80211_hw*) ;
 int p54u_rx_cb ;
 int skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_tail_pointer (struct sk_buff*) ;
 int skb_unlink (struct sk_buff*,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int ,scalar_t__,int ,struct sk_buff*) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int p54u_init_urbs(struct ieee80211_hw *dev)
{
 struct p54u_priv *priv = dev->priv;
 struct urb *entry = ((void*)0);
 struct sk_buff *skb;
 struct p54u_rx_info *info;
 int ret = 0;

 while (skb_queue_len(&priv->rx_queue) < 32) {
  skb = __dev_alloc_skb(priv->common.rx_mtu + 32, GFP_KERNEL);
  if (!skb) {
   ret = -ENOMEM;
   goto err;
  }
  entry = usb_alloc_urb(0, GFP_KERNEL);
  if (!entry) {
   ret = -ENOMEM;
   goto err;
  }

  usb_fill_bulk_urb(entry, priv->udev,
      usb_rcvbulkpipe(priv->udev, P54U_PIPE_DATA),
      skb_tail_pointer(skb),
      priv->common.rx_mtu + 32, p54u_rx_cb, skb);
  info = (struct p54u_rx_info *) skb->cb;
  info->urb = entry;
  info->dev = dev;
  skb_queue_tail(&priv->rx_queue, skb);

  usb_anchor_urb(entry, &priv->submitted);
  ret = usb_submit_urb(entry, GFP_KERNEL);
  if (ret) {
   skb_unlink(skb, &priv->rx_queue);
   usb_unanchor_urb(entry);
   goto err;
  }
  usb_free_urb(entry);
  entry = ((void*)0);
 }

 return 0;

 err:
 usb_free_urb(entry);
 kfree_skb(skb);
 p54u_free_urbs(dev);
 return ret;
}

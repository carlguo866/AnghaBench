
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct p54_common {int dummy; } ;
struct ieee80211_hw {struct p54_common* priv; } ;
typedef int __le16 ;


 int P54_HDR_FLAG_CONTROL ;
 int le16_to_cpu (int ) ;
 int p54_rx_control (struct p54_common*,struct sk_buff*) ;
 int p54_rx_data (struct p54_common*,struct sk_buff*) ;

int p54_rx(struct ieee80211_hw *dev, struct sk_buff *skb)
{
 struct p54_common *priv = dev->priv;
 u16 type = le16_to_cpu(*((__le16 *)skb->data));

 if (type & P54_HDR_FLAG_CONTROL)
  return p54_rx_control(priv, skb);
 else
  return p54_rx_data(priv, skb);
}

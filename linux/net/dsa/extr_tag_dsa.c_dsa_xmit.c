
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ protocol; int* data; } ;
struct net_device {int dummy; } ;
struct dsa_port {int index; TYPE_1__* ds; } ;
struct TYPE_2__ {int index; } ;


 int DSA_HLEN ;
 int ETH_ALEN ;
 int ETH_P_8021Q ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 scalar_t__ htons (int ) ;
 int memmove (int*,int*,int) ;
 scalar_t__ skb_cow_head (struct sk_buff*,int) ;
 int skb_push (struct sk_buff*,int) ;

__attribute__((used)) static struct sk_buff *dsa_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);
 u8 *dsa_header;






 if (skb->protocol == htons(ETH_P_8021Q)) {
  if (skb_cow_head(skb, 0) < 0)
   return ((void*)0);




  dsa_header = skb->data + 2 * ETH_ALEN;
  dsa_header[0] = 0x60 | dp->ds->index;
  dsa_header[1] = dp->index << 3;




  if (dsa_header[2] & 0x10) {
   dsa_header[1] |= 0x01;
   dsa_header[2] &= ~0x10;
  }
 } else {
  if (skb_cow_head(skb, DSA_HLEN) < 0)
   return ((void*)0);
  skb_push(skb, DSA_HLEN);

  memmove(skb->data, skb->data + DSA_HLEN, 2 * ETH_ALEN);




  dsa_header = skb->data + 2 * ETH_ALEN;
  dsa_header[0] = 0x40 | dp->ds->index;
  dsa_header[1] = dp->index << 3;
  dsa_header[2] = 0x00;
  dsa_header[3] = 0x00;
 }

 return skb;
}

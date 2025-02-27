
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {unsigned int tail; unsigned int len; unsigned int data_len; int truesize; } ;
struct ipoib_dev_priv {int max_ib_mtu; } ;
struct TYPE_3__ {unsigned int size; } ;
typedef TYPE_1__ skb_frag_t ;
struct TYPE_4__ {TYPE_1__* frags; } ;


 unsigned int IPOIB_UD_HEAD_SIZE ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ ipoib_ud_need_sg (int ) ;
 int skb_put (struct sk_buff*,unsigned int) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void ipoib_ud_skb_put_frags(struct ipoib_dev_priv *priv,
       struct sk_buff *skb,
       unsigned int length)
{
 if (ipoib_ud_need_sg(priv->max_ib_mtu)) {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[0];
  unsigned int size;




  skb->tail += IPOIB_UD_HEAD_SIZE;
  skb->len += length;

  size = length - IPOIB_UD_HEAD_SIZE;

  frag->size = size;
  skb->data_len += size;
  skb->truesize += PAGE_SIZE;
 } else
  skb_put(skb, length);

}

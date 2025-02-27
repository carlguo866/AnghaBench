
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct hns3_enet_ring {int dummy; } ;
struct hns3_desc_cb {scalar_t__ type; scalar_t__ priv; } ;


 scalar_t__ DESC_TYPE_SKB ;
 int HNAE3_IS_TX_RING (struct hns3_enet_ring*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int memset (struct hns3_desc_cb*,int ,int) ;
 int put_page (struct page*) ;

__attribute__((used)) static void hns3_free_buffer(struct hns3_enet_ring *ring,
        struct hns3_desc_cb *cb)
{
 if (cb->type == DESC_TYPE_SKB)
  dev_kfree_skb_any((struct sk_buff *)cb->priv);
 else if (!HNAE3_IS_TX_RING(ring))
  put_page((struct page *)cb->priv);
 memset(cb, 0, sizeof(*cb));
}

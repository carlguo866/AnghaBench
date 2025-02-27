
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int ;
struct sk_buff {int dummy; } ;
struct mISDNhead {void* id; void* prim; } ;
struct layer2 {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int dev_kfree_skb (struct sk_buff*) ;
 int l2down_raw (struct layer2*,struct sk_buff*) ;
 struct mISDNhead* mISDN_HEAD_P (struct sk_buff*) ;
 struct sk_buff* mI_alloc_skb (int,int ) ;
 int skb_put_data (struct sk_buff*,void*,int) ;

__attribute__((used)) static int
l2down_create(struct layer2 *l2, u_int prim, u_int id, int len, void *arg)
{
 struct sk_buff *skb;
 int err;
 struct mISDNhead *hh;

 skb = mI_alloc_skb(len, GFP_ATOMIC);
 if (!skb)
  return -ENOMEM;
 hh = mISDN_HEAD_P(skb);
 hh->prim = prim;
 hh->id = id;
 if (len)
  skb_put_data(skb, arg, len);
 err = l2down_raw(l2, skb);
 if (err)
  dev_kfree_skb(skb);
 return err;
}

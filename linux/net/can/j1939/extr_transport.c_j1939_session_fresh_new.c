
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {TYPE_1__* dev; } ;
struct j1939_sk_buff_cb {int dummy; } ;
struct j1939_session {int dummy; } ;
struct j1939_priv {TYPE_1__* ndev; } ;
struct can_skb_priv {int dummy; } ;
struct TYPE_4__ {int ifindex; } ;
struct TYPE_3__ {int ifindex; } ;


 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int,int ) ;
 TYPE_2__* can_skb_prv (struct sk_buff*) ;
 int can_skb_reserve (struct sk_buff*) ;
 struct j1939_session* j1939_session_new (struct j1939_priv*,struct sk_buff*,int) ;
 struct j1939_sk_buff_cb* j1939_skb_to_cb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (struct j1939_sk_buff_cb*,struct j1939_sk_buff_cb const*,int) ;
 int skb_put (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct
j1939_session *j1939_session_fresh_new(struct j1939_priv *priv,
           int size,
           const struct j1939_sk_buff_cb *rel_skcb)
{
 struct sk_buff *skb;
 struct j1939_sk_buff_cb *skcb;
 struct j1939_session *session;

 skb = alloc_skb(size + sizeof(struct can_skb_priv), GFP_ATOMIC);
 if (unlikely(!skb))
  return ((void*)0);

 skb->dev = priv->ndev;
 can_skb_reserve(skb);
 can_skb_prv(skb)->ifindex = priv->ndev->ifindex;
 skcb = j1939_skb_to_cb(skb);
 memcpy(skcb, rel_skcb, sizeof(*skcb));

 session = j1939_session_new(priv, skb, size);
 if (!session) {
  kfree_skb(skb);
  return ((void*)0);
 }


 skb_put(skb, size);

 return session;
}

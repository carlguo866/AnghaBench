
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dev; scalar_t__ data; } ;
struct rtnode_hello_message {scalar_t__ priority; int iinfo; int blksize; int id; } ;
struct neighbour {int nud_state; int lock; int ha; TYPE_1__* dev; void* updated; void* used; } ;
struct dn_neigh {int blksize; scalar_t__ priority; int flags; } ;
struct dn_dev {scalar_t__ router; } ;
typedef int __le16 ;
struct TYPE_4__ {int h_source; } ;
struct TYPE_3__ {scalar_t__ type; scalar_t__ dn_ptr; } ;


 scalar_t__ ARPHRD_ETHER ;
 int DN_NDFLAG_P3 ;
 int DN_NDFLAG_R1 ;
 int DN_NDFLAG_R2 ;


 int DN_RT_INFO_TYPE ;
 int ETH_ALEN ;
 int NUD_PERMANENT ;
 struct neighbour* __neigh_lookup (int *,int *,int ,int) ;
 int decnet_address ;
 int dn_eth2dn (int ) ;
 int dn_neigh_table ;
 TYPE_2__* eth_hdr (struct sk_buff*) ;
 void* jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int le16_to_cpu (int ) ;
 int memcpy (int ,int *,int ) ;
 scalar_t__ neigh_clone (struct neighbour*) ;
 int neigh_release (struct neighbour*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;
 struct neighbour* xchg (scalar_t__*,scalar_t__) ;

int dn_neigh_router_hello(struct sk_buff *skb)
{
 struct rtnode_hello_message *msg = (struct rtnode_hello_message *)skb->data;

 struct neighbour *neigh;
 struct dn_neigh *dn;
 struct dn_dev *dn_db;
 __le16 src;

 src = dn_eth2dn(msg->id);

 neigh = __neigh_lookup(&dn_neigh_table, &src, skb->dev, 1);

 dn = (struct dn_neigh *)neigh;

 if (neigh) {
  write_lock(&neigh->lock);

  neigh->used = jiffies;
  dn_db = (struct dn_dev *)neigh->dev->dn_ptr;

  if (!(neigh->nud_state & NUD_PERMANENT)) {
   neigh->updated = jiffies;

   if (neigh->dev->type == ARPHRD_ETHER)
    memcpy(neigh->ha, &eth_hdr(skb)->h_source, ETH_ALEN);

   dn->blksize = le16_to_cpu(msg->blksize);
   dn->priority = msg->priority;

   dn->flags &= ~DN_NDFLAG_P3;

   switch(msg->iinfo & DN_RT_INFO_TYPE) {
    case 129:
     dn->flags &=~DN_NDFLAG_R2;
     dn->flags |= DN_NDFLAG_R1;
     break;
    case 128:
     dn->flags |= DN_NDFLAG_R2;
   }
  }


  if ((le16_to_cpu(src)>>10) == (le16_to_cpu((decnet_address))>>10)) {
   if (!dn_db->router) {
    dn_db->router = neigh_clone(neigh);
   } else {
    if (msg->priority > ((struct dn_neigh *)dn_db->router)->priority)
     neigh_release(xchg(&dn_db->router, neigh_clone(neigh)));
   }
  }
  write_unlock(&neigh->lock);
  neigh_release(neigh);
 }

 kfree_skb(skb);
 return 0;
}

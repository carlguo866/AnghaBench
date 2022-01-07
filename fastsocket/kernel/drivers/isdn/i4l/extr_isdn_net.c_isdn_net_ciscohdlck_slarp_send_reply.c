
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct in_ifaddr {int ifa_mask; int ifa_local; } ;
struct in_device {struct in_ifaddr* ifa_list; } ;
struct TYPE_9__ {TYPE_2__* netdev; } ;
typedef TYPE_3__ isdn_net_local ;
typedef int __be32 ;
typedef int __be16 ;
struct TYPE_8__ {TYPE_1__* dev; } ;
struct TYPE_7__ {struct in_device* ip_ptr; } ;


 int CISCO_ADDR_UNICAST ;
 int CISCO_CTRL ;
 int CISCO_SLARP_REPLY ;
 int CISCO_TYPE_SLARP ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 struct sk_buff* isdn_net_ciscohdlck_alloc_skb (TYPE_3__*,int) ;
 int isdn_net_write_super (TYPE_3__*,struct sk_buff*) ;
 unsigned char* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void
isdn_net_ciscohdlck_slarp_send_reply(isdn_net_local *lp)
{
 struct sk_buff *skb;
 unsigned char *p;
 struct in_device *in_dev = ((void*)0);
 __be32 addr = 0;
 __be32 mask = 0;

 if ((in_dev = lp->netdev->dev->ip_ptr) != ((void*)0)) {

  struct in_ifaddr *ifa = in_dev->ifa_list;
  if (ifa != ((void*)0)) {
   addr = ifa->ifa_local;
   mask = ifa->ifa_mask;
  }
 }

 skb = isdn_net_ciscohdlck_alloc_skb(lp, 4 + 14);
 if (!skb)
  return;

 p = skb_put(skb, 4 + 14);


 *(u8 *)(p + 0) = CISCO_ADDR_UNICAST;
 *(u8 *)(p + 1) = CISCO_CTRL;
 *(__be16 *)(p + 2) = cpu_to_be16(CISCO_TYPE_SLARP);



 *(__be32 *)(p + 4) = cpu_to_be32(CISCO_SLARP_REPLY);
 *(__be32 *)(p + 8) = addr;
 *(__be32 *)(p + 12) = mask;
 *(__be16 *)(p + 16) = cpu_to_be16(0);
 p += 18;

 isdn_net_write_super(lp, skb);
}

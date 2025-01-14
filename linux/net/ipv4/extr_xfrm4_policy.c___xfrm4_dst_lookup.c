
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int a4; } ;
typedef TYPE_1__ xfrm_address_t ;
typedef int u32 ;
struct dst_entry {int dummy; } ;
struct rtable {struct dst_entry dst; } ;
struct net {int dummy; } ;
struct flowi4 {int flowi4_tos; int flowi4_flags; int saddr; int flowi4_mark; int flowi4_oif; int daddr; } ;


 struct dst_entry* ERR_CAST (struct rtable*) ;
 int FLOWI_FLAG_SKIP_NH_OIF ;
 int IS_ERR (struct rtable*) ;
 struct rtable* __ip_route_output_key (struct net*,struct flowi4*) ;
 int l3mdev_master_ifindex_by_index (struct net*,int) ;
 int memset (struct flowi4*,int ,int) ;

__attribute__((used)) static struct dst_entry *__xfrm4_dst_lookup(struct net *net, struct flowi4 *fl4,
         int tos, int oif,
         const xfrm_address_t *saddr,
         const xfrm_address_t *daddr,
         u32 mark)
{
 struct rtable *rt;

 memset(fl4, 0, sizeof(*fl4));
 fl4->daddr = daddr->a4;
 fl4->flowi4_tos = tos;
 fl4->flowi4_oif = l3mdev_master_ifindex_by_index(net, oif);
 fl4->flowi4_mark = mark;
 if (saddr)
  fl4->saddr = saddr->a4;

 fl4->flowi4_flags = FLOWI_FLAG_SKIP_NH_OIF;

 rt = __ip_route_output_key(net, fl4);
 if (!IS_ERR(rt))
  return &rt->dst;

 return ERR_CAST(rt);
}

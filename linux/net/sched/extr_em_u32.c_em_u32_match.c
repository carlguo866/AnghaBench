
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_pkt_info {unsigned char* ptr; int nexthdr; } ;
struct tcf_ematch {scalar_t__ data; } ;
struct tc_u32_key {int offmask; int val; int mask; int off; } ;
struct sk_buff {int dummy; } ;
typedef int __be32 ;


 unsigned char* skb_network_header (struct sk_buff*) ;
 int tcf_valid_offset (struct sk_buff*,unsigned char const*,int) ;

__attribute__((used)) static int em_u32_match(struct sk_buff *skb, struct tcf_ematch *em,
   struct tcf_pkt_info *info)
{
 struct tc_u32_key *key = (struct tc_u32_key *) em->data;
 const unsigned char *ptr = skb_network_header(skb);

 if (info) {
  if (info->ptr)
   ptr = info->ptr;
  ptr += (info->nexthdr & key->offmask);
 }

 ptr += key->off;

 if (!tcf_valid_offset(skb, ptr, sizeof(u32)))
  return 0;

 return !(((*(__be32 *) ptr) ^ key->val) & key->mask);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int endmark ;
typedef scalar_t__ __be16 ;


 scalar_t__ MRP_END_MARK ;
 scalar_t__ skb_copy_bits (struct sk_buff*,int,scalar_t__*,int) ;

__attribute__((used)) static int mrp_pdu_parse_end_mark(struct sk_buff *skb, int *offset)
{
 __be16 endmark;

 if (skb_copy_bits(skb, *offset, &endmark, sizeof(endmark)) < 0)
  return -1;
 if (endmark == MRP_END_MARK) {
  *offset += sizeof(endmark);
  return -1;
 }
 return 0;
}

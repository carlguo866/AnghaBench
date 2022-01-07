
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skb_frag_struct {int page_offset; int size; int page; } ;
struct sk_buff {int len; int data_len; int truesize; void* ip_summed; } ;
struct TYPE_2__ {int nr_frags; struct skb_frag_struct* frags; } ;


 int BUG_ON (int) ;
 void* CHECKSUM_PARTIAL ;
 int MAX_SKB_FRAGS ;
 int get_page (int ) ;
 int put_page (int ) ;
 int skb_can_coalesce (struct sk_buff*,int,int ,int) ;
 int skb_headlen (struct sk_buff*) ;
 scalar_t__ skb_prepare_for_shift (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

int skb_shift(struct sk_buff *tgt, struct sk_buff *skb, int shiftlen)
{
 int from, to, merge, todo;
 struct skb_frag_struct *fragfrom, *fragto;

 BUG_ON(shiftlen > skb->len);
 BUG_ON(skb_headlen(skb));

 todo = shiftlen;
 from = 0;
 to = skb_shinfo(tgt)->nr_frags;
 fragfrom = &skb_shinfo(skb)->frags[from];




 if (!to ||
     !skb_can_coalesce(tgt, to, fragfrom->page, fragfrom->page_offset)) {
  merge = -1;
 } else {
  merge = to - 1;

  todo -= fragfrom->size;
  if (todo < 0) {
   if (skb_prepare_for_shift(skb) ||
       skb_prepare_for_shift(tgt))
    return 0;


   fragfrom = &skb_shinfo(skb)->frags[from];
   fragto = &skb_shinfo(tgt)->frags[merge];

   fragto->size += shiftlen;
   fragfrom->size -= shiftlen;
   fragfrom->page_offset += shiftlen;

   goto onlymerged;
  }

  from++;
 }


 if ((shiftlen == skb->len) &&
     (skb_shinfo(skb)->nr_frags - from) > (MAX_SKB_FRAGS - to))
  return 0;

 if (skb_prepare_for_shift(skb) || skb_prepare_for_shift(tgt))
  return 0;

 while ((todo > 0) && (from < skb_shinfo(skb)->nr_frags)) {
  if (to == MAX_SKB_FRAGS)
   return 0;

  fragfrom = &skb_shinfo(skb)->frags[from];
  fragto = &skb_shinfo(tgt)->frags[to];

  if (todo >= fragfrom->size) {
   *fragto = *fragfrom;
   todo -= fragfrom->size;
   from++;
   to++;

  } else {
   get_page(fragfrom->page);
   fragto->page = fragfrom->page;
   fragto->page_offset = fragfrom->page_offset;
   fragto->size = todo;

   fragfrom->page_offset += todo;
   fragfrom->size -= todo;
   todo = 0;

   to++;
   break;
  }
 }


 skb_shinfo(tgt)->nr_frags = to;

 if (merge >= 0) {
  fragfrom = &skb_shinfo(skb)->frags[0];
  fragto = &skb_shinfo(tgt)->frags[merge];

  fragto->size += fragfrom->size;
  put_page(fragfrom->page);
 }


 to = 0;
 while (from < skb_shinfo(skb)->nr_frags)
  skb_shinfo(skb)->frags[to++] = skb_shinfo(skb)->frags[from++];
 skb_shinfo(skb)->nr_frags = to;

 BUG_ON(todo > 0 && !skb_shinfo(skb)->nr_frags);

onlymerged:



 tgt->ip_summed = CHECKSUM_PARTIAL;
 skb->ip_summed = CHECKSUM_PARTIAL;


 skb->len -= shiftlen;
 skb->data_len -= shiftlen;
 skb->truesize -= shiftlen;
 tgt->len += shiftlen;
 tgt->data_len += shiftlen;
 tgt->truesize += shiftlen;

 return shiftlen;
}

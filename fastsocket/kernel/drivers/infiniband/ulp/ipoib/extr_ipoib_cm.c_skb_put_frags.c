
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {unsigned int tail; unsigned int len; unsigned int data_len; unsigned int truesize; } ;
struct TYPE_4__ {unsigned int size; } ;
typedef TYPE_1__ skb_frag_t ;
struct TYPE_5__ {int nr_frags; TYPE_1__* frags; } ;


 scalar_t__ PAGE_SIZE ;
 unsigned int min (unsigned int,unsigned int) ;
 int skb_fill_page_desc (struct sk_buff*,int,int ,int ,scalar_t__) ;
 int skb_frag_page (TYPE_1__*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void skb_put_frags(struct sk_buff *skb, unsigned int hdr_space,
     unsigned int length, struct sk_buff *toskb)
{
 int i, num_frags;
 unsigned int size;


 size = min(length, hdr_space);
 skb->tail += size;
 skb->len += size;
 length -= size;

 num_frags = skb_shinfo(skb)->nr_frags;
 for (i = 0; i < num_frags; i++) {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[i];

  if (length == 0) {

   skb_fill_page_desc(toskb, i, skb_frag_page(frag),
        0, PAGE_SIZE);
   --skb_shinfo(skb)->nr_frags;
  } else {
   size = min(length, (unsigned) PAGE_SIZE);

   frag->size = size;
   skb->data_len += size;
   skb->truesize += size;
   skb->len += size;
   length -= size;
  }
 }
}

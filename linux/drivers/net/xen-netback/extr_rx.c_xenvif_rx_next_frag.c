
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenvif_pkt_state {unsigned int frag; struct sk_buff* frag_iter; struct sk_buff* skb; scalar_t__ frag_offset; } ;
struct sk_buff {struct sk_buff* next; } ;
struct TYPE_2__ {unsigned int nr_frags; struct sk_buff* frag_list; } ;


 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void xenvif_rx_next_frag(struct xenvif_pkt_state *pkt)
{
 struct sk_buff *frag_iter = pkt->frag_iter;
 unsigned int nr_frags = skb_shinfo(frag_iter)->nr_frags;

 pkt->frag++;
 pkt->frag_offset = 0;

 if (pkt->frag >= nr_frags) {
  if (frag_iter == pkt->skb)
   pkt->frag_iter = skb_shinfo(frag_iter)->frag_list;
  else
   pkt->frag_iter = frag_iter->next;

  pkt->frag = -1;
 }
}

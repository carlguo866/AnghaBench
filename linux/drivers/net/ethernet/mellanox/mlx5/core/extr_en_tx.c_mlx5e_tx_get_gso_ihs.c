
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct udphdr {int dummy; } ;
struct sk_buff {scalar_t__ len; scalar_t__ encapsulation; } ;
struct mlx5e_txqsq {struct mlx5e_sq_stats* stats; } ;
struct mlx5e_sq_stats {int tso_bytes; int tso_packets; int tso_inner_bytes; int tso_inner_packets; } ;
struct TYPE_2__ {int gso_type; } ;


 int SKB_GSO_UDP_L4 ;
 scalar_t__ inner_tcp_hdrlen (struct sk_buff*) ;
 scalar_t__ skb_inner_transport_offset (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ skb_transport_offset (struct sk_buff*) ;
 scalar_t__ tcp_hdrlen (struct sk_buff*) ;

__attribute__((used)) static inline u16
mlx5e_tx_get_gso_ihs(struct mlx5e_txqsq *sq, struct sk_buff *skb)
{
 struct mlx5e_sq_stats *stats = sq->stats;
 u16 ihs;

 if (skb->encapsulation) {
  ihs = skb_inner_transport_offset(skb) + inner_tcp_hdrlen(skb);
  stats->tso_inner_packets++;
  stats->tso_inner_bytes += skb->len - ihs;
 } else {
  if (skb_shinfo(skb)->gso_type & SKB_GSO_UDP_L4)
   ihs = skb_transport_offset(skb) + sizeof(struct udphdr);
  else
   ihs = skb_transport_offset(skb) + tcp_hdrlen(skb);
  stats->tso_packets++;
  stats->tso_bytes += skb->len - ihs;
 }

 return ihs;
}

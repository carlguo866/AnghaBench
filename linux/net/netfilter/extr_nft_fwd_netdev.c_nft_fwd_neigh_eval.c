
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {struct net_device* dev; int protocol; } ;
struct TYPE_2__ {unsigned int code; } ;
struct nft_regs {TYPE_1__ verdict; int * data; } ;
struct nft_pktinfo {struct sk_buff* skb; } ;
struct nft_fwd_neigh {size_t sreg_addr; size_t sreg_dev; int nfproto; } ;
struct nft_expr {int dummy; } ;
struct net_device {int dummy; } ;
struct ipv6hdr {int hop_limit; } ;
struct iphdr {int dummy; } ;


 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int NEIGH_ARP_TABLE ;
 int NEIGH_ND_TABLE ;


 unsigned int NFT_BREAK ;
 unsigned int NF_DROP ;
 unsigned int NF_STOLEN ;
 struct net_device* dev_get_by_index_rcu (int ,int) ;
 int htons (int ) ;
 int ip_decrease_ttl (struct iphdr*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int neigh_xmit (int,struct net_device*,void*,struct sk_buff*) ;
 struct nft_fwd_neigh* nft_expr_priv (struct nft_expr const*) ;
 int nft_net (struct nft_pktinfo const*) ;
 int skb_try_make_writable (struct sk_buff*,int) ;

__attribute__((used)) static void nft_fwd_neigh_eval(const struct nft_expr *expr,
         struct nft_regs *regs,
         const struct nft_pktinfo *pkt)
{
 struct nft_fwd_neigh *priv = nft_expr_priv(expr);
 void *addr = &regs->data[priv->sreg_addr];
 int oif = regs->data[priv->sreg_dev];
 unsigned int verdict = NF_STOLEN;
 struct sk_buff *skb = pkt->skb;
 struct net_device *dev;
 int neigh_table;

 switch (priv->nfproto) {
 case 129: {
  struct iphdr *iph;

  if (skb->protocol != htons(ETH_P_IP)) {
   verdict = NFT_BREAK;
   goto out;
  }
  if (skb_try_make_writable(skb, sizeof(*iph))) {
   verdict = NF_DROP;
   goto out;
  }
  iph = ip_hdr(skb);
  ip_decrease_ttl(iph);
  neigh_table = NEIGH_ARP_TABLE;
  break;
  }
 case 128: {
  struct ipv6hdr *ip6h;

  if (skb->protocol != htons(ETH_P_IPV6)) {
   verdict = NFT_BREAK;
   goto out;
  }
  if (skb_try_make_writable(skb, sizeof(*ip6h))) {
   verdict = NF_DROP;
   goto out;
  }
  ip6h = ipv6_hdr(skb);
  ip6h->hop_limit--;
  neigh_table = NEIGH_ND_TABLE;
  break;
  }
 default:
  verdict = NFT_BREAK;
  goto out;
 }

 dev = dev_get_by_index_rcu(nft_net(pkt), oif);
 if (dev == ((void*)0))
  return;

 skb->dev = dev;
 neigh_xmit(neigh_table, dev, addr, skb);
out:
 regs->verdict.code = verdict;
}

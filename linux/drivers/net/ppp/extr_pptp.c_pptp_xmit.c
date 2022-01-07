
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct sock {int dummy; } ;
struct sk_buff {unsigned char* data; int len; scalar_t__ sk; int ip_summed; } ;
struct TYPE_19__ {struct net_device* dev; } ;
struct rtable {TYPE_7__ dst; } ;
struct TYPE_14__ {int s_addr; } ;
struct TYPE_17__ {int call_id; TYPE_2__ sin_addr; } ;
struct TYPE_15__ {int s_addr; } ;
struct TYPE_16__ {TYPE_3__ sin_addr; } ;
struct pptp_opt {int ppp_flags; scalar_t__ seq_recv; scalar_t__ ack_sent; scalar_t__ seq_sent; TYPE_5__ dst_addr; TYPE_4__ src_addr; } ;
struct TYPE_18__ {int flags; int protocol; } ;
struct pptp_gre_header {void* payload_len; void* ack; TYPE_6__ gre_hd; void* seq; void* call_id; } ;
struct TYPE_13__ {struct pptp_opt pptp; } ;
struct pppox_sock {TYPE_1__ proto; } ;
struct ppp_channel {scalar_t__ private; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct iphdr {int version; int ihl; void* tot_len; int ttl; int saddr; int daddr; scalar_t__ tos; int protocol; void* frag_off; } ;
struct flowi4 {int saddr; int daddr; } ;
typedef scalar_t__ __u32 ;
struct TYPE_20__ {int sk_state; } ;
struct TYPE_12__ {int flags; int opt; } ;


 int CHECKSUM_NONE ;
 int GRE_ACK ;
 int GRE_KEY ;
 int GRE_PROTO_PPP ;
 int GRE_SEQ ;
 int GRE_VERSION_1 ;
 TYPE_11__* IPCB (struct sk_buff*) ;
 int IPPROTO_GRE ;
 int IPSKB_REROUTED ;
 int IPSKB_XFRM_TRANSFORMED ;
 int IPSKB_XFRM_TUNNEL_SIZE ;
 int IP_DF ;
 scalar_t__ IS_ERR (struct rtable*) ;
 int LL_RESERVED_SPACE (struct net_device*) ;
 int PPPOX_DEAD ;
 unsigned char PPP_ALLSTATIONS ;
 unsigned char PPP_LCP ;
 unsigned char PPP_UI ;
 int RT_TOS (int ) ;
 int SC_COMP_AC ;
 int SC_COMP_PROT ;
 int consume_skb (struct sk_buff*) ;
 void* htonl (scalar_t__) ;
 void* htons (int) ;
 int ip4_dst_hoplimit (TYPE_7__*) ;
 scalar_t__ ip_dont_fragment (struct sock*,TYPE_7__*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_local_out (struct net*,scalar_t__,struct sk_buff*) ;
 struct rtable* ip_route_output_ports (struct net*,struct flowi4*,int *,int ,int ,int ,int ,int ,int ,int ) ;
 int ip_rt_put (struct rtable*) ;
 int ip_select_ident (struct net*,struct sk_buff*,int *) ;
 int ip_send_check (struct iphdr*) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (int *,int ,int) ;
 int nf_reset_ct (struct sk_buff*) ;
 struct pppox_sock* pppox_sk (struct sock*) ;
 TYPE_8__* sk_pppox (struct pppox_sock*) ;
 scalar_t__ skb_cloned (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,TYPE_7__*) ;
 int skb_headroom (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 unsigned char* skb_push (struct sk_buff*,int) ;
 struct sk_buff* skb_realloc_headroom (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int skb_set_owner_w (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_shared (struct sk_buff*) ;
 struct net* sock_net (struct sock*) ;

__attribute__((used)) static int pptp_xmit(struct ppp_channel *chan, struct sk_buff *skb)
{
 struct sock *sk = (struct sock *) chan->private;
 struct pppox_sock *po = pppox_sk(sk);
 struct net *net = sock_net(sk);
 struct pptp_opt *opt = &po->proto.pptp;
 struct pptp_gre_header *hdr;
 unsigned int header_len = sizeof(*hdr);
 struct flowi4 fl4;
 int islcp;
 int len;
 unsigned char *data;
 __u32 seq_recv;


 struct rtable *rt;
 struct net_device *tdev;
 struct iphdr *iph;
 int max_headroom;

 if (sk_pppox(po)->sk_state & PPPOX_DEAD)
  goto tx_error;

 rt = ip_route_output_ports(net, &fl4, ((void*)0),
       opt->dst_addr.sin_addr.s_addr,
       opt->src_addr.sin_addr.s_addr,
       0, 0, IPPROTO_GRE,
       RT_TOS(0), 0);
 if (IS_ERR(rt))
  goto tx_error;

 tdev = rt->dst.dev;

 max_headroom = LL_RESERVED_SPACE(tdev) + sizeof(*iph) + sizeof(*hdr) + 2;

 if (skb_headroom(skb) < max_headroom || skb_cloned(skb) || skb_shared(skb)) {
  struct sk_buff *new_skb = skb_realloc_headroom(skb, max_headroom);
  if (!new_skb) {
   ip_rt_put(rt);
   goto tx_error;
  }
  if (skb->sk)
   skb_set_owner_w(new_skb, skb->sk);
  consume_skb(skb);
  skb = new_skb;
 }

 data = skb->data;
 islcp = ((data[0] << 8) + data[1]) == PPP_LCP && 1 <= data[2] && data[2] <= 7;


 if ((opt->ppp_flags & SC_COMP_PROT) && data[0] == 0 && !islcp)
  skb_pull(skb, 1);


 if ((opt->ppp_flags & SC_COMP_AC) == 0 || islcp) {
  data = skb_push(skb, 2);
  data[0] = PPP_ALLSTATIONS;
  data[1] = PPP_UI;
 }

 len = skb->len;

 seq_recv = opt->seq_recv;

 if (opt->ack_sent == seq_recv)
  header_len -= sizeof(hdr->ack);


 skb_push(skb, header_len);
 hdr = (struct pptp_gre_header *)(skb->data);

 hdr->gre_hd.flags = GRE_KEY | GRE_VERSION_1 | GRE_SEQ;
 hdr->gre_hd.protocol = GRE_PROTO_PPP;
 hdr->call_id = htons(opt->dst_addr.call_id);

 hdr->seq = htonl(++opt->seq_sent);
 if (opt->ack_sent != seq_recv) {

  hdr->gre_hd.flags |= GRE_ACK;
  hdr->ack = htonl(seq_recv);
  opt->ack_sent = seq_recv;
 }
 hdr->payload_len = htons(len);



 skb_reset_transport_header(skb);
 skb_push(skb, sizeof(*iph));
 skb_reset_network_header(skb);
 memset(&(IPCB(skb)->opt), 0, sizeof(IPCB(skb)->opt));
 IPCB(skb)->flags &= ~(IPSKB_XFRM_TUNNEL_SIZE | IPSKB_XFRM_TRANSFORMED | IPSKB_REROUTED);

 iph = ip_hdr(skb);
 iph->version = 4;
 iph->ihl = sizeof(struct iphdr) >> 2;
 if (ip_dont_fragment(sk, &rt->dst))
  iph->frag_off = htons(IP_DF);
 else
  iph->frag_off = 0;
 iph->protocol = IPPROTO_GRE;
 iph->tos = 0;
 iph->daddr = fl4.daddr;
 iph->saddr = fl4.saddr;
 iph->ttl = ip4_dst_hoplimit(&rt->dst);
 iph->tot_len = htons(skb->len);

 skb_dst_drop(skb);
 skb_dst_set(skb, &rt->dst);

 nf_reset_ct(skb);

 skb->ip_summed = CHECKSUM_NONE;
 ip_select_ident(net, skb, ((void*)0));
 ip_send_check(iph);

 ip_local_out(net, skb->sk, skb);
 return 1;

tx_error:
 kfree_skb(skb);
 return 1;
}

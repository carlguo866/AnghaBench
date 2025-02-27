
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr_ipx {int sipx_port; int sipx_node; scalar_t__ sipx_network; int sipx_type; } ;
struct sock {scalar_t__ sk_no_check; } ;
struct sk_buff {struct sock* sk; } ;
struct TYPE_9__ {int node; int sock; } ;
struct TYPE_8__ {int sock; int node; } ;
struct ipxhdr {TYPE_4__ ipx_dest; void* ipx_checksum; TYPE_3__ ipx_source; int ipx_type; void* ipx_pktsize; } ;
struct ipx_sock {int port; TYPE_2__* intrfc; int node; } ;
struct ipx_route {int ir_router_node; scalar_t__ ir_routed; struct ipx_interface* ir_intrfc; } ;
struct ipx_interface {int if_ipx_offset; void* if_dlink_type; int if_node; scalar_t__ if_netnum; } ;
struct iovec {int dummy; } ;
struct TYPE_6__ {int index; } ;
struct TYPE_10__ {scalar_t__ ipx_dest_net; scalar_t__ ipx_source_net; TYPE_1__ last_hop; scalar_t__ ipx_tctrl; } ;
struct TYPE_7__ {int if_node; scalar_t__ if_netnum; } ;


 int ENETUNREACH ;
 int IPX_FRAME_8023 ;
 int IPX_NODE_LEN ;
 TYPE_5__* IPX_SKB_CB (struct sk_buff*) ;
 void* htons (int) ;
 void* ipx_cksum (struct ipxhdr*,size_t) ;
 struct ipxhdr* ipx_hdr (struct sk_buff*) ;
 struct ipx_interface* ipx_primary_net ;
 struct ipx_sock* ipx_sk (struct sock*) ;
 int ipxitf_hold (struct ipx_interface*) ;
 int ipxitf_put (struct ipx_interface*) ;
 int ipxitf_send (struct ipx_interface*,struct sk_buff*,int ) ;
 struct ipx_route* ipxrtr_lookup (scalar_t__) ;
 int ipxrtr_put (struct ipx_route*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,int ,int ) ;
 int memcpy_fromiovec (int ,struct iovec*,size_t) ;
 int ntohs (int ) ;
 int skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,size_t,int,int*) ;

int ipxrtr_route_packet(struct sock *sk, struct sockaddr_ipx *usipx,
   struct iovec *iov, size_t len, int noblock)
{
 struct sk_buff *skb;
 struct ipx_sock *ipxs = ipx_sk(sk);
 struct ipx_interface *intrfc;
 struct ipxhdr *ipx;
 size_t size;
 int ipx_offset;
 struct ipx_route *rt = ((void*)0);
 int rc;


 if (!usipx->sipx_network && ipx_primary_net) {
  usipx->sipx_network = ipx_primary_net->if_netnum;
  intrfc = ipx_primary_net;
 } else {
  rt = ipxrtr_lookup(usipx->sipx_network);
  rc = -ENETUNREACH;
  if (!rt)
   goto out;
  intrfc = rt->ir_intrfc;
 }

 ipxitf_hold(intrfc);
 ipx_offset = intrfc->if_ipx_offset;
 size = sizeof(struct ipxhdr) + len + ipx_offset;

 skb = sock_alloc_send_skb(sk, size, noblock, &rc);
 if (!skb)
  goto out_put;

 skb_reserve(skb, ipx_offset);
 skb->sk = sk;


 skb_reset_network_header(skb);
 skb_reset_transport_header(skb);
 skb_put(skb, sizeof(struct ipxhdr));
 ipx = ipx_hdr(skb);
 ipx->ipx_pktsize = htons(len + sizeof(struct ipxhdr));
 IPX_SKB_CB(skb)->ipx_tctrl = 0;
 ipx->ipx_type = usipx->sipx_type;

 IPX_SKB_CB(skb)->last_hop.index = -1;




 rc = ntohs(ipxs->port);
 if (rc == 0x453 || rc == 0x452) {

  IPX_SKB_CB(skb)->ipx_source_net = intrfc->if_netnum;
  memcpy(ipx->ipx_source.node, intrfc->if_node, IPX_NODE_LEN);
 } else {
  IPX_SKB_CB(skb)->ipx_source_net = ipxs->intrfc->if_netnum;
  memcpy(ipx->ipx_source.node, ipxs->intrfc->if_node,
   IPX_NODE_LEN);
 }

 ipx->ipx_source.sock = ipxs->port;
 IPX_SKB_CB(skb)->ipx_dest_net = usipx->sipx_network;
 memcpy(ipx->ipx_dest.node, usipx->sipx_node, IPX_NODE_LEN);
 ipx->ipx_dest.sock = usipx->sipx_port;

 rc = memcpy_fromiovec(skb_put(skb, len), iov, len);
 if (rc) {
  kfree_skb(skb);
  goto out_put;
 }


 if (sk->sk_no_check || intrfc->if_dlink_type == htons(IPX_FRAME_8023))
  ipx->ipx_checksum = htons(0xFFFF);
 else
  ipx->ipx_checksum = ipx_cksum(ipx, len + sizeof(struct ipxhdr));

 rc = ipxitf_send(intrfc, skb, (rt && rt->ir_routed) ?
    rt->ir_router_node : ipx->ipx_dest.node);
out_put:
 ipxitf_put(intrfc);
 if (rt)
  ipxrtr_put(rt);
out:
 return rc;
}

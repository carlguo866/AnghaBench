
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_sock {struct vport* data; } ;
struct vport {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ovs_key_ipv4_tunnel {int dummy; } ;
struct iphdr {int dummy; } ;
typedef int __be64 ;
typedef int __be32 ;


 int TUNNEL_KEY ;
 int cpu_to_be64 (int) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ntohl (int ) ;
 int ovs_flow_tun_key_init (struct ovs_key_ipv4_tunnel*,struct iphdr*,int ,int ) ;
 int ovs_vport_receive (struct vport*,struct sk_buff*,struct ovs_key_ipv4_tunnel*) ;

__attribute__((used)) static void vxlan_rcv(struct vxlan_sock *vs, struct sk_buff *skb, __be32 vx_vni)
{
 struct ovs_key_ipv4_tunnel tun_key;
 struct vport *vport = vs->data;
 struct iphdr *iph;
 __be64 key;


 iph = ip_hdr(skb);
 key = cpu_to_be64(ntohl(vx_vni) >> 8);
 ovs_flow_tun_key_init(&tun_key, iph, key, TUNNEL_KEY);

 ovs_vport_receive(vport, skb, &tun_key);
}

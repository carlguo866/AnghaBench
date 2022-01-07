
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udphdr {int dummy; } ;
struct tcphdr {int doff; } ;
struct sk_buff {unsigned char* data; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef int buf ;
typedef int _tcph ;
typedef int __be32 ;
typedef int __be16 ;
struct TYPE_2__ {scalar_t__ protocol; } ;


 scalar_t__ IPPROTO_TCP ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int ip_hdrlen (struct sk_buff*) ;
 int net_notice_ratelimited (char*) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 int nf_nat_mangle_tcp_packet (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned int,int,char*,int) ;
 int nf_nat_mangle_udp_packet (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned int,int,char*,int) ;
 struct tcphdr* skb_header_pointer (struct sk_buff*,int,int,struct tcphdr*) ;

__attribute__((used)) static int set_addr(struct sk_buff *skb, unsigned int protoff,
      unsigned char **data, int dataoff,
      unsigned int addroff, __be32 ip, __be16 port)
{
 enum ip_conntrack_info ctinfo;
 struct nf_conn *ct = nf_ct_get(skb, &ctinfo);
 struct {
  __be32 ip;
  __be16 port;
 } __attribute__ ((__packed__)) buf;
 const struct tcphdr *th;
 struct tcphdr _tcph;

 buf.ip = ip;
 buf.port = port;
 addroff += dataoff;

 if (ip_hdr(skb)->protocol == IPPROTO_TCP) {
  if (!nf_nat_mangle_tcp_packet(skb, ct, ctinfo,
           protoff, addroff, sizeof(buf),
           (char *) &buf, sizeof(buf))) {
   net_notice_ratelimited("nf_nat_h323: nf_nat_mangle_tcp_packet error\n");
   return -1;
  }


  th = skb_header_pointer(skb, ip_hdrlen(skb),
     sizeof(_tcph), &_tcph);
  if (th == ((void*)0))
   return -1;
  *data = skb->data + ip_hdrlen(skb) + th->doff * 4 + dataoff;
 } else {
  if (!nf_nat_mangle_udp_packet(skb, ct, ctinfo,
           protoff, addroff, sizeof(buf),
           (char *) &buf, sizeof(buf))) {
   net_notice_ratelimited("nf_nat_h323: nf_nat_mangle_udp_packet error\n");
   return -1;
  }



  *data = skb->data + ip_hdrlen(skb) + sizeof(struct udphdr);
 }

 return 0;
}

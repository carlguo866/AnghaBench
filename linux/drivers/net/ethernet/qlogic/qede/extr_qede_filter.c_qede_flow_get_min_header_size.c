
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {int dummy; } ;
struct tcphdr {int dummy; } ;
struct qede_arfs_tuple {scalar_t__ eth_proto; scalar_t__ ip_proto; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;


 int ETH_HLEN ;
 int ETH_P_IP ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static int qede_flow_get_min_header_size(struct qede_arfs_tuple *t)
{
 int size = ETH_HLEN;

 if (t->eth_proto == htons(ETH_P_IP))
  size += sizeof(struct iphdr);
 else
  size += sizeof(struct ipv6hdr);

 if (t->ip_proto == IPPROTO_TCP)
  size += sizeof(struct tcphdr);
 else
  size += sizeof(struct udphdr);

 return size;
}

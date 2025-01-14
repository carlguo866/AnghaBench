
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
struct TYPE_6__ {union ib_gid sgid; union ib_gid dgid; } ;
struct TYPE_4__ {int ip_dst; int ip_src; } ;
union rdma_network_hdr {TYPE_3__ ibgrh; TYPE_1__ roce4grh; } ;
struct TYPE_5__ {int s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct in6_addr {int dummy; } ;
typedef enum rdma_network_type { ____Placeholder_rdma_network_type } rdma_network_type ;
typedef int __be32 ;


 int EINVAL ;
 int RDMA_NETWORK_IB ;
 int RDMA_NETWORK_IPV4 ;
 int RDMA_NETWORK_IPV6 ;
 int ipv6_addr_set_v4mapped (int ,struct in6_addr*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int get_gids_from_rdma_hdr(const union rdma_network_hdr *hdr,
      enum rdma_network_type net_type,
      union ib_gid *sgid, union ib_gid *dgid)
{
 struct sockaddr_in src_in;
 struct sockaddr_in dst_in;
 __be32 src_saddr, dst_saddr;

 if (!sgid || !dgid)
  return -EINVAL;

 if (net_type == RDMA_NETWORK_IPV4) {
  memcpy(&src_in.sin_addr.s_addr,
         &hdr->roce4grh.ip_src, 4);
  memcpy(&dst_in.sin_addr.s_addr,
         &hdr->roce4grh.ip_dst, 4);
  src_saddr = src_in.sin_addr.s_addr;
  dst_saddr = dst_in.sin_addr.s_addr;
  ipv6_addr_set_v4mapped(src_saddr,
           (struct in6_addr *)sgid);
  ipv6_addr_set_v4mapped(dst_saddr,
           (struct in6_addr *)dgid);
  return 0;
 } else if (net_type == RDMA_NETWORK_IPV6 ||
     net_type == RDMA_NETWORK_IB) {
  *dgid = hdr->ibgrh.dgid;
  *sgid = hdr->ibgrh.sgid;
  return 0;
 } else {
  return -EINVAL;
 }
}

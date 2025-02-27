
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct rdma_addrinfo {scalar_t__ ai_family; int ai_connect_len; struct ib_connect_hdr* ai_connect; scalar_t__ ai_dst_addr; scalar_t__ ai_src_addr; } ;
struct ib_connect_hdr {int ip_version; int cma_dst_ip6; int cma_src_ip6; int cma_dst_ip4; int cma_src_ip4; } ;


 scalar_t__ AF_IB ;
 scalar_t__ AF_INET ;
 int ENOMEM ;
 int ERR (int ) ;
 struct ib_connect_hdr* calloc (int,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int ucma_ib_set_connect(struct rdma_addrinfo *ib_rai,
          struct rdma_addrinfo *rai)
{
 struct ib_connect_hdr *hdr;

 if (rai->ai_family == AF_IB)
  return 0;

 hdr = calloc(1, sizeof(*hdr));
 if (!hdr)
  return ERR(ENOMEM);

 if (rai->ai_family == AF_INET) {
  hdr->ip_version = 4 << 4;
  memcpy(&hdr->cma_src_ip4,
         &((struct sockaddr_in *) rai->ai_src_addr)->sin_addr, 4);
  memcpy(&hdr->cma_dst_ip4,
         &((struct sockaddr_in *) rai->ai_dst_addr)->sin_addr, 4);
 } else {
  hdr->ip_version = 6 << 4;
  memcpy(&hdr->cma_src_ip6,
         &((struct sockaddr_in6 *) rai->ai_src_addr)->sin6_addr, 16);
  memcpy(&hdr->cma_dst_ip6,
         &((struct sockaddr_in6 *) rai->ai_dst_addr)->sin6_addr, 16);
 }

 ib_rai->ai_connect = hdr;
 ib_rai->ai_connect_len = sizeof(*hdr);
 return 0;
}

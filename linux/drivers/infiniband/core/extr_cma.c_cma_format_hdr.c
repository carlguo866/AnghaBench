
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_port; int sin6_addr; } ;
struct TYPE_8__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_3__ sin_addr; } ;
struct rdma_id_private {int dummy; } ;
struct TYPE_7__ {int addr; } ;
struct TYPE_10__ {int ip6; TYPE_2__ ip4; } ;
struct TYPE_6__ {int addr; } ;
struct TYPE_9__ {int ip6; TYPE_1__ ip4; } ;
struct cma_hdr {int port; TYPE_5__ dst_addr; TYPE_4__ src_addr; int cma_version; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int CMA_VERSION ;
 scalar_t__ cma_dst_addr (struct rdma_id_private*) ;
 scalar_t__ cma_family (struct rdma_id_private*) ;
 int cma_set_ip_ver (struct cma_hdr*,int) ;
 scalar_t__ cma_src_addr (struct rdma_id_private*) ;

__attribute__((used)) static int cma_format_hdr(void *hdr, struct rdma_id_private *id_priv)
{
 struct cma_hdr *cma_hdr;

 cma_hdr = hdr;
 cma_hdr->cma_version = CMA_VERSION;
 if (cma_family(id_priv) == AF_INET) {
  struct sockaddr_in *src4, *dst4;

  src4 = (struct sockaddr_in *) cma_src_addr(id_priv);
  dst4 = (struct sockaddr_in *) cma_dst_addr(id_priv);

  cma_set_ip_ver(cma_hdr, 4);
  cma_hdr->src_addr.ip4.addr = src4->sin_addr.s_addr;
  cma_hdr->dst_addr.ip4.addr = dst4->sin_addr.s_addr;
  cma_hdr->port = src4->sin_port;
 } else if (cma_family(id_priv) == AF_INET6) {
  struct sockaddr_in6 *src6, *dst6;

  src6 = (struct sockaddr_in6 *) cma_src_addr(id_priv);
  dst6 = (struct sockaddr_in6 *) cma_dst_addr(id_priv);

  cma_set_ip_ver(cma_hdr, 6);
  cma_hdr->src_addr.ip6 = src6->sin6_addr;
  cma_hdr->dst_addr.ip6 = dst6->sin6_addr;
  cma_hdr->port = src6->sin6_port;
 }
 return 0;
}

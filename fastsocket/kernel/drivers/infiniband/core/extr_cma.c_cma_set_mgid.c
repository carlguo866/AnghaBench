
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
struct TYPE_11__ {int * s6_addr32; } ;
struct sockaddr_in6 {TYPE_5__ sin6_addr; } ;
struct TYPE_9__ {int s_addr; } ;
struct sockaddr_in {TYPE_3__ sin_addr; } ;
struct sockaddr_ib {TYPE_5__ sib_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct rdma_dev_addr {int broadcast; } ;
struct TYPE_7__ {struct rdma_dev_addr dev_addr; } ;
struct TYPE_8__ {TYPE_1__ addr; } ;
struct TYPE_10__ {scalar_t__ ps; TYPE_2__ route; } ;
struct rdma_id_private {TYPE_4__ id; } ;


 scalar_t__ AF_IB ;
 scalar_t__ AF_INET6 ;
 int MAX_ADDR_LEN ;
 scalar_t__ RDMA_PS_UDP ;
 int be32_to_cpu (int ) ;
 scalar_t__ cma_any_addr (struct sockaddr*) ;
 int ip_ib_mc_map (int ,int ,unsigned char*) ;
 int ipv6_ib_mc_map (TYPE_5__*,int ,unsigned char*) ;
 int memcpy (union ib_gid*,TYPE_5__*,int) ;
 int memset (union ib_gid*,int ,int) ;

__attribute__((used)) static void cma_set_mgid(struct rdma_id_private *id_priv,
    struct sockaddr *addr, union ib_gid *mgid)
{
 unsigned char mc_map[MAX_ADDR_LEN];
 struct rdma_dev_addr *dev_addr = &id_priv->id.route.addr.dev_addr;
 struct sockaddr_in *sin = (struct sockaddr_in *) addr;
 struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *) addr;

 if (cma_any_addr(addr)) {
  memset(mgid, 0, sizeof *mgid);
 } else if ((addr->sa_family == AF_INET6) &&
     ((be32_to_cpu(sin6->sin6_addr.s6_addr32[0]) & 0xFFF0FFFF) ==
         0xFF10A01B)) {

  memcpy(mgid, &sin6->sin6_addr, sizeof *mgid);
 } else if (addr->sa_family == AF_IB) {
  memcpy(mgid, &((struct sockaddr_ib *) addr)->sib_addr, sizeof *mgid);
 } else if ((addr->sa_family == AF_INET6)) {
  ipv6_ib_mc_map(&sin6->sin6_addr, dev_addr->broadcast, mc_map);
  if (id_priv->id.ps == RDMA_PS_UDP)
   mc_map[7] = 0x01;
  *mgid = *(union ib_gid *) (mc_map + 4);
 } else {
  ip_ib_mc_map(sin->sin_addr.s_addr, dev_addr->broadcast, mc_map);
  if (id_priv->id.ps == RDMA_PS_UDP)
   mc_map[7] = 0x01;
  *mgid = *(union ib_gid *) (mc_map + 4);
 }
}

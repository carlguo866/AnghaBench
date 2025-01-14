
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_incoming {scalar_t__ i_rdma_cookie; } ;
struct msghdr {int dummy; } ;


 int RDS_CMSG_RDMA_DEST ;
 int SOL_RDS ;
 int put_cmsg (struct msghdr*,int ,int ,int,scalar_t__*) ;

__attribute__((used)) static int rds_cmsg_recv(struct rds_incoming *inc, struct msghdr *msg)
{
 int ret = 0;

 if (inc->i_rdma_cookie) {
  ret = put_cmsg(msg, SOL_RDS, RDS_CMSG_RDMA_DEST,
    sizeof(inc->i_rdma_cookie), &inc->i_rdma_cookie);
  if (ret)
   return ret;
 }

 return 0;
}

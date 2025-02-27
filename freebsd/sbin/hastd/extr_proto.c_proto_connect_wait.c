
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proto_conn {scalar_t__ pc_magic; scalar_t__ pc_side; int pc_ctx; TYPE_1__* pc_proto; } ;
struct TYPE_2__ {int (* prt_connect_wait ) (int ,int) ;} ;


 int PJDLOG_ASSERT (int) ;
 scalar_t__ PROTO_CONN_MAGIC ;
 scalar_t__ PROTO_SIDE_CLIENT ;
 int errno ;
 int stub1 (int ,int) ;

int
proto_connect_wait(struct proto_conn *conn, int timeout)
{
 int ret;

 PJDLOG_ASSERT(conn != ((void*)0));
 PJDLOG_ASSERT(conn->pc_magic == PROTO_CONN_MAGIC);
 PJDLOG_ASSERT(conn->pc_side == PROTO_SIDE_CLIENT);
 PJDLOG_ASSERT(conn->pc_proto != ((void*)0));
 PJDLOG_ASSERT(conn->pc_proto->prt_connect_wait != ((void*)0));
 PJDLOG_ASSERT(timeout >= 0);

 ret = conn->pc_proto->prt_connect_wait(conn->pc_ctx, timeout);
 if (ret != 0) {
  errno = ret;
  return (-1);
 }

 return (0);
}

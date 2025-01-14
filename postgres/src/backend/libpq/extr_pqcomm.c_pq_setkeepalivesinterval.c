
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int interval ;
struct TYPE_7__ {int ss_family; } ;
struct TYPE_8__ {TYPE_1__ addr; } ;
struct TYPE_9__ {int keepalives_interval; int default_keepalives_interval; int keepalives_idle; int sock; TYPE_2__ laddr; } ;
typedef TYPE_3__ Port ;


 int IPPROTO_TCP ;
 scalar_t__ IS_AF_UNIX (int ) ;
 int LOG ;
 int STATUS_ERROR ;
 int STATUS_OK ;
 int TCP_KEEPINTVL ;
 int elog (int ,char*,char*) ;
 scalar_t__ pq_getkeepalivesinterval (TYPE_3__*) ;
 int pq_setkeepaliveswin32 (TYPE_3__*,int ,int) ;
 scalar_t__ setsockopt (int ,int ,int ,char*,int) ;

int
pq_setkeepalivesinterval(int interval, Port *port)
{
 if (port == ((void*)0) || IS_AF_UNIX(port->laddr.addr.ss_family))
  return STATUS_OK;
 if (interval != 0)
 {
  elog(LOG, "setsockopt(%s) not supported", "TCP_KEEPINTVL");
  return STATUS_ERROR;
 }


 return STATUS_OK;
}

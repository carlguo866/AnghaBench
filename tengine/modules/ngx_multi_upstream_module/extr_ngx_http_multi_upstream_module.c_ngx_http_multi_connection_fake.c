
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ connection; TYPE_2__* upstream; } ;
typedef TYPE_3__ ngx_http_request_t ;
typedef int ngx_flag_t ;
struct TYPE_5__ {scalar_t__ connection; } ;
struct TYPE_6__ {TYPE_1__ peer; } ;



ngx_flag_t
ngx_http_multi_connection_fake(ngx_http_request_t *r)
{
    return r->upstream->peer.connection == r->connection;
}

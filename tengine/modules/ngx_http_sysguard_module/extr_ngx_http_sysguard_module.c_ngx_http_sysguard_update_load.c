
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_5__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_4__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_getloadavg (scalar_t__*,int,int ) ;
 scalar_t__ ngx_http_sysguard_cached_load ;
 scalar_t__ ngx_http_sysguard_cached_load_exptime ;
 scalar_t__ ngx_time () ;

__attribute__((used)) static ngx_int_t
ngx_http_sysguard_update_load(ngx_http_request_t *r, time_t exptime)
{
    ngx_int_t load, rc;

    ngx_http_sysguard_cached_load_exptime = ngx_time() + exptime;

    rc = ngx_getloadavg(&load, 1, r->connection->log);
    if (rc == NGX_ERROR) {

        ngx_http_sysguard_cached_load = 0;

        return NGX_ERROR;
    }

    ngx_http_sysguard_cached_load = load;

    return NGX_OK;
}

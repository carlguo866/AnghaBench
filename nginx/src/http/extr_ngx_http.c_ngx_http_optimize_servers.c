
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_http_core_main_conf_t ;
struct TYPE_11__ {size_t nelts; TYPE_5__* elts; } ;
struct TYPE_14__ {TYPE_1__ addrs; } ;
typedef TYPE_4__ ngx_http_conf_port_t ;
struct TYPE_12__ {int nelts; } ;
struct TYPE_15__ {TYPE_3__* default_server; TYPE_2__ servers; } ;
typedef TYPE_5__ ngx_http_conf_addr_t ;
typedef int ngx_conf_t ;
struct TYPE_16__ {size_t nelts; TYPE_4__* elts; } ;
typedef TYPE_6__ ngx_array_t ;
struct TYPE_13__ {scalar_t__ captures; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 int ngx_http_cmp_conf_addrs ;
 scalar_t__ ngx_http_init_listening (int *,TYPE_4__*) ;
 scalar_t__ ngx_http_server_names (int *,int *,TYPE_5__*) ;
 int ngx_sort (TYPE_5__*,size_t,int,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_optimize_servers(ngx_conf_t *cf, ngx_http_core_main_conf_t *cmcf,
    ngx_array_t *ports)
{
    ngx_uint_t p, a;
    ngx_http_conf_port_t *port;
    ngx_http_conf_addr_t *addr;

    if (ports == ((void*)0)) {
        return NGX_OK;
    }

    port = ports->elts;
    for (p = 0; p < ports->nelts; p++) {

        ngx_sort(port[p].addrs.elts, (size_t) port[p].addrs.nelts,
                 sizeof(ngx_http_conf_addr_t), ngx_http_cmp_conf_addrs);






        addr = port[p].addrs.elts;
        for (a = 0; a < port[p].addrs.nelts; a++) {

            if (addr[a].servers.nelts > 1



               )
            {
                if (ngx_http_server_names(cf, cmcf, &addr[a]) != NGX_OK) {
                    return NGX_ERROR;
                }
            }
        }

        if (ngx_http_init_listening(cf, &port[p]) != NGX_OK) {
            return NGX_ERROR;
        }
    }

    return NGX_OK;
}

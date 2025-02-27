
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_20__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_17__ ;


struct TYPE_22__ {int len; int data; } ;
struct TYPE_27__ {int naddrs; scalar_t__ family; int addrs; int * port; scalar_t__ no_port; TYPE_17__ host; int url; TYPE_17__* err; } ;
typedef TYPE_4__ ngx_url_t ;
typedef size_t ngx_uint_t ;
struct TYPE_28__ {size_t flags; TYPE_20__* servers; scalar_t__ no_port; int * port; int line; int file_name; TYPE_17__ host; } ;
typedef TYPE_5__ ngx_stream_upstream_srv_conf_t ;
struct TYPE_29__ {int naddrs; int addrs; } ;
typedef TYPE_6__ ngx_stream_upstream_server_t ;
struct TYPE_24__ {size_t nelts; TYPE_5__** elts; } ;
struct TYPE_30__ {TYPE_20__ upstreams; } ;
typedef TYPE_7__ ngx_stream_upstream_main_conf_t ;
struct TYPE_31__ {int pool; TYPE_3__* conf_file; int log; } ;
typedef TYPE_8__ ngx_conf_t ;
struct TYPE_23__ {int data; } ;
struct TYPE_25__ {TYPE_1__ name; } ;
struct TYPE_26__ {int line; TYPE_2__ file; } ;


 scalar_t__ AF_UNIX ;
 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 size_t NGX_STREAM_UPSTREAM_CREATE ;
 TYPE_20__* ngx_array_create (int ,int,int) ;
 void* ngx_array_push (TYPE_20__*) ;
 int ngx_conf_log_error (int ,TYPE_8__*,int ,char*,TYPE_17__*,...) ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_17__*,int *,int ,int ) ;
 int ngx_memzero (TYPE_6__*,int) ;
 scalar_t__ ngx_parse_url (int ,TYPE_4__*) ;
 TYPE_5__* ngx_pcalloc (int ,int) ;
 TYPE_7__* ngx_stream_conf_get_module_main_conf (TYPE_8__*,int ) ;
 int ngx_stream_upstream_module ;
 scalar_t__ ngx_strncasecmp (int ,int ,int ) ;

ngx_stream_upstream_srv_conf_t *
ngx_stream_upstream_add(ngx_conf_t *cf, ngx_url_t *u, ngx_uint_t flags)
{
    ngx_uint_t i;
    ngx_stream_upstream_server_t *us;
    ngx_stream_upstream_srv_conf_t *uscf, **uscfp;
    ngx_stream_upstream_main_conf_t *umcf;

    if (!(flags & NGX_STREAM_UPSTREAM_CREATE)) {

        if (ngx_parse_url(cf->pool, u) != NGX_OK) {
            if (u->err) {
                ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                                   "%s in upstream \"%V\"", u->err, &u->url);
            }

            return ((void*)0);
        }
    }

    umcf = ngx_stream_conf_get_module_main_conf(cf, ngx_stream_upstream_module);

    uscfp = umcf->upstreams.elts;

    for (i = 0; i < umcf->upstreams.nelts; i++) {

        if (uscfp[i]->host.len != u->host.len
            || ngx_strncasecmp(uscfp[i]->host.data, u->host.data, u->host.len)
               != 0)
        {
            continue;
        }

        if ((flags & NGX_STREAM_UPSTREAM_CREATE)
             && (uscfp[i]->flags & NGX_STREAM_UPSTREAM_CREATE))
        {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "duplicate upstream \"%V\"", &u->host);
            return ((void*)0);
        }

        if ((uscfp[i]->flags & NGX_STREAM_UPSTREAM_CREATE) && !u->no_port) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "upstream \"%V\" may not have port %d",
                               &u->host, u->port);
            return ((void*)0);
        }

        if ((flags & NGX_STREAM_UPSTREAM_CREATE) && !uscfp[i]->no_port) {
            ngx_log_error(NGX_LOG_EMERG, cf->log, 0,
                          "upstream \"%V\" may not have port %d in %s:%ui",
                          &u->host, uscfp[i]->port,
                          uscfp[i]->file_name, uscfp[i]->line);
            return ((void*)0);
        }

        if (uscfp[i]->port != u->port) {
            continue;
        }

        if (flags & NGX_STREAM_UPSTREAM_CREATE) {
            uscfp[i]->flags = flags;
        }

        return uscfp[i];
    }

    uscf = ngx_pcalloc(cf->pool, sizeof(ngx_stream_upstream_srv_conf_t));
    if (uscf == ((void*)0)) {
        return ((void*)0);
    }

    uscf->flags = flags;
    uscf->host = u->host;
    uscf->file_name = cf->conf_file->file.name.data;
    uscf->line = cf->conf_file->line;
    uscf->port = u->port;
    uscf->no_port = u->no_port;

    if (u->naddrs == 1 && (u->port || u->family == AF_UNIX)) {
        uscf->servers = ngx_array_create(cf->pool, 1,
                                         sizeof(ngx_stream_upstream_server_t));
        if (uscf->servers == ((void*)0)) {
            return ((void*)0);
        }

        us = ngx_array_push(uscf->servers);
        if (us == ((void*)0)) {
            return ((void*)0);
        }

        ngx_memzero(us, sizeof(ngx_stream_upstream_server_t));

        us->addrs = u->addrs;
        us->naddrs = 1;
    }

    uscfp = ngx_array_push(&umcf->upstreams);
    if (uscfp == ((void*)0)) {
        return ((void*)0);
    }

    *uscfp = uscf;

    return uscf;
}

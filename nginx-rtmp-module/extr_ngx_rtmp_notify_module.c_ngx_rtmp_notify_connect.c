
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int url; } ;
typedef TYPE_2__ ngx_url_t ;
struct TYPE_15__ {TYPE_1__* connection; scalar_t__ relay; scalar_t__ auto_pushed; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_16__ {TYPE_2__** url; } ;
typedef TYPE_4__ ngx_rtmp_notify_srv_conf_t ;
struct TYPE_17__ {int argsize; int * arg; int handle; int create; TYPE_2__* url; } ;
typedef TYPE_5__ ngx_rtmp_netcall_init_t ;
typedef int ngx_rtmp_connect_t ;
typedef int ngx_int_t ;
typedef int ci ;
struct TYPE_13__ {int log; } ;


 int NGX_LOG_INFO ;
 size_t NGX_RTMP_NOTIFY_CONNECT ;
 int next_connect (TYPE_3__*,int *) ;
 int ngx_log_error (int ,int ,int ,char*,int *) ;
 int ngx_memzero (TYPE_5__*,int) ;
 TYPE_4__* ngx_rtmp_get_module_srv_conf (TYPE_3__*,int ) ;
 int ngx_rtmp_netcall_create (TYPE_3__*,TYPE_5__*) ;
 int ngx_rtmp_notify_connect_create ;
 int ngx_rtmp_notify_connect_handle ;
 int ngx_rtmp_notify_module ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_notify_connect(ngx_rtmp_session_t *s, ngx_rtmp_connect_t *v)
{
    ngx_rtmp_notify_srv_conf_t *nscf;
    ngx_rtmp_netcall_init_t ci;
    ngx_url_t *url;

    if (s->auto_pushed || s->relay) {
        goto next;
    }

    nscf = ngx_rtmp_get_module_srv_conf(s, ngx_rtmp_notify_module);

    url = nscf->url[NGX_RTMP_NOTIFY_CONNECT];
    if (url == ((void*)0)) {
        goto next;
    }

    ngx_log_error(NGX_LOG_INFO, s->connection->log, 0,
                  "notify: connect '%V'", &url->url);

    ngx_memzero(&ci, sizeof(ci));

    ci.url = url;
    ci.create = ngx_rtmp_notify_connect_create;
    ci.handle = ngx_rtmp_notify_connect_handle;
    ci.arg = v;
    ci.argsize = sizeof(*v);

    return ngx_rtmp_netcall_create(s, &ci);

next:
    return next_connect(s, v);
}

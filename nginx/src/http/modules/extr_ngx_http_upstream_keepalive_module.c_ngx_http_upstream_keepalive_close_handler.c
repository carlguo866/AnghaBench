
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int free; } ;
typedef TYPE_1__ ngx_http_upstream_keepalive_srv_conf_t ;
struct TYPE_9__ {int queue; TYPE_1__* conf; } ;
typedef TYPE_2__ ngx_http_upstream_keepalive_cache_t ;
struct TYPE_10__ {scalar_t__ ready; TYPE_4__* data; int log; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_11__ {TYPE_2__* data; TYPE_7__* read; int fd; scalar_t__ close; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_12__ {scalar_t__ timedout; } ;


 int MSG_PEEK ;
 scalar_t__ NGX_EAGAIN ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_handle_read_event (TYPE_7__*,int ) ;
 int ngx_http_upstream_keepalive_close (TYPE_4__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_queue_insert_head (int *,int *) ;
 int ngx_queue_remove (int *) ;
 scalar_t__ ngx_socket_errno ;
 int recv (int ,char*,int,int ) ;

__attribute__((used)) static void
ngx_http_upstream_keepalive_close_handler(ngx_event_t *ev)
{
    ngx_http_upstream_keepalive_srv_conf_t *conf;
    ngx_http_upstream_keepalive_cache_t *item;

    int n;
    char buf[1];
    ngx_connection_t *c;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, ev->log, 0,
                   "keepalive close handler");

    c = ev->data;

    if (c->close || c->read->timedout) {
        goto close;
    }

    n = recv(c->fd, buf, 1, MSG_PEEK);

    if (n == -1 && ngx_socket_errno == NGX_EAGAIN) {
        ev->ready = 0;

        if (ngx_handle_read_event(c->read, 0) != NGX_OK) {
            goto close;
        }

        return;
    }

close:

    item = c->data;
    conf = item->conf;

    ngx_http_upstream_keepalive_close(c);

    ngx_queue_remove(&item->queue);
    ngx_queue_insert_head(&conf->free, &item->queue);
}

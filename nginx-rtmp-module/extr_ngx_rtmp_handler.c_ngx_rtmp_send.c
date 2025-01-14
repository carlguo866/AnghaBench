
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {size_t out_pos; size_t out_last; scalar_t__ out_bpos; int ping_reset; size_t out_queue; int posted_dry_events; TYPE_8__* out_chain; TYPE_8__** out; int out_bytes; int timeout; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
typedef int ngx_rtmp_core_srv_conf_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_14__ {scalar_t__ active; scalar_t__ timer_set; scalar_t__ timedout; TYPE_4__* data; } ;
typedef TYPE_3__ ngx_event_t ;
typedef int ngx_cycle_t ;
struct TYPE_15__ {int timedout; scalar_t__ (* send ) (TYPE_4__*,scalar_t__,scalar_t__) ;int write; int log; scalar_t__ destroyed; TYPE_2__* data; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_16__ {TYPE_1__* buf; struct TYPE_16__* next; } ;
struct TYPE_12__ {scalar_t__ pos; scalar_t__ last; } ;


 scalar_t__ NGX_AGAIN ;
 int NGX_ETIMEDOUT ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int NGX_WRITE_EVENT ;
 int ngx_add_timer (int ,int ) ;
 scalar_t__ ngx_cycle ;
 int ngx_del_event (TYPE_3__*,int ,int ) ;
 int ngx_del_timer (TYPE_3__*) ;
 int ngx_event_process_posted (int *,int *) ;
 scalar_t__ ngx_handle_write_event (int ,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_rtmp_bw_out ;
 int ngx_rtmp_core_module ;
 int ngx_rtmp_finalize_session (TYPE_2__*) ;
 int ngx_rtmp_free_shared_chain (int *,TYPE_8__*) ;
 int * ngx_rtmp_get_module_srv_conf (TYPE_2__*,int ) ;
 int ngx_rtmp_update_bandwidth (int *,scalar_t__) ;
 scalar_t__ stub1 (TYPE_4__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
ngx_rtmp_send(ngx_event_t *wev)
{
    ngx_connection_t *c;
    ngx_rtmp_session_t *s;
    ngx_int_t n;
    ngx_rtmp_core_srv_conf_t *cscf;

    c = wev->data;
    s = c->data;

    if (c->destroyed) {
        return;
    }

    if (wev->timedout) {
        ngx_log_error(NGX_LOG_INFO, c->log, NGX_ETIMEDOUT,
                "client timed out");
        c->timedout = 1;
        ngx_rtmp_finalize_session(s);
        return;
    }

    if (wev->timer_set) {
        ngx_del_timer(wev);
    }

    if (s->out_chain == ((void*)0) && s->out_pos != s->out_last) {
        s->out_chain = s->out[s->out_pos];
        s->out_bpos = s->out_chain->buf->pos;
    }

    while (s->out_chain) {
        n = c->send(c, s->out_bpos, s->out_chain->buf->last - s->out_bpos);

        if (n == NGX_AGAIN || n == 0) {
            ngx_add_timer(c->write, s->timeout);
            if (ngx_handle_write_event(c->write, 0) != NGX_OK) {
                ngx_rtmp_finalize_session(s);
            }
            return;
        }

        if (n < 0) {
            ngx_rtmp_finalize_session(s);
            return;
        }

        s->out_bytes += n;
        s->ping_reset = 1;
        ngx_rtmp_update_bandwidth(&ngx_rtmp_bw_out, n);
        s->out_bpos += n;
        if (s->out_bpos == s->out_chain->buf->last) {
            s->out_chain = s->out_chain->next;
            if (s->out_chain == ((void*)0)) {
                cscf = ngx_rtmp_get_module_srv_conf(s, ngx_rtmp_core_module);
                ngx_rtmp_free_shared_chain(cscf, s->out[s->out_pos]);
                ++s->out_pos;
                s->out_pos %= s->out_queue;
                if (s->out_pos == s->out_last) {
                    break;
                }
                s->out_chain = s->out[s->out_pos];
            }
            s->out_bpos = s->out_chain->buf->pos;
        }
    }

    if (wev->active) {
        ngx_del_event(wev, NGX_WRITE_EVENT, 0);
    }

    ngx_event_process_posted((ngx_cycle_t *) ngx_cycle, &s->posted_dry_events);
}

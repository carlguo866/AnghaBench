
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef int uint32_t ;
typedef int ngx_uint_t ;
typedef int ngx_queue_t ;
typedef scalar_t__ ngx_msec_t ;
typedef int ngx_int_t ;
struct TYPE_15__ {int instance; int pending_eof; int ready; int available; int complete; int (* handler ) (TYPE_2__*) ;scalar_t__ active; scalar_t__ accept; } ;
typedef TYPE_2__ ngx_event_t ;
typedef int ngx_err_t ;
struct TYPE_16__ {int log; } ;
typedef TYPE_3__ ngx_cycle_t ;
struct TYPE_17__ {int fd; TYPE_2__* write; TYPE_2__* read; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_14__ {TYPE_4__* ptr; } ;
struct TYPE_13__ {int events; TYPE_1__ data; } ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDHUP ;
 int NGX_EINTR ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_LOG_INFO ;
 int NGX_OK ;
 int NGX_POST_EVENTS ;
 scalar_t__ NGX_TIMER_INFINITE ;
 int NGX_UPDATE_TIME ;
 int ep ;
 int epoll_wait (int ,TYPE_11__*,int,scalar_t__) ;
 TYPE_11__* event_list ;
 scalar_t__ nevents ;
 int ngx_errno ;
 scalar_t__ ngx_event_timer_alarm ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_4__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int,int) ;
 int ngx_log_debug3 (int ,int ,int ,char*,int,int,TYPE_4__*) ;
 int ngx_log_error (int,int ,int,char*,...) ;
 int ngx_post_event (TYPE_2__*,int *) ;
 int ngx_posted_accept_events ;
 int ngx_posted_events ;
 int ngx_time_update () ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static ngx_int_t
ngx_epoll_process_events(ngx_cycle_t *cycle, ngx_msec_t timer, ngx_uint_t flags)
{
    int events;
    uint32_t revents;
    ngx_int_t instance, i;
    ngx_uint_t level;
    ngx_err_t err;
    ngx_event_t *rev, *wev;
    ngx_queue_t *queue;
    ngx_connection_t *c;



    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                   "epoll timer: %M", timer);

    events = epoll_wait(ep, event_list, (int) nevents, timer);

    err = (events == -1) ? ngx_errno : 0;

    if (flags & NGX_UPDATE_TIME || ngx_event_timer_alarm) {
        ngx_time_update();
    }

    if (err) {
        if (err == NGX_EINTR) {

            if (ngx_event_timer_alarm) {
                ngx_event_timer_alarm = 0;
                return NGX_OK;
            }

            level = NGX_LOG_INFO;

        } else {
            level = NGX_LOG_ALERT;
        }

        ngx_log_error(level, cycle->log, err, "epoll_wait() failed");
        return NGX_ERROR;
    }

    if (events == 0) {
        if (timer != NGX_TIMER_INFINITE) {
            return NGX_OK;
        }

        ngx_log_error(NGX_LOG_ALERT, cycle->log, 0,
                      "epoll_wait() returned no events without timeout");
        return NGX_ERROR;
    }

    for (i = 0; i < events; i++) {
        c = event_list[i].data.ptr;

        instance = (uintptr_t) c & 1;
        c = (ngx_connection_t *) ((uintptr_t) c & (uintptr_t) ~1);

        rev = c->read;

        if (c->fd == -1 || rev->instance != instance) {






            ngx_log_debug1(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                           "epoll: stale event %p", c);
            continue;
        }

        revents = event_list[i].events;

        ngx_log_debug3(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                       "epoll: fd:%d ev:%04XD d:%p",
                       c->fd, revents, event_list[i].data.ptr);

        if (revents & (EPOLLERR|EPOLLHUP)) {
            ngx_log_debug2(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                           "epoll_wait() error on fd:%d ev:%04XD",
                           c->fd, revents);






            revents |= EPOLLIN|EPOLLOUT;
        }
        if ((revents & EPOLLIN) && rev->active) {







            rev->ready = 1;
            rev->available = -1;

            if (flags & NGX_POST_EVENTS) {
                queue = rev->accept ? &ngx_posted_accept_events
                                    : &ngx_posted_events;

                ngx_post_event(rev, queue);

            } else {
                rev->handler(rev);
            }
        }

        wev = c->write;

        if ((revents & EPOLLOUT) && wev->active) {

            if (c->fd == -1 || wev->instance != instance) {






                ngx_log_debug1(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                               "epoll: stale event %p", c);
                continue;
            }

            wev->ready = 1;




            if (flags & NGX_POST_EVENTS) {
                ngx_post_event(wev, &ngx_posted_events);

            } else {
                wev->handler(wev);
            }
        }
    }

    return NGX_OK;
}

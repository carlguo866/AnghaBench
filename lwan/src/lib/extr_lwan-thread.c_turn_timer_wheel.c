
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timeout_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct timeout_queue {int dummy; } ;
struct lwan_thread {int wheel; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ UNLIKELY (int) ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int lwan_status_critical (char*) ;
 int monotonic_clock_id ;
 int process_pending_timers (struct timeout_queue*,struct lwan_thread*,int) ;
 scalar_t__ timeouts_timeout (int ) ;
 int timeouts_update (int ,scalar_t__) ;

__attribute__((used)) static int
turn_timer_wheel(struct timeout_queue *tq, struct lwan_thread *t, int epoll_fd)
{
    timeout_t wheel_timeout;
    struct timespec now;

    if (UNLIKELY(clock_gettime(monotonic_clock_id, &now) < 0))
        lwan_status_critical("Could not get monotonic time");

    timeouts_update(t->wheel,
                    (timeout_t)(now.tv_sec * 1000 + now.tv_nsec / 1000000));

    wheel_timeout = timeouts_timeout(t->wheel);
    if (UNLIKELY((int64_t)wheel_timeout < 0))
        goto infinite_timeout;

    if (wheel_timeout == 0) {
        if (!process_pending_timers(tq, t, epoll_fd))
            goto infinite_timeout;

        wheel_timeout = timeouts_timeout(t->wheel);
        if (wheel_timeout == 0)
            goto infinite_timeout;
    }

    return (int)wheel_timeout;

infinite_timeout:
    return -1;
}

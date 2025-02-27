
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ clock_watch_fd; int event_clock_watch; int event; } ;
typedef TYPE_1__ Manager ;


 int EPOLLIN ;
 int assert (TYPE_1__*) ;
 int log_error_errno (int,char*) ;
 int manager_clock_watch ;
 int safe_close (scalar_t__) ;
 int sd_event_add_io (int ,int *,int,int ,int ,TYPE_1__*) ;
 int sd_event_source_unref (int ) ;
 scalar_t__ time_change_fd () ;

__attribute__((used)) static int manager_clock_watch_setup(Manager *m) {
        int r;

        assert(m);

        m->event_clock_watch = sd_event_source_unref(m->event_clock_watch);
        safe_close(m->clock_watch_fd);

        m->clock_watch_fd = time_change_fd();
        if (m->clock_watch_fd < 0)
                return log_error_errno(m->clock_watch_fd, "Failed to create timerfd: %m");

        r = sd_event_add_io(m->event, &m->event_clock_watch, m->clock_watch_fd, EPOLLIN, manager_clock_watch, m);
        if (r < 0)
                return log_error_errno(r, "Failed to create clock watch event source: %m");

        return 0;
}

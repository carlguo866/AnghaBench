
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pa_context ;
struct TYPE_2__ {int mainloop; } ;
typedef TYPE_1__ PulseData ;





 int pa_context_get_state (int *) ;
 int pa_threaded_mainloop_signal (int ,int ) ;

__attribute__((used)) static void context_state_cb(pa_context *c, void *userdata) {
    PulseData *p = userdata;

    switch (pa_context_get_state(c)) {
        case 129:
        case 128:
        case 130:
            pa_threaded_mainloop_signal(p->mainloop, 0);
            break;
    }
}

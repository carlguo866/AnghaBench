
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ hrtime_t ;
struct TYPE_4__ {scalar_t__ dts_laststatus; int dts_deadman; scalar_t__ dts_alive; } ;
typedef TYPE_1__ dtrace_state_t ;
struct TYPE_5__ {TYPE_1__* dta_state; } ;


 scalar_t__ INT64_MAX ;
 int NANOSEC ;
 int callout_reset (int *,int,void (*) (void*),TYPE_1__*) ;
 TYPE_2__ dtrace_anon ;
 int dtrace_deadman_interval ;
 scalar_t__ dtrace_deadman_user ;
 int dtrace_debug_output () ;
 scalar_t__ dtrace_gethrtime () ;
 int dtrace_membar_producer () ;
 int dtrace_sync () ;
 int hz ;

__attribute__((used)) static void
dtrace_state_deadman(void *arg)
{
 dtrace_state_t *state = arg;
 hrtime_t now;

 dtrace_sync();

 dtrace_debug_output();

 now = dtrace_gethrtime();

 if (state != dtrace_anon.dta_state &&
     now - state->dts_laststatus >= dtrace_deadman_user)
  return;
 state->dts_alive = INT64_MAX;
 dtrace_membar_producer();
 state->dts_alive = now;

 callout_reset(&state->dts_deadman, hz * dtrace_deadman_interval / NANOSEC,
     dtrace_state_deadman, state);
}

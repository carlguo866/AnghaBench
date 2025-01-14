
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dtvs_dynvars; } ;
struct TYPE_6__ {scalar_t__ dts_activity; TYPE_1__ dts_vstate; } ;
typedef TYPE_2__ dtrace_state_t ;


 scalar_t__ DTRACE_ACTIVITY_INACTIVE ;
 int dtrace_dynvar_clean (int *) ;
 int dtrace_speculation_clean (TYPE_2__*) ;

__attribute__((used)) static void
dtrace_state_clean(dtrace_state_t *state)
{
 if (state->dts_activity == DTRACE_ACTIVITY_INACTIVE)
  return;

 dtrace_dynvar_clean(&state->dts_vstate.dtvs_dynvars);
 dtrace_speculation_clean(state);
}

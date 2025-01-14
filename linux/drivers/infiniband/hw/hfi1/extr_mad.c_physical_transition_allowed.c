
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int** allowed; } ;


 int HFI_TRANSITION_ALLOWED ;
 int HFI_TRANSITION_UNDEFINED ;
 int IB_PORTPHYSSTATE_NOP ;
 scalar_t__ IB_PORTPHYSSTATE_POLLING ;
 int OPA_PORTPHYSSTATE_MAX ;
 TYPE_1__ physical_state_transitions ;
 int pr_warn (char*,int,int) ;

__attribute__((used)) static int physical_transition_allowed(int old, int new)
{
 if (old < IB_PORTPHYSSTATE_NOP || old > OPA_PORTPHYSSTATE_MAX ||
     new < IB_PORTPHYSSTATE_NOP || new > OPA_PORTPHYSSTATE_MAX) {
  pr_warn("invalid physical state(s) (old %d new %d)\n",
   old, new);
  return HFI_TRANSITION_UNDEFINED;
 }

 if (new == IB_PORTPHYSSTATE_NOP)
  return HFI_TRANSITION_ALLOWED;


 old -= IB_PORTPHYSSTATE_POLLING;
 new -= IB_PORTPHYSSTATE_POLLING;

 if (old < 0 || new < 0)
  return HFI_TRANSITION_UNDEFINED;
 return physical_state_transitions.allowed[old][new];
}

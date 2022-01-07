
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int idx; unsigned long config_base; } ;
struct perf_event {TYPE_1__ hw; } ;
struct TYPE_4__ {int idx; unsigned long config; } ;


 int BUG_ON (int) ;
 unsigned long EV67_BCACHEMISS ;
 unsigned long EV67_CYCLES ;
 unsigned long EV67_INSTRUCTIONS ;
 unsigned long EV67_MBOXREPLAY ;
 unsigned long EV67_PCTR_CYCLES_MBOX ;
 unsigned long EV67_PCTR_INSTR_BCACHEMISS ;
 unsigned long EV67_PCTR_INSTR_CYCLES ;
 TYPE_2__* ev67_mapping ;

__attribute__((used)) static int ev67_check_constraints(struct perf_event **event,
    unsigned long *evtype, int n_ev)
{
 int idx0;
 unsigned long config;

 idx0 = ev67_mapping[evtype[0]-1].idx;
 config = ev67_mapping[evtype[0]-1].config;
 if (n_ev == 1)
  goto success;

 BUG_ON(n_ev != 2);

 if (evtype[0] == EV67_MBOXREPLAY || evtype[1] == EV67_MBOXREPLAY) {

  idx0 = (evtype[0] == EV67_MBOXREPLAY) ? 1 : 0;

  if (evtype[idx0] == EV67_CYCLES) {
   config = EV67_PCTR_CYCLES_MBOX;
   goto success;
  }
 }

 if (evtype[0] == EV67_BCACHEMISS || evtype[1] == EV67_BCACHEMISS) {

  idx0 = (evtype[0] == EV67_BCACHEMISS) ? 1 : 0;

  if (evtype[idx0] == EV67_INSTRUCTIONS) {
   config = EV67_PCTR_INSTR_BCACHEMISS;
   goto success;
  }
 }

 if (evtype[0] == EV67_INSTRUCTIONS || evtype[1] == EV67_INSTRUCTIONS) {

  idx0 = (evtype[0] == EV67_INSTRUCTIONS) ? 0 : 1;

  if (evtype[idx0^1] == EV67_CYCLES) {
   config = EV67_PCTR_INSTR_CYCLES;
   goto success;
  }
 }


 return -1;

success:
 event[0]->hw.idx = idx0;
 event[0]->hw.config_base = config;
 if (n_ev == 2) {
  event[1]->hw.idx = idx0 ^ 1;
  event[1]->hw.config_base = config;
 }
 return 0;
}

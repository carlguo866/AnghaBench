
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
struct perf_tool {int dummy; } ;
struct perf_sample {int dummy; } ;
struct machine {int dummy; } ;


 int perf_event__process_fork (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;
 int perf_event__repipe (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;

__attribute__((used)) static int perf_event__repipe_fork(struct perf_tool *tool,
       union perf_event *event,
       struct perf_sample *sample,
       struct machine *machine)
{
 int err;

 err = perf_event__process_fork(tool, event, sample, machine);
 perf_event__repipe(tool, event, sample, machine);

 return err;
}

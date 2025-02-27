
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timechart {int dummy; } ;
struct perf_sample {int time; int tid; } ;
struct evsel {int dummy; } ;


 int IOTYPE_READ ;
 long perf_evsel__intval (struct evsel*,struct perf_sample*,char*) ;
 int pid_end_io_sample (struct timechart*,int ,int ,int ,long) ;

__attribute__((used)) static int
process_exit_read(struct timechart *tchart,
    struct evsel *evsel,
    struct perf_sample *sample)
{
 long ret = perf_evsel__intval(evsel, sample, "ret");
 return pid_end_io_sample(tchart, sample->tid, IOTYPE_READ,
     sample->time, ret);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_sched {int sum_runtime; int nr_runs; int sum_fluct; int run_avg; int replay_repeat; double nr_sleep_corrections; scalar_t__ runavg_parent_cpu_usage; scalar_t__ parent_cpu_usage; scalar_t__ runavg_cpu_usage; scalar_t__ cpu_usage; } ;


 double NSEC_PER_MSEC ;
 int get_nsecs () ;
 int printf (char*,...) ;
 int wait_for_tasks (struct perf_sched*) ;

__attribute__((used)) static void run_one_test(struct perf_sched *sched)
{
 u64 T0, T1, delta, avg_delta, fluct;

 T0 = get_nsecs();
 wait_for_tasks(sched);
 T1 = get_nsecs();

 delta = T1 - T0;
 sched->sum_runtime += delta;
 sched->nr_runs++;

 avg_delta = sched->sum_runtime / sched->nr_runs;
 if (delta < avg_delta)
  fluct = avg_delta - delta;
 else
  fluct = delta - avg_delta;
 sched->sum_fluct += fluct;
 if (!sched->run_avg)
  sched->run_avg = delta;
 sched->run_avg = (sched->run_avg * (sched->replay_repeat - 1) + delta) / sched->replay_repeat;

 printf("#%-3ld: %0.3f, ", sched->nr_runs, (double)delta / NSEC_PER_MSEC);

 printf("ravg: %0.2f, ", (double)sched->run_avg / NSEC_PER_MSEC);

 printf("cpu: %0.2f / %0.2f",
  (double)sched->cpu_usage / NSEC_PER_MSEC, (double)sched->runavg_cpu_usage / NSEC_PER_MSEC);
 printf("\n");

 if (sched->nr_sleep_corrections)
  printf(" (%ld sleep corrections)\n", sched->nr_sleep_corrections);
 sched->nr_sleep_corrections = 0;
}

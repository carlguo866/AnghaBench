
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NHM_CSTATE_COUNT ;
 int TSC ;
 int base_cpu ;
 int cpu_count ;
 int dprint (char*,unsigned long long) ;
 int* is_valid ;
 int nhm_get_count (int,unsigned long long*,int) ;
 unsigned long long** previous_count ;
 unsigned long long tsc_at_measure_start ;

__attribute__((used)) static int nhm_start(void)
{
 int num, cpu;
 unsigned long long dbg, val;

 nhm_get_count(TSC, &tsc_at_measure_start, base_cpu);

 for (num = 0; num < NHM_CSTATE_COUNT; num++) {
  for (cpu = 0; cpu < cpu_count; cpu++) {
   is_valid[cpu] = !nhm_get_count(num, &val, cpu);
   previous_count[num][cpu] = val;
  }
 }
 nhm_get_count(TSC, &dbg, base_cpu);
 dprint("TSC diff: %llu\n", dbg - tsc_at_measure_start);
 return 0;
}

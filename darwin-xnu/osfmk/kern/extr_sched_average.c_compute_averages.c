
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint64_t ;
typedef size_t uint32_t ;
typedef TYPE_1__* sched_average_t ;
struct TYPE_3__ {size_t deadline; size_t period; int param; int (* comp ) (int ) ;} ;


 size_t LOAD_SCALE ;
 size_t MIN (size_t,int ) ;
 size_t SCHED_LOAD_EWMA_UNSCALE (int ) ;
 int SCHED_TICK_MAX_DELTA ;
 size_t TH_BUCKET_RUN ;
 size_t TH_BUCKET_SHARE_BG ;
 size_t TH_BUCKET_SHARE_FG ;
 size_t* avenrun ;
 size_t* fract ;
 size_t mach_absolute_time () ;
 size_t* mach_factor ;
 size_t processor_avail_count ;
 TYPE_1__* sched_average ;
 scalar_t__ sched_fixed_shift ;
 int * sched_load ;
 int sched_load_average ;
 scalar_t__* sched_load_shifts ;
 int sched_mach_factor ;
 size_t sched_nrun ;
 size_t sched_one_second_interval ;
 scalar_t__* sched_pri_shifts ;
 size_t* sched_run_buckets ;
 int stub1 (int ) ;

void
compute_averages(uint64_t stdelta)
{

 uint32_t nthreads = sched_run_buckets[TH_BUCKET_RUN] - 1;
 uint32_t ncpus = processor_avail_count;


 for (uint32_t i = TH_BUCKET_SHARE_FG; i <= TH_BUCKET_SHARE_BG ; i++) {
  uint32_t bucket_load = SCHED_LOAD_EWMA_UNSCALE(sched_load[i]);
  sched_pri_shifts[i] = sched_fixed_shift - sched_load_shifts[bucket_load];
 }




 sched_nrun = nthreads;





 uint32_t average_now = nthreads * LOAD_SCALE;
 uint32_t factor_now;

 if (nthreads > ncpus)
  factor_now = (ncpus * LOAD_SCALE) / (nthreads + 1);
 else
  factor_now = (ncpus - nthreads) * LOAD_SCALE;






 for (uint32_t index = 0; index < stdelta; index++) {
  sched_mach_factor = ((sched_mach_factor << 2) + factor_now) / 5;
  sched_load_average = ((sched_load_average << 2) + average_now) / 5;
 }




 for (uint32_t index = 0; index < stdelta; index++) {
  for (uint32_t i = 0; i < 3; i++) {
   mach_factor[i] = ((mach_factor[i] * fract[i]) +
      (factor_now * (LOAD_SCALE - fract[i]))) / LOAD_SCALE;

   avenrun[i] = ((avenrun[i] * fract[i]) +
      (average_now * (LOAD_SCALE - fract[i]))) / LOAD_SCALE;
  }
 }




 uint64_t abstime = mach_absolute_time();

 for (sched_average_t avg = sched_average; avg->comp != ((void*)0); ++avg) {
  if (abstime >= avg->deadline) {
   uint64_t period_abs = (avg->period * sched_one_second_interval);
   uint64_t ninvokes = 1;

   ninvokes += (abstime - avg->deadline) / period_abs;
   ninvokes = MIN(ninvokes, SCHED_TICK_MAX_DELTA);

   for (uint32_t index = 0; index < ninvokes; index++) {
    (*avg->comp)(avg->param);
   }
   avg->deadline = abstime + period_abs;
  }
 }
}

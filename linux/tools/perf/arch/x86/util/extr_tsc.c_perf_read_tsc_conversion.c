
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct perf_tsc_conversion {int time_zero; int time_shift; int time_mult; } ;
struct perf_event_mmap_page {int lock; int cap_user_time_zero; int time_zero; int time_shift; int time_mult; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int pr_debug (char*) ;
 int rmb () ;

int perf_read_tsc_conversion(const struct perf_event_mmap_page *pc,
        struct perf_tsc_conversion *tc)
{
 bool cap_user_time_zero;
 u32 seq;
 int i = 0;

 while (1) {
  seq = pc->lock;
  rmb();
  tc->time_mult = pc->time_mult;
  tc->time_shift = pc->time_shift;
  tc->time_zero = pc->time_zero;
  cap_user_time_zero = pc->cap_user_time_zero;
  rmb();
  if (pc->lock == seq && !(seq & 1))
   break;
  if (++i > 10000) {
   pr_debug("failed to get perf_event_mmap_page lock\n");
   return -EINVAL;
  }
 }

 if (!cap_user_time_zero)
  return -EOPNOTSUPP;

 return 0;
}

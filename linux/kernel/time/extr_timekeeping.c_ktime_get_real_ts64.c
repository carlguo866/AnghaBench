
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct timespec64 {scalar_t__ tv_nsec; int tv_sec; } ;
struct timekeeper {int tkr_mono; int xtime_sec; } ;
struct TYPE_2__ {int seq; struct timekeeper timekeeper; } ;


 int WARN_ON (int ) ;
 unsigned int read_seqcount_begin (int *) ;
 scalar_t__ read_seqcount_retry (int *,unsigned int) ;
 int timekeeping_get_ns (int *) ;
 int timekeeping_suspended ;
 int timespec64_add_ns (struct timespec64*,int ) ;
 TYPE_1__ tk_core ;

void ktime_get_real_ts64(struct timespec64 *ts)
{
 struct timekeeper *tk = &tk_core.timekeeper;
 unsigned int seq;
 u64 nsecs;

 WARN_ON(timekeeping_suspended);

 do {
  seq = read_seqcount_begin(&tk_core.seq);

  ts->tv_sec = tk->xtime_sec;
  nsecs = timekeeping_get_ns(&tk->tkr_mono);

 } while (read_seqcount_retry(&tk_core.seq, seq));

 ts->tv_nsec = 0;
 timespec64_add_ns(ts, nsecs);
}

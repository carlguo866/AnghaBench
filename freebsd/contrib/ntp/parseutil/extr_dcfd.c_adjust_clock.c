
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct timeval {int tv_sec; int tv_usec; } ;


 int FREQ_WEIGHT ;
 int LPRINTF (char*,int ,long,long,long) ;
 long MAX_DRIFT ;
 long R_SHIFT (long,long) ;
 long TIMECONSTANT ;
 long USECSCALE ;
 long accum_drift ;
 int adjustments ;
 long clock_adjust ;
 void* l_abs (int) ;
 scalar_t__ max_adj_offset_usec ;
 scalar_t__ no_set ;
 int pr_timeval (struct timeval*) ;
 int set_time (struct timeval*) ;
 int skip_adjust ;
 int update_drift (char const*,long,int ) ;

__attribute__((used)) static void
adjust_clock(
      struct timeval *offset,
      const char *drift_file,
      time_t reftime
      )
{
 struct timeval toffset;
 register long usecoffset;
 int tmp;

 if (no_set)
     return;

 if (skip_adjust)
 {
  skip_adjust = 0;
  return;
 }

 toffset = *offset;
 toffset.tv_sec = l_abs(toffset.tv_sec);
 toffset.tv_usec = l_abs(toffset.tv_usec);
 if (toffset.tv_sec ||
     (!toffset.tv_sec && toffset.tv_usec > max_adj_offset_usec))
 {



  set_time(offset);
  clock_adjust = 0;
  skip_adjust = 1;
  return;
 }

 usecoffset = offset->tv_sec * 1000000 + offset->tv_usec;

 clock_adjust = R_SHIFT(usecoffset, TIMECONSTANT);

 tmp = 0;
 while (adjustments > (1 << tmp))
     tmp++;
 adjustments = 0;
 if (tmp > FREQ_WEIGHT)
     tmp = FREQ_WEIGHT;

 accum_drift += R_SHIFT(usecoffset << USECSCALE, TIMECONSTANT+TIMECONSTANT+FREQ_WEIGHT-tmp);

 if (accum_drift > MAX_DRIFT)
     accum_drift = MAX_DRIFT;
 else
     if (accum_drift < -MAX_DRIFT)
  accum_drift = -MAX_DRIFT;

 update_drift(drift_file, usecoffset, reftime);
 LPRINTF("clock_adjust: %s, clock_adjust %ld, drift_comp %ld(%ld) ",
  pr_timeval(offset),(long int) R_SHIFT(clock_adjust, USECSCALE),
  (long int)R_SHIFT(accum_drift, USECSCALE), (long int)accum_drift);
}

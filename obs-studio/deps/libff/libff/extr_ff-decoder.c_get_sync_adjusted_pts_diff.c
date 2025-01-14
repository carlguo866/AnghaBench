
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_clock {int dummy; } ;


 scalar_t__ AV_NOSYNC_THRESHOLD ;
 double AV_SYNC_THRESHOLD ;
 scalar_t__ fabs (double) ;
 double ff_get_sync_clock (struct ff_clock*) ;

__attribute__((used)) static double get_sync_adjusted_pts_diff(struct ff_clock *clock, double pts,
                                         double pts_diff)
{
 double new_pts_diff = pts_diff;
 double sync_time = ff_get_sync_clock(clock);
 double diff = pts - sync_time;
 double sync_threshold;

 sync_threshold = (pts_diff > AV_SYNC_THRESHOLD) ? pts_diff
                                                 : AV_SYNC_THRESHOLD;

 if (fabs(diff) < AV_NOSYNC_THRESHOLD) {
  if (diff <= -sync_threshold) {
   new_pts_diff = 0;

  } else if (diff >= sync_threshold) {
   new_pts_diff = 2 * pts_diff;
  }
 }

 return new_pts_diff;
}

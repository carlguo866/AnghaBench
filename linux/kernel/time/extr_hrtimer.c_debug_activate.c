
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;
typedef enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;


 int debug_hrtimer_activate (struct hrtimer*,int) ;
 int trace_hrtimer_start (struct hrtimer*,int) ;

__attribute__((used)) static inline void debug_activate(struct hrtimer *timer,
      enum hrtimer_mode mode)
{
 debug_hrtimer_activate(timer, mode);
 trace_hrtimer_start(timer, mode);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pt_regs {int dummy; } ;
struct perf_sample_data {int period; } ;
struct TYPE_2__ {int sample_type; int freq; } ;
struct hw_perf_event {int last_period; int sample_period; int period_left; } ;
struct perf_event {TYPE_1__ attr; struct hw_perf_event hw; int count; } ;


 int PERF_SAMPLE_PERIOD ;
 int is_sampling_event (struct perf_event*) ;
 int local64_add (int,int *) ;
 scalar_t__ local64_add_negative (int,int *) ;
 void perf_swevent_overflow (struct perf_event*,int,struct perf_sample_data*,struct pt_regs*) ;

__attribute__((used)) static void perf_swevent_event(struct perf_event *event, u64 nr,
          struct perf_sample_data *data,
          struct pt_regs *regs)
{
 struct hw_perf_event *hwc = &event->hw;

 local64_add(nr, &event->count);

 if (!regs)
  return;

 if (!is_sampling_event(event))
  return;

 if ((event->attr.sample_type & PERF_SAMPLE_PERIOD) && !event->attr.freq) {
  data->period = nr;
  return perf_swevent_overflow(event, 1, data, regs);
 } else
  data->period = event->hw.last_period;

 if (nr == 1 && hwc->sample_period == 1 && !event->attr.freq)
  return perf_swevent_overflow(event, 1, data, regs);

 if (local64_add_negative(nr, &hwc->period_left))
  return;

 perf_swevent_overflow(event, 0, data, regs);
}

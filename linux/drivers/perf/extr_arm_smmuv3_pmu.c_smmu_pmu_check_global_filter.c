
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 scalar_t__ get_filter_enable (struct perf_event*) ;
 scalar_t__ get_filter_span (struct perf_event*) ;
 scalar_t__ get_filter_stream_id (struct perf_event*) ;

__attribute__((used)) static bool smmu_pmu_check_global_filter(struct perf_event *curr,
      struct perf_event *new)
{
 if (get_filter_enable(new) != get_filter_enable(curr))
  return 0;

 if (!get_filter_enable(new))
  return 1;

 return get_filter_span(new) == get_filter_span(curr) &&
        get_filter_stream_id(new) == get_filter_stream_id(curr);
}

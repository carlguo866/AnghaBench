
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct perf_event_attr {int sample_type; } ;
struct TYPE_2__ {struct perf_event_attr attr; } ;
struct evsel {TYPE_1__ core; } ;


 int EINVAL ;
 char* perf_evsel__name (struct evsel*) ;
 int pr_err (char*,char const*,char const*) ;

__attribute__((used)) static int perf_evsel__check_stype(struct evsel *evsel,
       u64 sample_type, const char *sample_msg)
{
 struct perf_event_attr *attr = &evsel->core.attr;
 const char *name = perf_evsel__name(evsel);

 if (!(attr->sample_type & sample_type)) {
  pr_err("Samples for %s event do not have %s attribute set.",
   name, sample_msg);
  return -EINVAL;
 }

 return 0;
}

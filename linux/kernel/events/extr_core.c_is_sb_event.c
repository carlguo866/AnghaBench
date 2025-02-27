
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {scalar_t__ bpf_event; scalar_t__ context_switch; scalar_t__ ksymbol; scalar_t__ task; scalar_t__ comm_exec; scalar_t__ comm; scalar_t__ mmap2; scalar_t__ mmap_data; scalar_t__ mmap; } ;
struct perf_event {int attach_state; scalar_t__ parent; struct perf_event_attr attr; } ;


 int PERF_ATTACH_TASK ;

__attribute__((used)) static bool is_sb_event(struct perf_event *event)
{
 struct perf_event_attr *attr = &event->attr;

 if (event->parent)
  return 0;

 if (event->attach_state & PERF_ATTACH_TASK)
  return 0;

 if (attr->mmap || attr->mmap_data || attr->mmap2 ||
     attr->comm || attr->comm_exec ||
     attr->task || attr->ksymbol ||
     attr->context_switch ||
     attr->bpf_event)
  return 1;
 return 0;
}

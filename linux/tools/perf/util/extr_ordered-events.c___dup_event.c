
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; } ;
union perf_event {TYPE_1__ header; } ;
struct ordered_events {scalar_t__ cur_alloc_size; scalar_t__ max_alloc_size; } ;


 union perf_event* memdup (union perf_event*,scalar_t__) ;

__attribute__((used)) static union perf_event *__dup_event(struct ordered_events *oe,
         union perf_event *event)
{
 union perf_event *new_event = ((void*)0);

 if (oe->cur_alloc_size < oe->max_alloc_size) {
  new_event = memdup(event, event->header.size);
  if (new_event)
   oe->cur_alloc_size += event->header.size;
 }

 return new_event;
}

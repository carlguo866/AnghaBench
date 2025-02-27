
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct eloop_event {int dummy; } ;
struct TYPE_5__ {size_t event_count; TYPE_1__* events; } ;
struct TYPE_4__ {scalar_t__ event; } ;
typedef scalar_t__ HANDLE ;


 TYPE_3__ eloop ;
 int os_memmove (TYPE_1__*,TYPE_1__*,size_t) ;

void eloop_unregister_event(void *event, size_t event_size)
{
 size_t i;
 HANDLE h = event;

 if (eloop.events == ((void*)0) || eloop.event_count == 0 ||
     event_size != sizeof(HANDLE))
  return;

 for (i = 0; i < eloop.event_count; i++) {
  if (eloop.events[i].event == h)
   break;
 }
 if (i == eloop.event_count)
  return;

 if (i != eloop.event_count - 1) {
  os_memmove(&eloop.events[i], &eloop.events[i + 1],
      (eloop.event_count - i - 1) *
      sizeof(struct eloop_event));
 }
 eloop.event_count--;
}

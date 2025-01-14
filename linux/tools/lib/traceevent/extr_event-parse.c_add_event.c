
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int nr_events; struct tep_event** events; } ;
struct tep_event {scalar_t__ id; struct tep_handle* tep; } ;
typedef int event ;


 int memmove (struct tep_event**,struct tep_event**,int) ;
 struct tep_event** realloc (struct tep_event**,int) ;

__attribute__((used)) static int add_event(struct tep_handle *tep, struct tep_event *event)
{
 int i;
 struct tep_event **events = realloc(tep->events, sizeof(event) *
         (tep->nr_events + 1));
 if (!events)
  return -1;

 tep->events = events;

 for (i = 0; i < tep->nr_events; i++) {
  if (tep->events[i]->id > event->id)
   break;
 }
 if (i < tep->nr_events)
  memmove(&tep->events[i + 1],
   &tep->events[i],
   sizeof(event) * (tep->nr_events - i));

 tep->events[i] = event;
 tep->nr_events++;

 event->tep = tep;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ len; TYPE_4__** data; } ;
struct TYPE_9__ {TYPE_2__ delay; } ;
typedef TYPE_3__ Tube ;
struct TYPE_11__ {size_t len; TYPE_3__** items; } ;
struct TYPE_7__ {scalar_t__ deadline_at; } ;
struct TYPE_10__ {TYPE_1__ r; } ;
typedef TYPE_4__ Job ;


 TYPE_5__ tubes ;

__attribute__((used)) static Job *
soonest_delayed_job()
{
    Job *j = ((void*)0);
    size_t i;

    for (i = 0; i < tubes.len; i++) {
        Tube *t = tubes.items[i];
        if (t->delay.len == 0) {
            continue;
        }
        Job *nj = t->delay.data[0];
        if (!j || nj->r.deadline_at < j->r.deadline_at)
            j = nj;
    }
    return j;
}

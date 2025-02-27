
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t min_heap_idx; } ;
struct event {TYPE_1__ ev_timeout_pos; } ;
struct TYPE_5__ {struct event** p; } ;
typedef TYPE_2__ min_heap_t ;


 scalar_t__ min_heap_elem_greater (struct event*,struct event*) ;

void min_heap_shift_up_unconditional_(min_heap_t* s, size_t hole_index, struct event* e)
{
    size_t parent = (hole_index - 1) / 2;
    do
    {
 (s->p[hole_index] = s->p[parent])->ev_timeout_pos.min_heap_idx = hole_index;
 hole_index = parent;
 parent = (hole_index - 1) / 2;
    } while (hole_index && min_heap_elem_greater(s->p[parent], e));
    (s->p[hole_index] = e)->ev_timeout_pos.min_heap_idx = hole_index;
}

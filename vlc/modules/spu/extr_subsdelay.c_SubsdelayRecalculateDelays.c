
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int b_update_stop; TYPE_2__* p_source; scalar_t__ i_new_stop; int b_update_ephemer; struct TYPE_12__* p_next; } ;
typedef TYPE_3__ subsdelay_heap_entry_t ;
struct TYPE_13__ {TYPE_5__* p_sys; } ;
typedef TYPE_4__ filter_t ;
struct TYPE_10__ {TYPE_3__* p_head; } ;
struct TYPE_14__ {TYPE_1__ heap; } ;
typedef TYPE_5__ filter_sys_t ;
struct TYPE_11__ {scalar_t__ i_start; } ;


 int SubsdelayEnforceDelayRules (TYPE_4__*) ;
 scalar_t__ SubsdelayEstimateDelay (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static void SubsdelayRecalculateDelays( filter_t *p_filter )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    for( subsdelay_heap_entry_t *p_curr = p_sys->heap.p_head;
         p_curr != ((void*)0); p_curr = p_curr->p_next )
    {
        if( !p_curr->b_update_ephemer )
        {
            p_curr->i_new_stop = p_curr->p_source->i_start + SubsdelayEstimateDelay( p_filter, p_curr );
            p_curr->b_update_stop = 0;
        }
    }

    SubsdelayEnforceDelayRules( p_filter );
}

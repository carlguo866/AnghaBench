
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef void* vlc_tick_t ;
struct TYPE_16__ {scalar_t__ i_channel; void* i_stop; void* i_start; TYPE_2__* p_region; } ;
typedef TYPE_1__ subpicture_t ;
struct TYPE_17__ {int * p_private; struct TYPE_17__* p_next; } ;
typedef TYPE_2__ subpicture_region_t ;
struct spu_channel {int rate; scalar_t__ clock; } ;
struct TYPE_18__ {TYPE_4__* p; } ;
typedef TYPE_3__ spu_t ;
struct TYPE_19__ {char* filter_chain_update; char* source_chain_update; int lock; int filter_chain_lock; int filter_chain; int source_chain_current; scalar_t__ vout; } ;
typedef TYPE_4__ spu_private_t ;


 int SubFilterAddProxyCallbacks ;
 int SubFilterDelProxyCallbacks ;
 scalar_t__ VOUT_SPU_CHANNEL_OSD ;
 int assert (int ) ;
 int filter_chain_AppendFromString (int ,char*) ;
 int filter_chain_Clear (int ) ;
 int filter_chain_ForEach (int ,int ,scalar_t__) ;
 int filter_chain_IsEmpty (int ) ;
 TYPE_1__* filter_chain_SubFilter (int ,TYPE_1__*) ;
 int free (char*) ;
 int msg_Err (TYPE_3__*,char*) ;
 int spu_ClearChannel (TYPE_3__*,scalar_t__) ;
 struct spu_channel* spu_GetChannel (TYPE_3__*,scalar_t__) ;
 int spu_PrerenderEnqueue (TYPE_4__*,TYPE_1__*) ;
 scalar_t__ spu_channel_Push (struct spu_channel*,TYPE_1__*,void*,void*) ;
 int strdup (char*) ;
 int subpicture_Delete (TYPE_1__*) ;
 int vlc_clock_ConvertArrayToSystem (scalar_t__,void*,void**,int,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 void* vlc_tick_now () ;

void spu_PutSubpicture(spu_t *spu, subpicture_t *subpic)
{
    spu_private_t *sys = spu->p;


    vlc_mutex_lock(&sys->lock);
    char *chain_update = sys->filter_chain_update;
    sys->filter_chain_update = ((void*)0);
    vlc_mutex_unlock(&sys->lock);

    bool is_left_empty = 0;

    vlc_mutex_lock(&sys->filter_chain_lock);
    if (chain_update) {
        if (*chain_update) {
            if (sys->vout)
                filter_chain_ForEach(sys->filter_chain,
                                     SubFilterDelProxyCallbacks,
                                     sys->vout);
            filter_chain_Clear(sys->filter_chain);

            filter_chain_AppendFromString(spu->p->filter_chain, chain_update);
            if (sys->vout)
                filter_chain_ForEach(sys->filter_chain,
                                     SubFilterAddProxyCallbacks,
                                     sys->vout);
        }
        else
            filter_chain_Clear(sys->filter_chain);




        is_left_empty = filter_chain_IsEmpty(spu->p->filter_chain);
    }
    vlc_mutex_unlock(&sys->filter_chain_lock);

    if (is_left_empty) {



        if (chain_update && *chain_update) {
            vlc_mutex_lock(&sys->lock);
            if (!sys->source_chain_update || !*sys->source_chain_update) {
                free(sys->source_chain_update);
                sys->source_chain_update = chain_update;
                sys->source_chain_current = strdup(chain_update);
                chain_update = ((void*)0);
            }
            vlc_mutex_unlock(&sys->lock);
        }
    }

    free(chain_update);


    vlc_mutex_lock(&sys->filter_chain_lock);
    subpic = filter_chain_SubFilter(spu->p->filter_chain, subpic);
    vlc_mutex_unlock(&sys->filter_chain_lock);
    if (!subpic || subpic->i_channel < 0)
    {
        if (subpic)
            subpicture_Delete(subpic);
        return;
    }


    if (subpic->i_channel == VOUT_SPU_CHANNEL_OSD)
        spu_ClearChannel(spu, VOUT_SPU_CHANNEL_OSD);


    for (subpicture_region_t *r = subpic->p_region; r != ((void*)0); r = r->p_next)
        assert(r->p_private == ((void*)0));


    vlc_mutex_lock(&sys->lock);
    struct spu_channel *channel = spu_GetChannel(spu, subpic->i_channel);



    vlc_tick_t orgstart = subpic->i_start;
    vlc_tick_t orgstop = subpic->i_stop;
    if (channel->clock)
    {
        vlc_tick_t system_now = vlc_tick_now();
        vlc_tick_t times[2] = { orgstart, orgstop };
        vlc_clock_ConvertArrayToSystem(channel->clock, system_now,
                                       times, 2, channel->rate);
        subpic->i_start = times[0];
        subpic->i_stop = times[1];
    }

    if (spu_channel_Push(channel, subpic, orgstart, orgstop))
    {
        vlc_mutex_unlock(&sys->lock);
        msg_Err(spu, "subpicture heap full");
        subpicture_Delete(subpic);
        return;
    }
    spu_PrerenderEnqueue(sys, subpic);
    vlc_mutex_unlock(&sys->lock);
}

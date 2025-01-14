
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int i_id; scalar_t__ i_group; } ;
struct TYPE_10__ {struct TYPE_10__* p_extraes; TYPE_5__ fmt; scalar_t__ id; TYPE_1__* p_program; struct TYPE_10__* p_next; } ;
typedef TYPE_2__ ts_es_t ;
struct TYPE_11__ {int out; TYPE_4__* p_sys; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_12__ {int i_pmt_es; int i_next_extraid; scalar_t__ b_es_id_pid; } ;
typedef TYPE_4__ demux_sys_t ;
struct TYPE_9__ {scalar_t__ i_number; } ;


 scalar_t__ es_out_Add (int ,TYPE_5__*) ;

__attribute__((used)) static void DoCreateES( demux_t *p_demux, ts_es_t *p_es, const ts_es_t *p_parent_es )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    for( ; p_es ; p_es = p_es->p_next )
    {
        if( !p_es->id )
        {
            if( !p_es->fmt.i_group )
                p_es->fmt.i_group = p_es->p_program->i_number;
            p_es->id = es_out_Add( p_demux->out, &p_es->fmt );
            if( p_parent_es )
            {
                if ( p_sys->b_es_id_pid )
                    p_es->fmt.i_id = (p_sys->i_next_extraid++ << 13) | p_parent_es->fmt.i_id;
                p_es->fmt.i_group = p_parent_es->fmt.i_group;
            }
            p_sys->i_pmt_es++;
        }
        DoCreateES( p_demux, p_es->p_extraes, p_es );
    }
}

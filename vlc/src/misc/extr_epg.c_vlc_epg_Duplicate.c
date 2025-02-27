
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t i_event; scalar_t__* pp_event; scalar_t__ p_current; int b_present; int * psz_name; int i_source_id; int i_id; } ;
typedef TYPE_1__ vlc_epg_t ;
typedef int vlc_epg_event_t ;


 int TAB_APPEND (size_t,scalar_t__*,int *) ;
 int * strdup (int *) ;
 TYPE_1__* vlc_epg_New (int ,int ) ;
 int * vlc_epg_event_Duplicate (scalar_t__) ;

vlc_epg_t * vlc_epg_Duplicate( const vlc_epg_t *p_src )
{
    vlc_epg_t *p_epg = vlc_epg_New( p_src->i_id, p_src->i_source_id );
    if( p_epg )
    {
        p_epg->psz_name = ( p_src->psz_name ) ? strdup( p_src->psz_name ) : ((void*)0);
        p_epg->b_present = p_src->b_present;
        for( size_t i=0; i<p_src->i_event; i++ )
        {
            vlc_epg_event_t *p_dup = vlc_epg_event_Duplicate( p_src->pp_event[i] );
            if( p_dup )
            {
                if( p_src->p_current == p_src->pp_event[i] )
                    p_epg->p_current = p_dup;
                TAB_APPEND( p_epg->i_event, p_epg->pp_event, p_dup );
            }
        }
    }
    return p_epg;
}

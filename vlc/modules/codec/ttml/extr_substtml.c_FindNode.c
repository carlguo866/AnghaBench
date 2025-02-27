
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_child; int attr_dict; int psz_node_name; } ;
typedef TYPE_1__ tt_node_t ;
struct TYPE_6__ {scalar_t__ i_type; struct TYPE_6__* p_next; } ;
typedef TYPE_2__ tt_basenode_t ;


 scalar_t__ TT_NODE_TYPE_TEXT ;
 int strcmp (char*,char const*) ;
 int tt_node_NameCompare (int ,char const*) ;
 char* vlc_dictionary_value_for_key (int *,char*) ;

__attribute__((used)) static tt_node_t * FindNode( tt_node_t *p_node, const char *psz_nodename,
                             size_t i_maxdepth, const char *psz_id )
{
    if( !tt_node_NameCompare( p_node->psz_node_name, psz_nodename ) )
    {
        if( psz_id != ((void*)0) )
        {
            char *psz = vlc_dictionary_value_for_key( &p_node->attr_dict, "xml:id" );
            if( !psz )
                psz = vlc_dictionary_value_for_key( &p_node->attr_dict, "id" );
            if( psz && !strcmp( psz, psz_id ) )
                return p_node;
        }
        else return p_node;
    }

    if( i_maxdepth == 0 )
        return ((void*)0);

    for( tt_basenode_t *p_child = p_node->p_child;
                        p_child; p_child = p_child->p_next )
    {
        if( p_child->i_type == TT_NODE_TYPE_TEXT )
            continue;

        p_node = FindNode( (tt_node_t *) p_child, psz_nodename, i_maxdepth - 1, psz_id );
        if( p_node )
            return p_node;
    }

    return ((void*)0);
}

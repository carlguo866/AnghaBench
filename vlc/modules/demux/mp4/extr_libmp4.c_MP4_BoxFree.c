
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* p_payload; } ;
struct TYPE_7__ {TYPE_1__ data; int (* pf_free ) (TYPE_2__*) ;struct TYPE_7__* p_next; struct TYPE_7__* p_first; } ;
typedef TYPE_2__ MP4_Box_t ;


 int free (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

void MP4_BoxFree( MP4_Box_t *p_box )
{
    MP4_Box_t *p_child;

    if( !p_box )
        return;

    for( p_child = p_box->p_first; p_child != ((void*)0); )
    {
        MP4_Box_t *p_next;

        p_next = p_child->p_next;
        MP4_BoxFree( p_child );
        p_child = p_next;
    }

    if( p_box->pf_free )
        p_box->pf_free( p_box );

    free( p_box->data.p_payload );
    free( p_box );
}

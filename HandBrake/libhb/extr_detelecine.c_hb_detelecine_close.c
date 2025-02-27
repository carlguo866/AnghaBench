
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pullup_ctx; } ;
typedef TYPE_1__ hb_filter_private_t ;
struct TYPE_6__ {TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_filter_object_t ;


 int free (TYPE_1__*) ;
 int pullup_free_context (scalar_t__) ;

__attribute__((used)) static void hb_detelecine_close( hb_filter_object_t * filter )
{
    hb_filter_private_t * pv = filter->private_data;

    if( !pv )
    {
        return;
    }

    if( pv->pullup_ctx )
    {
        pullup_free_context( pv->pullup_ctx );
    }

    free( pv );
    filter->private_data = ((void*)0);
}

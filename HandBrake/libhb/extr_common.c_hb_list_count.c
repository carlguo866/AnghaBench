
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int items_count; } ;
typedef TYPE_1__ hb_list_t ;



int hb_list_count( const hb_list_t * l )
{
    if (l == ((void*)0)) return 0;
    return l->items_count;
}

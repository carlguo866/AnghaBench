
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int style; int nb_items; TYPE_1__* items; } ;
struct TYPE_5__ {scalar_t__ selected; } ;
typedef int LRESULT ;
typedef TYPE_2__ LB_DESCR ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int LBS_MULTIPLESEL ;
 int LBS_NOSEL ;
 int LB_ERR ;
 int LB_OKAY ;
 int LISTBOX_InvalidateItemRect (TYPE_2__*,int) ;
 scalar_t__ TRUE ;

__attribute__((used)) static LRESULT LISTBOX_SelectItemRange( LB_DESCR *descr, INT first,
                                        INT last, BOOL on )
{
    INT i;



    if (descr->style & LBS_NOSEL) return LB_ERR;
    if (!(descr->style & LBS_MULTIPLESEL)) return LB_ERR;

    if (!descr->nb_items) return LB_OKAY;

    if (last == -1 || last >= descr->nb_items) last = descr->nb_items - 1;
    if (first < 0) first = 0;
    if (last < first) return LB_OKAY;

    if (on)
    {
        for (i = first; i <= last; i++)
        {
            if (descr->items[i].selected) continue;
            descr->items[i].selected = TRUE;
            LISTBOX_InvalidateItemRect(descr, i);
        }
    }
    else
    {
        for (i = first; i <= last; i++)
        {
            if (!descr->items[i].selected) continue;
            descr->items[i].selected = FALSE;
            LISTBOX_InvalidateItemRect(descr, i);
        }
    }
    return LB_OKAY;
}

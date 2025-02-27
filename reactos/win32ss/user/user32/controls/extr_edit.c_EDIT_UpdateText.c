
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int hwndSelf; } ;
typedef int RECT ;
typedef TYPE_1__ EDITSTATE ;
typedef int BOOL ;


 int EDIT_NOTIFY_PARENT (TYPE_1__*,int ) ;
 int EF_UPDATE ;
 int EN_UPDATE ;
 int InvalidateRect (int ,int const*,int ) ;

__attribute__((used)) static void EDIT_UpdateText(EDITSTATE *es, const RECT *rc, BOOL bErase)
{
    if (es->flags & EF_UPDATE) {
        es->flags &= ~EF_UPDATE;
        EDIT_NOTIFY_PARENT(es, EN_UPDATE);
    }
    InvalidateRect(es->hwndSelf, rc, bErase);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w_folds; } ;


 int checkupdate (TYPE_1__*) ;
 TYPE_1__* curwin ;
 int getDeepestNestingRecurse (int *) ;

int
getDeepestNesting()
{
    checkupdate(curwin);
    return getDeepestNestingRecurse(&curwin->w_folds);
}

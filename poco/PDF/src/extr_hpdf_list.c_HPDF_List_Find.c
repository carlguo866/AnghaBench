
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t count; void** obj; } ;
typedef size_t HPDF_UINT ;
typedef TYPE_1__* HPDF_List ;
typedef size_t HPDF_INT32 ;


 int HPDF_PTRACE (char*) ;

HPDF_INT32
HPDF_List_Find (HPDF_List list,
                 void *item)
{
    HPDF_UINT i;

    HPDF_PTRACE((" HPDF_List_Find\n"));

    for (i = 0; i < list->count; i++) {
        if (list->obj[i] == item)
            return i;
    }

    return -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t count; void** obj; } ;
typedef size_t HPDF_UINT ;
typedef TYPE_1__* HPDF_List ;


 int HPDF_PTRACE (char*) ;

void*
HPDF_List_RemoveByIndex (HPDF_List list,
                          HPDF_UINT index)
{
    void *tmp;

    HPDF_PTRACE((" HPDF_List_RemoveByIndex\n"));

    if (list->count <= index)
        return ((void*)0);

    tmp = list->obj[index];

    while (index < list->count - 1) {
        list->obj[index] = list->obj[index + 1];
        index++;
    }

    list->count--;

    return tmp;
}

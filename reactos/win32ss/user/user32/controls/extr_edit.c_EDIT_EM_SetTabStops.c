
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int style; int tabs_count; int * tabs; } ;
typedef int INT ;
typedef TYPE_1__ EDITSTATE ;
typedef int BOOL ;


 int EDIT_InvalidateUniscribeData (TYPE_1__*) ;
 int ES_MULTILINE ;
 int FALSE ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int TRUE ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static BOOL EDIT_EM_SetTabStops(EDITSTATE *es, INT count, const INT *tabs)
{
 if (!(es->style & ES_MULTILINE))
  return FALSE;
        HeapFree(GetProcessHeap(), 0, es->tabs);
 es->tabs_count = count;
 if (!count)
  es->tabs = ((void*)0);
 else {
  es->tabs = HeapAlloc(GetProcessHeap(), 0, count * sizeof(INT));
  memcpy(es->tabs, tabs, count * sizeof(INT));
 }
 EDIT_InvalidateUniscribeData(es);
 return TRUE;
}

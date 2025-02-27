
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dw_err; int dw_dw; } ;
typedef TYPE_1__ dwarf_t ;
typedef int * Dwarf_Die ;


 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int die_off (TYPE_1__*,int *) ;
 int dwarf_errmsg (int ) ;
 int dwarf_siblingof (int ,int *,int **,int *) ;
 int terminate (char*,int ,int ) ;

__attribute__((used)) static Dwarf_Die
die_sibling(dwarf_t *dw, Dwarf_Die die)
{
 Dwarf_Die sib;
 int rc;

 if ((rc = dwarf_siblingof(dw->dw_dw, die, &sib, &dw->dw_err)) ==
     DW_DLV_OK)
  return (sib);
 else if (rc == DW_DLV_NO_ENTRY)
  return (((void*)0));

 terminate("die %llu: failed to find type sibling: %s\n",
     die_off(dw, die), dwarf_errmsg(dw->dw_err));

 return (((void*)0));
}

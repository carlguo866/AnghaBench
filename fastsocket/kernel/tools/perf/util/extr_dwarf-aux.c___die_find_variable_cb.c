
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __find_variable_param {int addr; int name; } ;
typedef int Dwarf_Die ;


 int DIE_FIND_CB_CONTINUE ;
 int DIE_FIND_CB_END ;
 int DIE_FIND_CB_SIBLING ;
 int DW_TAG_formal_parameter ;
 int DW_TAG_variable ;
 scalar_t__ die_compare_name (int *,int ) ;
 scalar_t__ dwarf_haspc (int *,int ) ;
 int dwarf_tag (int *) ;

__attribute__((used)) static int __die_find_variable_cb(Dwarf_Die *die_mem, void *data)
{
 struct __find_variable_param *fvp = data;
 int tag;

 tag = dwarf_tag(die_mem);
 if ((tag == DW_TAG_formal_parameter ||
      tag == DW_TAG_variable) &&
     die_compare_name(die_mem, fvp->name))
  return DIE_FIND_CB_END;

 if (dwarf_haspc(die_mem, fvp->addr))
  return DIE_FIND_CB_CONTINUE;
 else
  return DIE_FIND_CB_SIBLING;
}

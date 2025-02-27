
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef long u_long ;
typedef int linker_file_t ;
typedef TYPE_1__* elf_file_t ;
typedef scalar_t__ caddr_t ;
typedef scalar_t__ c_linker_sym_t ;
struct TYPE_4__ {scalar_t__ st_name; long st_value; } ;
struct TYPE_3__ {int ddbsymcnt; scalar_t__ address; TYPE_2__* ddbsymtab; } ;
typedef TYPE_2__ Elf_Sym ;



__attribute__((used)) static int
link_elf_search_symbol(linker_file_t lf, caddr_t value,
    c_linker_sym_t *sym, long *diffp)
{
 elf_file_t ef = (elf_file_t) lf;
 u_long off = (uintptr_t) (void *) value;
 u_long diff = off;
 u_long st_value;
 const Elf_Sym* es;
 const Elf_Sym* best = ((void*)0);
 int i;

 for (i = 0, es = ef->ddbsymtab; i < ef->ddbsymcnt; i++, es++) {
  if (es->st_name == 0)
   continue;
  st_value = es->st_value + (uintptr_t) (void *) ef->address;
  if (off >= st_value) {
   if (off - st_value < diff) {
    diff = off - st_value;
    best = es;
    if (diff == 0)
     break;
   } else if (off - st_value == diff) {
    best = es;
   }
  }
 }
 if (best == ((void*)0))
  *diffp = off;
 else
  *diffp = diff;
 *sym = (c_linker_sym_t) best;

 return (0);
}

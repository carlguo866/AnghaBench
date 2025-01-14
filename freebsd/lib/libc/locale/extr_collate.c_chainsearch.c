
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct xlocale_collate {TYPE_2__* chain_pri_table; TYPE_1__* info; } ;
struct TYPE_5__ {int const* str; } ;
typedef TYPE_2__ collate_chain_t ;
struct TYPE_4__ {int chain_count; } ;


 int COLLATE_STR_LEN ;
 int wcsncmp (int const*,int const*,int) ;
 int wcsnlen (int const*,int ) ;

__attribute__((used)) static collate_chain_t *
chainsearch(struct xlocale_collate *table, const wchar_t *key, int *len)
{
 int low = 0;
 int high = table->info->chain_count - 1;
 int next, compar, l;
 collate_chain_t *p;
 collate_chain_t *tab = table->chain_pri_table;

 if (high < 0)
  return (((void*)0));

 while (low <= high) {
  next = (low + high) / 2;
  p = tab + next;
  compar = *key - *p->str;
  if (compar == 0) {
   l = wcsnlen(p->str, COLLATE_STR_LEN);
   compar = wcsncmp(key, p->str, l);
   if (compar == 0) {
    *len = l;
    return (p);
   }
  }
  if (compar > 0)
   low = next + 1;
  else
   high = next - 1;
 }
 return (((void*)0));
}

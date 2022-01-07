
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ebt_standard_target {int verdict; } ;
struct TYPE_3__ {int name; } ;
struct ebt_entry_target {TYPE_1__ u; } ;
struct ebt_entry {scalar_t__ target_offset; scalar_t__ next_offset; } ;
struct ebt_entries {int nentries; scalar_t__ data; } ;
struct TYPE_4__ {int n; struct ebt_entry* e; struct ebt_entries* chaininfo; } ;
struct ebt_cl_stack {int from; int hookmask; TYPE_2__ cs; } ;


 int EBT_STANDARD_TARGET ;
 struct ebt_entry_target* ebt_get_target_c (struct ebt_entry const*) ;
 void* ebt_next_entry (struct ebt_entry const*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int check_chainloops(const struct ebt_entries *chain, struct ebt_cl_stack *cl_s,
       unsigned int udc_cnt, unsigned int hooknr, char *base)
{
 int i, chain_nr = -1, pos = 0, nentries = chain->nentries, verdict;
 const struct ebt_entry *e = (struct ebt_entry *)chain->data;
 const struct ebt_entry_target *t;

 while (pos < nentries || chain_nr != -1) {

  if (pos == nentries) {

   e = cl_s[chain_nr].cs.e;
   if (cl_s[chain_nr].from != -1)
    nentries =
    cl_s[cl_s[chain_nr].from].cs.chaininfo->nentries;
   else
    nentries = chain->nentries;
   pos = cl_s[chain_nr].cs.n;

   cl_s[chain_nr].cs.n = 0;
   chain_nr = cl_s[chain_nr].from;
   if (pos == nentries)
    continue;
  }
  t = ebt_get_target_c(e);
  if (strcmp(t->u.name, EBT_STANDARD_TARGET))
   goto letscontinue;
  if (e->target_offset + sizeof(struct ebt_standard_target) >
     e->next_offset)
   return -1;

  verdict = ((struct ebt_standard_target *)t)->verdict;
  if (verdict >= 0) {
   struct ebt_entries *hlp2 =
      (struct ebt_entries *)(base + verdict);
   for (i = 0; i < udc_cnt; i++)
    if (hlp2 == cl_s[i].cs.chaininfo)
     break;

   if (i == udc_cnt)
    return -1;

   if (cl_s[i].cs.n)
    return -1;

   if (cl_s[i].hookmask & (1 << hooknr))
    goto letscontinue;

   cl_s[i].cs.n = pos + 1;
   pos = 0;
   cl_s[i].cs.e = ebt_next_entry(e);
   e = (struct ebt_entry *)(hlp2->data);
   nentries = hlp2->nentries;
   cl_s[i].from = chain_nr;
   chain_nr = i;

   cl_s[i].hookmask |= (1 << hooknr);
   continue;
  }
letscontinue:
  e = ebt_next_entry(e);
  pos++;
 }
 return 0;
}

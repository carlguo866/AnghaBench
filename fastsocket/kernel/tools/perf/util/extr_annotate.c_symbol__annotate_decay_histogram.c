
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct sym_hist {int* addr; scalar_t__ sum; } ;
struct annotation {int dummy; } ;


 struct sym_hist* annotation__histogram (struct annotation*,int) ;
 struct annotation* symbol__annotation (struct symbol*) ;
 int symbol__size (struct symbol*) ;

void symbol__annotate_decay_histogram(struct symbol *sym, int evidx)
{
 struct annotation *notes = symbol__annotation(sym);
 struct sym_hist *h = annotation__histogram(notes, evidx);
 int len = symbol__size(sym), offset;

 h->sum = 0;
 for (offset = 0; offset < len; ++offset) {
  h->addr[offset] = h->addr[offset] * 7 / 8;
  h->sum += h->addr[offset];
 }
}

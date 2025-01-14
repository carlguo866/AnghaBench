
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int size; int n; TYPE_2__* e; } ;
typedef TYPE_1__ qhash_table ;
typedef scalar_t__ ll ;
struct TYPE_7__ {scalar_t__ h; int val; } ;
typedef TYPE_2__ entry_t ;


 int assert (int) ;
 int qfree (TYPE_2__*,int) ;
 TYPE_2__* qmalloc0 (int) ;

void qhtbl_set_size (qhash_table *ht, int size) {
  assert (size > ht->size);
  if (size == ht->n) {
    return;
  }

  entry_t *e = qmalloc0 (size * sizeof (entry_t));
  assert (e != ((void*)0));

  int i;
  for (i = 0; i < ht->n; i++) {
    if (ht->e[i].h) {
      ll h = ht->e[i].h;
      int j = (unsigned int)h % size;

      while (e[j].h != h && e[j].h) {
        if (++j == size) {
          j = 0;
        }
      }

      e[j].h = h;
      e[j].val = ht->e[i].val;
    }
  }

  qfree (ht->e, ht->n * sizeof (entry_t));
  ht->n = size;
  ht->e = e;
}

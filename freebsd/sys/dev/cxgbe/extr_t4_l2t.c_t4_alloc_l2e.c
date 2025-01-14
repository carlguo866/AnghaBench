
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2t_entry {scalar_t__ state; size_t hash; struct l2t_entry* next; struct l2t_entry* first; int refcnt; } ;
struct l2t_data {size_t l2t_size; struct l2t_entry* l2tab; int nfree; struct l2t_entry* rover; int lock; } ;


 scalar_t__ L2T_STATE_SWITCHING ;
 scalar_t__ L2T_STATE_UNUSED ;
 int RA_WLOCKED ;
 scalar_t__ atomic_load_acq_int (int *) ;
 int atomic_subtract_int (int *,int) ;
 int rw_assert (int *,int ) ;

struct l2t_entry *
t4_alloc_l2e(struct l2t_data *d)
{
 struct l2t_entry *end, *e, **p;

 rw_assert(&d->lock, RA_WLOCKED);

 if (!atomic_load_acq_int(&d->nfree))
  return (((void*)0));


 for (e = d->rover, end = &d->l2tab[d->l2t_size]; e != end; ++e)
  if (atomic_load_acq_int(&e->refcnt) == 0)
   goto found;

 for (e = d->l2tab; atomic_load_acq_int(&e->refcnt); ++e)
  continue;
found:
 d->rover = e + 1;
 atomic_subtract_int(&d->nfree, 1);





 if (e->state < L2T_STATE_SWITCHING) {
  for (p = &d->l2tab[e->hash].first; *p; p = &(*p)->next) {
   if (*p == e) {
    *p = e->next;
    e->next = ((void*)0);
    break;
   }
  }
 }

 e->state = L2T_STATE_UNUSED;
 return (e);
}

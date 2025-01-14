
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int transaction_id; unsigned long long volume_id; struct TYPE_6__* hnext; } ;
typedef TYPE_1__ transaction_t ;


 void** H ;
 unsigned int HASH_MASK ;
 int lru_add (TYPE_1__*) ;
 int lru_reuse (TYPE_1__*) ;
 int tot_memory_transactions ;
 int transaction_lru_gc () ;
 TYPE_1__* zmalloc0 (int) ;

transaction_t *get_transaction_f (unsigned long long volume_id, int transaction_id, int force) {
  unsigned h = volume_id >> 32;
  h = h * 10007 + ((unsigned) volume_id);
  h = h * 10007 + transaction_id;
  h &= HASH_MASK;
  transaction_t **p = &(H[h]), *q;
  while (1) {
    q = *p;
    if (q == ((void*)0)) {
      break;
    }
    if (q->transaction_id == transaction_id && q->volume_id == volume_id) {
      *p = q->hnext;
      if (force >= 0) {
        q->hnext = H[h];
        H[h] = q;
        lru_reuse (q);
      }
      return q;
    }
    p = &(q->hnext);
  }
  if (force > 0) {
    transaction_lru_gc ();
    q = zmalloc0 (sizeof (transaction_t));
    tot_memory_transactions++;
    q->volume_id = volume_id;
    q->transaction_id = transaction_id;
    q->hnext = H[h];
    H[h] = q;
    lru_add (q);
    return q;
  }
  return ((void*)0);
}

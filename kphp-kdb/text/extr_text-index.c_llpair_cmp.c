
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llpair {scalar_t__ key; int local_id; } ;



__attribute__((used)) static inline int llpair_cmp (struct llpair *a, struct llpair *b) {
  if (a->key < b->key) {
    return -1;
  } else if (a->key > b->key) {
    return 1;
  }
  return a->local_id - b->local_id;
}

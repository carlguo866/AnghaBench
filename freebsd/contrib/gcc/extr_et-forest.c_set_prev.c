
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et_occ {struct et_occ* parent; struct et_occ* prev; } ;


 int gcc_assert (int) ;

__attribute__((used)) static inline void
set_prev (struct et_occ *occ, struct et_occ *t)
{




  occ->prev = t;
  if (t)
    t->parent = occ;
}

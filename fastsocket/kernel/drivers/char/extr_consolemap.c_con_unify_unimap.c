
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct vc_data {unsigned long* vc_uni_pagedir_loc; } ;
struct uni_pagedir {scalar_t__ sum; int refcount; int *** uni_pgdir; } ;
struct TYPE_4__ {TYPE_1__* d; } ;
struct TYPE_3__ {scalar_t__* vc_uni_pagedir_loc; } ;


 int MAX_NR_CONSOLES ;
 int con_release_unimap (struct uni_pagedir*) ;
 int kfree (struct uni_pagedir*) ;
 scalar_t__ memcmp (int *,int *,int) ;
 TYPE_2__* vc_cons ;
 int vc_cons_allocated (int) ;

__attribute__((used)) static int con_unify_unimap(struct vc_data *conp, struct uni_pagedir *p)
{
 int i, j, k;
 struct uni_pagedir *q;

 for (i = 0; i < MAX_NR_CONSOLES; i++) {
  if (!vc_cons_allocated(i))
   continue;
  q = (struct uni_pagedir *)*vc_cons[i].d->vc_uni_pagedir_loc;
  if (!q || q == p || q->sum != p->sum)
   continue;
  for (j = 0; j < 32; j++) {
   u16 **p1, **q1;
   p1 = p->uni_pgdir[j]; q1 = q->uni_pgdir[j];
   if (!p1 && !q1)
    continue;
   if (!p1 || !q1)
    break;
   for (k = 0; k < 32; k++) {
    if (!p1[k] && !q1[k])
     continue;
    if (!p1[k] || !q1[k])
     break;
    if (memcmp(p1[k], q1[k], 64*sizeof(u16)))
     break;
   }
   if (k < 32)
    break;
  }
  if (j == 32) {
   q->refcount++;
   *conp->vc_uni_pagedir_loc = (unsigned long)q;
   con_release_unimap(p);
   kfree(p);
   return 1;
  }
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* p; } ;
struct TYPE_3__ {scalar_t__ x; } ;
typedef TYPE_2__ SortedPoint ;



__attribute__((used)) static int
x_cmp(const void *a, const void *b)
{
 SortedPoint *pa = (SortedPoint *) a;
 SortedPoint *pb = (SortedPoint *) b;

 if (pa->p->x == pb->p->x)
  return 0;
 return (pa->p->x > pb->p->x) ? 1 : -1;
}

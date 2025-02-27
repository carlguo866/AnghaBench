
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_3__ {int info; int size; } ;
typedef TYPE_1__ CType ;


 int CTF_FP ;

__attribute__((used)) static int crec_isnonzero(CType *s, void *p)
{
  if (p == (void *)0)
    return 0;
  if (p == (void *)1)
    return 1;
  if ((s->info & CTF_FP)) {
    if (s->size == sizeof(float))
      return (*(float *)p != 0);
    else
      return (*(double *)p != 0);
  } else {
    if (s->size == 1)
      return (*(uint8_t *)p != 0);
    else if (s->size == 2)
      return (*(uint16_t *)p != 0);
    else if (s->size == 4)
      return (*(uint32_t *)p != 0);
    else
      return (*(uint64_t *)p != 0);
  }
}

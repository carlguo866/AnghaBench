
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ref; } ;
typedef TYPE_1__ FIFO ;


 int CleanupFifo (TYPE_1__*) ;
 scalar_t__ Release (int *) ;

void ReleaseFifo(FIFO *f)
{

 if (f == ((void*)0))
 {
  return;
 }

 if (f->ref == ((void*)0) || Release(f->ref) == 0)
 {
  CleanupFifo(f);
 }
}

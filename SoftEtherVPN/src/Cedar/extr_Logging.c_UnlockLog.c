
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ LOG ;


 int Unlock (int ) ;

void UnlockLog(LOG *g)
{

 if (g == ((void*)0))
 {
  return;
 }

 Unlock(g->lock);
}

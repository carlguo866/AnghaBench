
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* bitmap; } ;
typedef TYPE_1__ Wbmp ;


 int gdFree (TYPE_1__*) ;

void
freewbmp (Wbmp * wbmp)
{
  gdFree (wbmp->bitmap);
  gdFree (wbmp);
}

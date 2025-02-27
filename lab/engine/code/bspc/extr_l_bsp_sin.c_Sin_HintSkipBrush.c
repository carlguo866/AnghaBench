
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t texinfo; } ;
typedef TYPE_1__ sin_dbrushside_t ;
struct TYPE_7__ {int numsides; int firstside; } ;
typedef TYPE_2__ sin_dbrush_t ;
struct TYPE_8__ {int flags; } ;


 int SURF_HINT ;
 int SURF_SKIP ;
 TYPE_1__* sin_dbrushsides ;
 TYPE_3__* sin_texinfo ;

int Sin_HintSkipBrush(sin_dbrush_t *brush)
{
 int j;
 sin_dbrushside_t *brushside;

 for (j = 0; j < brush->numsides; j++)
 {
  brushside = &sin_dbrushsides[brush->firstside + j];
  if (brushside->texinfo > 0)
  {
   if (sin_texinfo[brushside->texinfo].flags & (SURF_SKIP|SURF_HINT))
   {
    return 1;
   }
  }
 }
 return 0;
}

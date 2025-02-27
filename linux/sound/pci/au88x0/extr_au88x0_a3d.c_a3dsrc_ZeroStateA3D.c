
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* card; } ;
typedef TYPE_2__ vortex_t ;
struct TYPE_11__ {int slice; int source; int * vortex; } ;
typedef TYPE_3__ a3dsrc_t ;
struct TYPE_9__ {int dev; } ;


 int a3dsrc_SetA3DControlReg (TYPE_3__*,int ) ;
 int a3dsrc_SetA3DPointerReg (TYPE_3__*,int ) ;
 int a3dsrc_ZeroSliceIO (TYPE_3__*) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static void a3dsrc_ZeroStateA3D(a3dsrc_t *a, vortex_t *v)
{
 int i, var, var2;

 if ((a->vortex) == ((void*)0)) {
  dev_err(v->card->dev,
   "ZeroStateA3D: ERROR: a->vortex is NULL\n");
  return;
 }

 a3dsrc_SetA3DControlReg(a, 0);
 a3dsrc_SetA3DPointerReg(a, 0);

 var = a->slice;
 var2 = a->source;
 for (i = 0; i < 4; i++) {
  a->slice = i;
  a3dsrc_ZeroSliceIO(a);

 }
 a->source = var2;
 a->slice = var;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_core {int dummy; } ;
struct nouveau_drm {int dummy; } ;
typedef int s32 ;


 int core507d_new_ (int *,struct nouveau_drm*,int ,struct nv50_core**) ;
 int corec37d ;

int
corec37d_new(struct nouveau_drm *drm, s32 oclass, struct nv50_core **pcore)
{
 return core507d_new_(&corec37d, drm, oclass, pcore);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_mc {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gk104_mc ;
 int nvkm_mc_new_ (int *,struct nvkm_device*,int,struct nvkm_mc**) ;

int
gk104_mc_new(struct nvkm_device *device, int index, struct nvkm_mc **pmc)
{
 return nvkm_mc_new_(&gk104_mc, device, index, pmc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_mc {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gt215_mc ;
 int nvkm_mc_new_ (int *,struct nvkm_device*,int,struct nvkm_mc**) ;

int
gt215_mc_new(struct nvkm_device *device, int index, struct nvkm_mc **pmc)
{
 return nvkm_mc_new_(&gt215_mc, device, index, pmc);
}

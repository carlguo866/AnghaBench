
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef int u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_devinit {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 unsigned long long NVKM_ENGINE_MPEG ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

__attribute__((used)) static u64
nv50_devinit_disable(struct nvkm_devinit *init)
{
 struct nvkm_device *device = init->subdev.device;
 u32 r001540 = nvkm_rd32(device, 0x001540);
 u64 disable = 0ULL;

 if (!(r001540 & 0x40000000))
  disable |= (1ULL << NVKM_ENGINE_MPEG);

 return disable;
}

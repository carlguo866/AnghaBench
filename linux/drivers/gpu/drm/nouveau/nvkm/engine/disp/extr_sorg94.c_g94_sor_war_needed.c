
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_8__ {scalar_t__ proto; } ;
struct nvkm_ior {TYPE_4__ asy; TYPE_3__* disp; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;


 scalar_t__ TMDS ;
 scalar_t__ nv50_ior_base (struct nvkm_ior*) ;
 int nvkm_rd32 (struct nvkm_device*,scalar_t__ const) ;

__attribute__((used)) static bool
g94_sor_war_needed(struct nvkm_ior *sor)
{
 struct nvkm_device *device = sor->disp->engine.subdev.device;
 const u32 soff = nv50_ior_base(sor);
 if (sor->asy.proto == TMDS) {
  switch (nvkm_rd32(device, 0x614300 + soff) & 0x00030000) {
  case 0x00000000:
  case 0x00030000:
   return 1;
  default:
   break;
  }
 }
 return 0;
}

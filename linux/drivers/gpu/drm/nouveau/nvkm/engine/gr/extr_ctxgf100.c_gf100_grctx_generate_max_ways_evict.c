
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gf100_gr {TYPE_3__ base; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

void
gf100_grctx_generate_max_ways_evict(struct gf100_gr *gr)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 u32 fbps = nvkm_rd32(device, 0x121c74);
 if (fbps == 1)
  nvkm_mask(device, 0x17e91c, 0x001f0000, 0x00090000);
}

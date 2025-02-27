
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_therm {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct gk104_therm {struct gk104_clkgate_engine_info* clkgate_order; TYPE_2__ base; } ;
struct gk104_clkgate_engine_info {scalar_t__ engine; scalar_t__ offset; } ;


 scalar_t__ NVKM_SUBDEV_NR ;
 struct gk104_therm* gk104_therm (struct nvkm_therm*) ;
 int nvkm_device_subdev (struct nvkm_device*,scalar_t__) ;
 int nvkm_mask (struct nvkm_device*,scalar_t__,int,int) ;

void
gk104_clkgate_fini(struct nvkm_therm *base, bool suspend)
{
 struct gk104_therm *therm = gk104_therm(base);
 struct nvkm_device *dev = therm->base.subdev.device;
 const struct gk104_clkgate_engine_info *order = therm->clkgate_order;
 int i;


 for (i = 0; order[i].engine != NVKM_SUBDEV_NR; i++) {
  if (!nvkm_device_subdev(dev, order[i].engine))
   continue;

  nvkm_mask(dev, 0x20200 + order[i].offset, 0xff, 0x54);
 }
}

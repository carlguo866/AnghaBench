
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


 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
gf100_gr_fecs_set_watchdog_timeout(struct gf100_gr *gr, u32 timeout)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;

 nvkm_wr32(device, 0x409840, 0xffffffff);
 nvkm_wr32(device, 0x409500, timeout);
 nvkm_wr32(device, 0x409504, 0x00000021);
}

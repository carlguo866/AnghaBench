
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_subdev {int index; struct nvkm_device* device; } ;
struct nvkm_engine {struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;


 int NVKM_ENGINE_CE0 ;
 int gk104_ce_intr_launcherr (struct nvkm_engine*,int const) ;
 int nvkm_rd32 (struct nvkm_device*,int const) ;
 int nvkm_warn (struct nvkm_subdev*,char*,...) ;
 int nvkm_wr32 (struct nvkm_device*,int const,int) ;

void
gk104_ce_intr(struct nvkm_engine *ce)
{
 const u32 base = (ce->subdev.index - NVKM_ENGINE_CE0) * 0x1000;
 struct nvkm_subdev *subdev = &ce->subdev;
 struct nvkm_device *device = subdev->device;
 u32 mask = nvkm_rd32(device, 0x104904 + base);
 u32 intr = nvkm_rd32(device, 0x104908 + base) & mask;
 if (intr & 0x00000001) {
  nvkm_warn(subdev, "BLOCKPIPE\n");
  nvkm_wr32(device, 0x104908 + base, 0x00000001);
  intr &= ~0x00000001;
 }
 if (intr & 0x00000002) {
  nvkm_warn(subdev, "NONBLOCKPIPE\n");
  nvkm_wr32(device, 0x104908 + base, 0x00000002);
  intr &= ~0x00000002;
 }
 if (intr & 0x00000004) {
  gk104_ce_intr_launcherr(ce, base);
  nvkm_wr32(device, 0x104908 + base, 0x00000004);
  intr &= ~0x00000004;
 }
 if (intr) {
  nvkm_warn(subdev, "intr %08x\n", intr);
  nvkm_wr32(device, 0x104908 + base, intr);
 }
}

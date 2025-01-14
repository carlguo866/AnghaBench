
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {TYPE_1__* device; } ;
struct TYPE_6__ {int size; scalar_t__ data; } ;
struct nvkm_hwsq {TYPE_3__ c; struct nvkm_subdev* subdev; } ;
struct nvkm_bus {TYPE_2__* func; } ;
struct TYPE_5__ {int hwsq_size; int (* hwsq_exec ) (struct nvkm_bus*,int*,int) ;} ;
struct TYPE_4__ {struct nvkm_bus* bus; } ;


 int ENOSPC ;
 int kfree (struct nvkm_hwsq*) ;
 int nvkm_error (struct nvkm_subdev*,char*,...) ;
 int stub1 (struct nvkm_bus*,int*,int) ;

int
nvkm_hwsq_fini(struct nvkm_hwsq **phwsq, bool exec)
{
 struct nvkm_hwsq *hwsq = *phwsq;
 int ret = 0, i;
 if (hwsq) {
  struct nvkm_subdev *subdev = hwsq->subdev;
  struct nvkm_bus *bus = subdev->device->bus;
  hwsq->c.size = (hwsq->c.size + 4) / 4;
  if (hwsq->c.size <= bus->func->hwsq_size) {
   if (exec)
    ret = bus->func->hwsq_exec(bus,
          (u32 *)hwsq->c.data,
          hwsq->c.size);
   if (ret)
    nvkm_error(subdev, "hwsq exec failed: %d\n", ret);
  } else {
   nvkm_error(subdev, "hwsq ucode too large\n");
   ret = -ENOSPC;
  }

  for (i = 0; ret && i < hwsq->c.size; i++)
   nvkm_error(subdev, "\t%08x\n", ((u32 *)hwsq->c.data)[i]);

  *phwsq = ((void*)0);
  kfree(hwsq);
 }
 return ret;
}

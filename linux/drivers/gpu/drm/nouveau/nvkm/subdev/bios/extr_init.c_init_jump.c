
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;


 scalar_t__ init_exec (struct nvbios_init*) ;
 scalar_t__ nvbios_rd16 (struct nvkm_bios*,scalar_t__) ;
 int trace (char*,scalar_t__) ;

__attribute__((used)) static void
init_jump(struct nvbios_init *init)
{
 struct nvkm_bios *bios = init->subdev->device->bios;
 u16 offset = nvbios_rd16(bios, init->offset + 1);

 trace("JUMP\t0x%04x\n", offset);

 if (init_exec(init))
  init->offset = offset;
 else
  init->offset += 3;
}

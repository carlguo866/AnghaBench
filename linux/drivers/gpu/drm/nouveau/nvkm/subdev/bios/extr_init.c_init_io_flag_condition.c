
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;


 int init_exec_set (struct nvbios_init*,int) ;
 int init_io_flag_condition_met (struct nvbios_init*,int ) ;
 int nvbios_rd08 (struct nvkm_bios*,scalar_t__) ;
 int trace (char*,int ) ;

__attribute__((used)) static void
init_io_flag_condition(struct nvbios_init *init)
{
 struct nvkm_bios *bios = init->subdev->device->bios;
 u8 cond = nvbios_rd08(bios, init->offset + 1);

 trace("IO_FLAG_CONDITION\t0x%02x\n", cond);
 init->offset += 2;

 if (!init_io_flag_condition_met(init, cond))
  init_exec_set(init, 0);
}

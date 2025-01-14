
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;


 scalar_t__ init_ram_restrict (struct nvbios_init*) ;
 scalar_t__ init_ram_restrict_group_count (struct nvbios_init*) ;
 int init_wr32 (struct nvbios_init*,int ,int ) ;
 scalar_t__ nv_ro08 (struct nouveau_bios*,scalar_t__) ;
 int nv_ro32 (struct nouveau_bios*,scalar_t__) ;
 int trace (char*,...) ;

__attribute__((used)) static void
init_ram_restrict_zm_reg_group(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u32 addr = nv_ro32(bios, init->offset + 1);
 u8 incr = nv_ro08(bios, init->offset + 5);
 u8 num = nv_ro08(bios, init->offset + 6);
 u8 count = init_ram_restrict_group_count(init);
 u8 index = init_ram_restrict(init);
 u8 i, j;

 trace("RAM_RESTRICT_ZM_REG_GROUP\t"
       "R[0x%08x] 0x%02x 0x%02x\n", addr, incr, num);
 init->offset += 7;

 for (i = 0; i < num; i++) {
  trace("\tR[0x%06x] = {\n", addr);
  for (j = 0; j < count; j++) {
   u32 data = nv_ro32(bios, init->offset);

   if (j == index) {
    trace("\t\t0x%08x *\n", data);
    init_wr32(init, addr, data);
   } else {
    trace("\t\t0x%08x\n", data);
   }

   init->offset += 4;
  }
  trace("\t}\n");
  addr += incr;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;


 scalar_t__ init_macro_table (struct nvbios_init*) ;
 int init_wr32 (struct nvbios_init*,int ,int ) ;
 int nv_ro08 (struct nouveau_bios*,scalar_t__) ;
 int nv_ro32 (struct nouveau_bios*,scalar_t__) ;
 int trace (char*,int,...) ;

__attribute__((used)) static void
init_macro(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u8 macro = nv_ro08(bios, init->offset + 1);
 u16 table;

 trace("MACRO\t0x%02x\n", macro);

 table = init_macro_table(init);
 if (table) {
  u32 addr = nv_ro32(bios, table + (macro * 8) + 0);
  u32 data = nv_ro32(bios, table + (macro * 8) + 4);
  trace("\t\tR[0x%06x] = 0x%08x\n", addr, data);
  init_wr32(init, addr, data);
 }

 init->offset += 2;
}

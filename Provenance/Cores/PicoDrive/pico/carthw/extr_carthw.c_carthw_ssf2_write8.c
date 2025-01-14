
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int romsize; scalar_t__ rom; } ;


 int EL_ANOMALY ;
 int EL_STATUS ;
 TYPE_1__ Pico ;
 int PicoWrite8_io (int,int) ;
 int cpu68k_map_set (int ,int,int,scalar_t__,int ) ;
 int elprintf (int,char*,int) ;
 int m68k_read16_map ;
 int m68k_read8_map ;
 int* ssf2_banks ;

__attribute__((used)) static void carthw_ssf2_write8(u32 a, u32 d)
{
 u32 target, base;

 if ((a & 0xfffff0) != 0xa130f0) {
  PicoWrite8_io(a, d);
  return;
 }

 a &= 0x0e;
 if (a == 0)
  return;

 ssf2_banks[a >> 1] = d;
 base = d << 19;
 target = a << 18;
 if (base + 0x80000 > Pico.romsize) {
  elprintf(EL_ANOMALY|EL_STATUS, "ssf2: missing bank @ %06x", base);
  return;
 }

 cpu68k_map_set(m68k_read8_map, target, target + 0x80000 - 1, Pico.rom + base, 0);
 cpu68k_map_set(m68k_read16_map, target, target + 0x80000 - 1, Pico.rom + base, 0);
}

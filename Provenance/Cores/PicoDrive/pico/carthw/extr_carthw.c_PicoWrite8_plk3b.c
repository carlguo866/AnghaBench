
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int romsize; scalar_t__ rom; } ;


 int EL_ANOMALY ;
 int EL_UIO ;
 TYPE_1__ Pico ;
 int SekPc ;
 int elprintf (int,char*,int,...) ;
 int memcpy (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void PicoWrite8_plk3b(u32 a, u32 d)
{
  int addr;

  elprintf(EL_UIO, "prot w8  [%06x]   %02x @%06x", a, d & 0xff, SekPc);
  addr = d << 15;
  if (addr + 0x8000 > Pico.romsize) {
    elprintf(EL_UIO|EL_ANOMALY, "prot_lk3: bank too large: %02x", d);
    return;
  }
  if (addr == 0)
    memcpy(Pico.rom, Pico.rom + Pico.romsize, 0x8000);
  else
    memcpy(Pico.rom, Pico.rom + addr, 0x8000);
}

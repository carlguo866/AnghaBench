
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 scalar_t__ get_dbe (int,int*) ;
 scalar_t__ put_dbe (int,int*) ;

__attribute__((used)) static int ioc3_cfg_wr(void *addr, int where, int size, u32 value)
{
 u32 cf, shift, mask, smask;

 if ((where >= 0x14 && where < 0x40) || (where >= 0x48))
  return PCIBIOS_SUCCESSFUL;

 if (get_dbe(cf, (u32 *)addr))
  return PCIBIOS_DEVICE_NOT_FOUND;

 shift = ((where & 3) << 3);
 mask = (0xffffffffU >> ((4 - size) << 3));
 smask = mask << shift;

 cf = (cf & ~smask) | ((value & mask) << shift);
 if (put_dbe(cf, (u32 *)addr))
  return PCIBIOS_DEVICE_NOT_FOUND;

 return PCIBIOS_SUCCESSFUL;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int VME_A16 ;
 int VME_A24 ;
 int VME_A32 ;
 int VME_A64 ;

__attribute__((used)) static u32 vme_get_aspace(int am)
{
 switch (am) {
 case 0x29:
 case 0x2D:
  return VME_A16;
 case 0x38:
 case 0x39:
 case 0x3A:
 case 0x3B:
 case 0x3C:
 case 0x3D:
 case 0x3E:
 case 0x3F:
  return VME_A24;
 case 0x8:
 case 0x9:
 case 0xA:
 case 0xB:
 case 0xC:
 case 0xD:
 case 0xE:
 case 0xF:
  return VME_A32;
 case 0x0:
 case 0x1:
 case 0x3:
  return VME_A64;
 }

 return 0;
}

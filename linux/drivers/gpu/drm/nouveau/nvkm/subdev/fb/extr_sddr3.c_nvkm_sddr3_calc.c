
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_ram {int* mr; TYPE_2__* next; } ;
struct TYPE_3__ {int timing_ver; int timing_hdr; int timing_10_CWL; int timing_10_CL; int timing_10_WR; int timing_10_ODT; int* timing; int ramcfg_DLLoff; } ;
struct TYPE_4__ {TYPE_1__ bios; } ;


 int EINVAL ;
 int ENOSYS ;
 int ramddr3_cl ;
 int ramddr3_cwl ;
 int ramddr3_wr ;
 int ramxlat (int ,int) ;

int
nvkm_sddr3_calc(struct nvkm_ram *ram)
{
 int CWL, CL, WR, DLL = 0, ODT = 0;

 DLL = !ram->next->bios.ramcfg_DLLoff;

 switch (ram->next->bios.timing_ver) {
 case 0x10:
  if (ram->next->bios.timing_hdr < 0x17) {

   return -ENOSYS;
  }
  CWL = ram->next->bios.timing_10_CWL;
  CL = ram->next->bios.timing_10_CL;
  WR = ram->next->bios.timing_10_WR;
  ODT = ram->next->bios.timing_10_ODT;
  break;
 case 0x20:
  CWL = (ram->next->bios.timing[1] & 0x00000f80) >> 7;
  CL = (ram->next->bios.timing[1] & 0x0000001f) >> 0;
  WR = (ram->next->bios.timing[2] & 0x007f0000) >> 16;

  ODT = (ram->mr[1] & 0x004) >> 2 |
   (ram->mr[1] & 0x040) >> 5 |
          (ram->mr[1] & 0x200) >> 7;
  break;
 default:
  return -ENOSYS;
 }

 CWL = ramxlat(ramddr3_cwl, CWL);
 CL = ramxlat(ramddr3_cl, CL);
 WR = ramxlat(ramddr3_wr, WR);
 if (CL < 0 || CWL < 0 || WR < 0)
  return -EINVAL;

 ram->mr[0] &= ~0xf74;
 ram->mr[0] |= (WR & 0x07) << 9;
 ram->mr[0] |= (CL & 0x0e) << 3;
 ram->mr[0] |= (CL & 0x01) << 2;

 ram->mr[1] &= ~0x245;
 ram->mr[1] |= (ODT & 0x1) << 2;
 ram->mr[1] |= (ODT & 0x2) << 5;
 ram->mr[1] |= (ODT & 0x4) << 7;
 ram->mr[1] |= !DLL;

 ram->mr[2] &= ~0x038;
 ram->mr[2] |= (CWL & 0x07) << 3;
 return 0;
}

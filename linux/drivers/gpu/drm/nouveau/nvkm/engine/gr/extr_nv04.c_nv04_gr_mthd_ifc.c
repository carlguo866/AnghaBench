
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_device {int dummy; } ;


 int nv01_gr_mthd_bind_chroma (struct nvkm_device*,int,int) ;
 int nv01_gr_mthd_bind_clip (struct nvkm_device*,int,int) ;
 int nv04_gr_mthd_bind_beta1 (struct nvkm_device*,int,int) ;
 int nv04_gr_mthd_bind_beta4 (struct nvkm_device*,int,int) ;
 int nv04_gr_mthd_bind_patt (struct nvkm_device*,int,int) ;
 int nv04_gr_mthd_bind_rop (struct nvkm_device*,int,int) ;
 int nv04_gr_mthd_bind_surf2d (struct nvkm_device*,int,int) ;
 int nv04_gr_mthd_set_operation (struct nvkm_device*,int,int) ;

__attribute__((used)) static bool
nv04_gr_mthd_ifc(struct nvkm_device *device, u32 inst, u32 mthd, u32 data)
{
 bool (*func)(struct nvkm_device *, u32, u32);
 switch (mthd) {
 case 0x0184: func = nv01_gr_mthd_bind_chroma; break;
 case 0x0188: func = nv01_gr_mthd_bind_clip; break;
 case 0x018c: func = nv04_gr_mthd_bind_patt; break;
 case 0x0190: func = nv04_gr_mthd_bind_rop; break;
 case 0x0194: func = nv04_gr_mthd_bind_beta1; break;
 case 0x0198: func = nv04_gr_mthd_bind_beta4; break;
 case 0x019c: func = nv04_gr_mthd_bind_surf2d; break;
 case 0x02fc: func = nv04_gr_mthd_set_operation; break;
 default:
  return 0;
 }
 return func(device, inst, data);
}

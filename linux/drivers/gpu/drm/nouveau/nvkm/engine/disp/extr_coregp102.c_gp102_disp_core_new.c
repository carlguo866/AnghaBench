
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_oclass {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nv50_disp {int dummy; } ;


 int gk104_disp_core_mthd ;
 int gp102_disp_core_func ;
 int nv50_disp_core_new_ (int *,int *,struct nv50_disp*,int ,struct nvkm_oclass const*,void*,int ,struct nvkm_object**) ;

int
gp102_disp_core_new(const struct nvkm_oclass *oclass, void *argv, u32 argc,
      struct nv50_disp *disp, struct nvkm_object **pobject)
{
 return nv50_disp_core_new_(&gp102_disp_core_func, &gk104_disp_core_mthd,
       disp, 0, oclass, argv, argc, pobject);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_oclass {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nv50_disp {int dummy; } ;


 int gf119_disp_base_mthd ;
 int gf119_disp_dmac_func ;
 int nv50_disp_base_new_ (int *,int *,struct nv50_disp*,int,struct nvkm_oclass const*,void*,int ,struct nvkm_object**) ;

int
gf119_disp_base_new(const struct nvkm_oclass *oclass, void *argv, u32 argc,
      struct nv50_disp *disp, struct nvkm_object **pobject)
{
 return nv50_disp_base_new_(&gf119_disp_dmac_func, &gf119_disp_base_mthd,
       disp, 1, oclass, argv, argc, pobject);
}

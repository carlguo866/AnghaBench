
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_oclass {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_disp {int dummy; } ;


 int gm200_disp_root ;
 int nv50_disp_root_new_ (int *,struct nvkm_disp*,struct nvkm_oclass const*,void*,int ,struct nvkm_object**) ;

__attribute__((used)) static int
gm200_disp_root_new(struct nvkm_disp *disp, const struct nvkm_oclass *oclass,
      void *data, u32 size, struct nvkm_object **pobject)
{
 return nv50_disp_root_new_(&gm200_disp_root, disp, oclass,
       data, size, pobject);
}

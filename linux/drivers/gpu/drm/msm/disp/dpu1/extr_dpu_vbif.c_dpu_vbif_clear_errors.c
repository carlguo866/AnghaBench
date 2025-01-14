
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct dpu_kms {struct dpu_hw_vbif** hw_vbif; } ;
struct TYPE_2__ {int (* clear_errors ) (struct dpu_hw_vbif*,size_t*,size_t*) ;} ;
struct dpu_hw_vbif {scalar_t__ idx; TYPE_1__ ops; } ;


 size_t ARRAY_SIZE (struct dpu_hw_vbif**) ;
 int DRM_DEBUG_KMS (char*,scalar_t__,size_t,size_t) ;
 scalar_t__ VBIF_0 ;
 int stub1 (struct dpu_hw_vbif*,size_t*,size_t*) ;

void dpu_vbif_clear_errors(struct dpu_kms *dpu_kms)
{
 struct dpu_hw_vbif *vbif;
 u32 i, pnd, src;

 for (i = 0; i < ARRAY_SIZE(dpu_kms->hw_vbif); i++) {
  vbif = dpu_kms->hw_vbif[i];
  if (vbif && vbif->ops.clear_errors) {
   vbif->ops.clear_errors(vbif, &pnd, &src);
   if (pnd || src) {
    DRM_DEBUG_KMS("VBIF %d: pnd 0x%X, src 0x%X\n",
           vbif->idx - VBIF_0, pnd, src);
   }
  }
 }
}

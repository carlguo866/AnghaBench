
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* entry; } ;
struct vega12_smumgr {TYPE_2__ smu_tables; } ;
struct pp_hwmgr {int * smu_backend; } ;
struct TYPE_3__ {scalar_t__ table; int mc_addr; int handle; } ;


 size_t TABLE_AVFS_FUSE_OVERRIDE ;
 size_t TABLE_OVERDRIVE ;
 size_t TABLE_PMSTATUSLOG ;
 size_t TABLE_PPTABLE ;
 size_t TABLE_SMU_METRICS ;
 size_t TABLE_WATERMARKS ;
 int amdgpu_bo_free_kernel (int *,int *,scalar_t__*) ;
 int kfree (int *) ;

__attribute__((used)) static int vega12_smu_fini(struct pp_hwmgr *hwmgr)
{
 struct vega12_smumgr *priv =
   (struct vega12_smumgr *)(hwmgr->smu_backend);

 if (priv) {
  amdgpu_bo_free_kernel(&priv->smu_tables.entry[TABLE_PPTABLE].handle,
          &priv->smu_tables.entry[TABLE_PPTABLE].mc_addr,
          &priv->smu_tables.entry[TABLE_PPTABLE].table);
  amdgpu_bo_free_kernel(&priv->smu_tables.entry[TABLE_WATERMARKS].handle,
          &priv->smu_tables.entry[TABLE_WATERMARKS].mc_addr,
          &priv->smu_tables.entry[TABLE_WATERMARKS].table);
  if (priv->smu_tables.entry[TABLE_PMSTATUSLOG].table)
   amdgpu_bo_free_kernel(&priv->smu_tables.entry[TABLE_PMSTATUSLOG].handle,
           &priv->smu_tables.entry[TABLE_PMSTATUSLOG].mc_addr,
           &priv->smu_tables.entry[TABLE_PMSTATUSLOG].table);
  amdgpu_bo_free_kernel(&priv->smu_tables.entry[TABLE_AVFS_FUSE_OVERRIDE].handle,
          &priv->smu_tables.entry[TABLE_AVFS_FUSE_OVERRIDE].mc_addr,
          &priv->smu_tables.entry[TABLE_AVFS_FUSE_OVERRIDE].table);
  amdgpu_bo_free_kernel(&priv->smu_tables.entry[TABLE_OVERDRIVE].handle,
          &priv->smu_tables.entry[TABLE_OVERDRIVE].mc_addr,
          &priv->smu_tables.entry[TABLE_OVERDRIVE].table);
  amdgpu_bo_free_kernel(&priv->smu_tables.entry[TABLE_SMU_METRICS].handle,
          &priv->smu_tables.entry[TABLE_SMU_METRICS].mc_addr,
          &priv->smu_tables.entry[TABLE_SMU_METRICS].table);
  kfree(hwmgr->smu_backend);
  hwmgr->smu_backend = ((void*)0);
 }
 return 0;
}

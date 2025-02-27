
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {void* pta_cpu; int pta_dma; } ;
struct etnaviv_iommu_global {int version; int use; int bad_page_dma; void* bad_page_cpu; int * ops; int lock; struct device* dev; TYPE_3__ v2; } ;
struct TYPE_5__ {int minor_features1; } ;
struct etnaviv_gpu {int dev; TYPE_2__ identity; TYPE_1__* drm; } ;
struct etnaviv_drm_private {struct etnaviv_iommu_global* mmu_global; } ;
struct device {int dummy; } ;
typedef enum etnaviv_iommu_version { ____Placeholder_etnaviv_iommu_version } etnaviv_iommu_version ;
struct TYPE_4__ {struct device* dev; struct etnaviv_drm_private* dev_private; } ;


 int ENOMEM ;
 int ENXIO ;
 int ETNAVIV_IOMMU_V1 ;
 int ETNAVIV_IOMMU_V2 ;
 int ETNAVIV_PTA_SIZE ;
 int GFP_KERNEL ;
 int SZ_4K ;
 int chipMinorFeatures1_MMU_VERSION ;
 int dev_err (int ,char*) ;
 void* dma_alloc_wc (struct device*,int,int *,int ) ;
 int dma_free_wc (struct device*,int,void*,int ) ;
 int etnaviv_iommuv1_ops ;
 int etnaviv_iommuv2_ops ;
 int kfree (struct etnaviv_iommu_global*) ;
 struct etnaviv_iommu_global* kzalloc (int,int ) ;
 int memset32 (void*,int,int) ;
 int mutex_init (int *) ;

int etnaviv_iommu_global_init(struct etnaviv_gpu *gpu)
{
 enum etnaviv_iommu_version version = ETNAVIV_IOMMU_V1;
 struct etnaviv_drm_private *priv = gpu->drm->dev_private;
 struct etnaviv_iommu_global *global;
 struct device *dev = gpu->drm->dev;

 if (gpu->identity.minor_features1 & chipMinorFeatures1_MMU_VERSION)
  version = ETNAVIV_IOMMU_V2;

 if (priv->mmu_global) {
  if (priv->mmu_global->version != version) {
   dev_err(gpu->dev,
    "MMU version doesn't match global version\n");
   return -ENXIO;
  }

  priv->mmu_global->use++;
  return 0;
 }

 global = kzalloc(sizeof(*global), GFP_KERNEL);
 if (!global)
  return -ENOMEM;

 global->bad_page_cpu = dma_alloc_wc(dev, SZ_4K, &global->bad_page_dma,
         GFP_KERNEL);
 if (!global->bad_page_cpu)
  goto free_global;

 memset32(global->bad_page_cpu, 0xdead55aa, SZ_4K / sizeof(u32));

 if (version == ETNAVIV_IOMMU_V2) {
  global->v2.pta_cpu = dma_alloc_wc(dev, ETNAVIV_PTA_SIZE,
            &global->v2.pta_dma, GFP_KERNEL);
  if (!global->v2.pta_cpu)
   goto free_bad_page;
 }

 global->dev = dev;
 global->version = version;
 global->use = 1;
 mutex_init(&global->lock);

 if (version == ETNAVIV_IOMMU_V1)
  global->ops = &etnaviv_iommuv1_ops;
 else
  global->ops = &etnaviv_iommuv2_ops;

 priv->mmu_global = global;

 return 0;

free_bad_page:
 dma_free_wc(dev, SZ_4K, global->bad_page_cpu, global->bad_page_dma);
free_global:
 kfree(global);

 return -ENOMEM;
}

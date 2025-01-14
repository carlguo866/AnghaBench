
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int size; } ;
struct tegra_bo {int num_pages; TYPE_1__* pages; TYPE_5__ gem; TYPE_1__* sgt; } ;
struct drm_device {int dev; } ;
struct TYPE_11__ {int nents; int sgl; } ;


 int DMA_FROM_DEVICE ;
 int EFAULT ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PAGE_SHIFT ;
 int PTR_ERR (TYPE_1__*) ;
 int dma_map_sg (int ,int ,int ,int ) ;
 TYPE_1__* drm_gem_get_pages (TYPE_5__*) ;
 int drm_gem_put_pages (TYPE_5__*,TYPE_1__*,int,int) ;
 TYPE_1__* drm_prime_pages_to_sg (TYPE_1__*,int) ;
 int kfree (TYPE_1__*) ;
 int sg_free_table (TYPE_1__*) ;

__attribute__((used)) static int tegra_bo_get_pages(struct drm_device *drm, struct tegra_bo *bo)
{
 int err;

 bo->pages = drm_gem_get_pages(&bo->gem);
 if (IS_ERR(bo->pages))
  return PTR_ERR(bo->pages);

 bo->num_pages = bo->gem.size >> PAGE_SHIFT;

 bo->sgt = drm_prime_pages_to_sg(bo->pages, bo->num_pages);
 if (IS_ERR(bo->sgt)) {
  err = PTR_ERR(bo->sgt);
  goto put_pages;
 }

 err = dma_map_sg(drm->dev, bo->sgt->sgl, bo->sgt->nents,
    DMA_FROM_DEVICE);
 if (err == 0) {
  err = -EFAULT;
  goto free_sgt;
 }

 return 0;

free_sgt:
 sg_free_table(bo->sgt);
 kfree(bo->sgt);
put_pages:
 drm_gem_put_pages(&bo->gem, bo->pages, 0, 0);
 return err;
}

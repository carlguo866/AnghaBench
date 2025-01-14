
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int type; int mfn; int page; int vaddr; } ;
struct intel_vgpu_ppgtt_spt {TYPE_5__ shadow_page; int post_shadow_list; int refcount; struct intel_vgpu* vgpu; } ;
struct TYPE_10__ {int spt_tree; } ;
struct intel_vgpu {TYPE_4__ gtt; TYPE_6__* gvt; } ;
struct device {int dummy; } ;
typedef enum intel_gvt_gtt_type { ____Placeholder_intel_gvt_gtt_type } intel_gvt_gtt_type ;
typedef int dma_addr_t ;
struct TYPE_12__ {TYPE_3__* dev_priv; } ;
struct TYPE_8__ {TYPE_1__* pdev; } ;
struct TYPE_9__ {TYPE_2__ drm; } ;
struct TYPE_7__ {struct device dev; } ;


 int EINVAL ;
 int ENOMEM ;
 struct intel_vgpu_ppgtt_spt* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int I915_GTT_PAGE_SHIFT ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_SIZE ;
 int PCI_DMA_BIDIRECTIONAL ;
 int __GFP_ZERO ;
 struct intel_vgpu_ppgtt_spt* alloc_spt (int) ;
 int atomic_set (int *,int) ;
 int dma_map_page (struct device*,int ,int ,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int) ;
 int dma_unmap_page (struct device*,int,int ,int ) ;
 int free_spt (struct intel_vgpu_ppgtt_spt*) ;
 int gvt_vgpu_err (char*) ;
 int page_address (int ) ;
 int radix_tree_insert (int *,int,struct intel_vgpu_ppgtt_spt*) ;
 scalar_t__ reclaim_one_ppgtt_mm (TYPE_6__*) ;

__attribute__((used)) static struct intel_vgpu_ppgtt_spt *ppgtt_alloc_spt(
  struct intel_vgpu *vgpu, enum intel_gvt_gtt_type type)
{
 struct device *kdev = &vgpu->gvt->dev_priv->drm.pdev->dev;
 struct intel_vgpu_ppgtt_spt *spt = ((void*)0);
 dma_addr_t daddr;
 int ret;

retry:
 spt = alloc_spt(GFP_KERNEL | __GFP_ZERO);
 if (!spt) {
  if (reclaim_one_ppgtt_mm(vgpu->gvt))
   goto retry;

  gvt_vgpu_err("fail to allocate ppgtt shadow page\n");
  return ERR_PTR(-ENOMEM);
 }

 spt->vgpu = vgpu;
 atomic_set(&spt->refcount, 1);
 INIT_LIST_HEAD(&spt->post_shadow_list);




 spt->shadow_page.type = type;
 daddr = dma_map_page(kdev, spt->shadow_page.page,
        0, 4096, PCI_DMA_BIDIRECTIONAL);
 if (dma_mapping_error(kdev, daddr)) {
  gvt_vgpu_err("fail to map dma addr\n");
  ret = -EINVAL;
  goto err_free_spt;
 }
 spt->shadow_page.vaddr = page_address(spt->shadow_page.page);
 spt->shadow_page.mfn = daddr >> I915_GTT_PAGE_SHIFT;

 ret = radix_tree_insert(&vgpu->gtt.spt_tree, spt->shadow_page.mfn, spt);
 if (ret)
  goto err_unmap_dma;

 return spt;

err_unmap_dma:
 dma_unmap_page(kdev, daddr, PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
err_free_spt:
 free_spt(spt);
 return ERR_PTR(ret);
}

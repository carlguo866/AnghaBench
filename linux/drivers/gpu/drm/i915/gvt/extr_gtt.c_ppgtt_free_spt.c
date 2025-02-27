
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ gfn; scalar_t__ oos_page; int type; } ;
struct TYPE_15__ {int mfn; } ;
struct intel_vgpu_ppgtt_spt {int post_shadow_list; TYPE_7__ guest_page; TYPE_8__* vgpu; TYPE_6__ shadow_page; } ;
struct device {int dummy; } ;
struct TYPE_14__ {int spt_tree; } ;
struct TYPE_17__ {TYPE_5__ gtt; int id; TYPE_4__* gvt; } ;
struct TYPE_13__ {TYPE_3__* dev_priv; } ;
struct TYPE_11__ {TYPE_1__* pdev; } ;
struct TYPE_12__ {TYPE_2__ drm; } ;
struct TYPE_10__ {struct device dev; } ;


 int I915_GTT_PAGE_SHIFT ;
 int PCI_DMA_BIDIRECTIONAL ;
 int detach_oos_page (TYPE_8__*,scalar_t__) ;
 int dma_unmap_page (struct device*,int,int,int ) ;
 int free_spt (struct intel_vgpu_ppgtt_spt*) ;
 int intel_vgpu_unregister_page_track (TYPE_8__*,scalar_t__) ;
 int list_del_init (int *) ;
 int radix_tree_delete (int *,int) ;
 int trace_spt_free (int ,struct intel_vgpu_ppgtt_spt*,int ) ;

__attribute__((used)) static void ppgtt_free_spt(struct intel_vgpu_ppgtt_spt *spt)
{
 struct device *kdev = &spt->vgpu->gvt->dev_priv->drm.pdev->dev;

 trace_spt_free(spt->vgpu->id, spt, spt->guest_page.type);

 dma_unmap_page(kdev, spt->shadow_page.mfn << I915_GTT_PAGE_SHIFT, 4096,
         PCI_DMA_BIDIRECTIONAL);

 radix_tree_delete(&spt->vgpu->gtt.spt_tree, spt->shadow_page.mfn);

 if (spt->guest_page.gfn) {
  if (spt->guest_page.oos_page)
   detach_oos_page(spt->vgpu, spt->guest_page.oos_page);

  intel_vgpu_unregister_page_track(spt->vgpu, spt->guest_page.gfn);
 }

 list_del_init(&spt->post_shadow_list);
 free_spt(spt);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_vgpu_ppgtt_spt {int dummy; } ;
struct intel_vgpu {TYPE_2__* gvt; } ;
struct intel_gvt_gtt_pte_ops {unsigned long (* get_pfn ) (struct intel_gvt_gtt_entry*) ;int (* set_pfn ) (struct intel_gvt_gtt_entry*,int) ;int (* set_64k_splited ) (struct intel_gvt_gtt_entry*) ;} ;
struct intel_gvt_gtt_entry {int type; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct TYPE_4__ {TYPE_1__ gtt; } ;


 int GEM_BUG_ON (unsigned long) ;
 unsigned long GTT_64K_PTE_STRIDE ;
 int GTT_TYPE_PPGTT_PTE_4K_ENTRY ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int gvt_vdbg_mm (char*,unsigned long) ;
 int intel_gvt_hypervisor_dma_map_guest_page (struct intel_vgpu*,unsigned long,int ,int*) ;
 int ppgtt_set_shadow_entry (struct intel_vgpu_ppgtt_spt*,struct intel_gvt_gtt_entry*,unsigned long) ;
 unsigned long stub1 (struct intel_gvt_gtt_entry*) ;
 int stub2 (struct intel_gvt_gtt_entry*) ;
 int stub3 (struct intel_gvt_gtt_entry*,int) ;

__attribute__((used)) static int split_64KB_gtt_entry(struct intel_vgpu *vgpu,
 struct intel_vgpu_ppgtt_spt *spt, unsigned long index,
 struct intel_gvt_gtt_entry *se)
{
 struct intel_gvt_gtt_pte_ops *ops = vgpu->gvt->gtt.pte_ops;
 struct intel_gvt_gtt_entry entry = *se;
 unsigned long start_gfn;
 dma_addr_t dma_addr;
 int i, ret;

 gvt_vdbg_mm("Split 64K gtt entry, index %lu\n", index);

 GEM_BUG_ON(index % GTT_64K_PTE_STRIDE);

 start_gfn = ops->get_pfn(se);

 entry.type = GTT_TYPE_PPGTT_PTE_4K_ENTRY;
 ops->set_64k_splited(&entry);

 for (i = 0; i < GTT_64K_PTE_STRIDE; i++) {
  ret = intel_gvt_hypervisor_dma_map_guest_page(vgpu,
     start_gfn + i, PAGE_SIZE, &dma_addr);
  if (ret)
   return ret;

  ops->set_pfn(&entry, dma_addr >> PAGE_SHIFT);
  ppgtt_set_shadow_entry(spt, &entry, index + i);
 }
 return 0;
}

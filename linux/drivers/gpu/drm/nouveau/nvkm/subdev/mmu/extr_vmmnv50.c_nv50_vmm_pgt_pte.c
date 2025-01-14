
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nvkm_vmm_map {int type; int ctag; int next; } ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu_pt {int dummy; } ;


 scalar_t__ IS_ALIGNED (int,int) ;
 int VMM_WO064 (struct nvkm_mmu_pt*,struct nvkm_vmm*,int,int) ;

__attribute__((used)) static inline void
nv50_vmm_pgt_pte(struct nvkm_vmm *vmm, struct nvkm_mmu_pt *pt,
   u32 ptei, u32 ptes, struct nvkm_vmm_map *map, u64 addr)
{
 u64 next = addr + map->type, data;
 u32 pten;
 int log2blk;

 map->type += ptes * map->ctag;

 while (ptes) {
  for (log2blk = 7; log2blk >= 0; log2blk--) {
   pten = 1 << log2blk;
   if (ptes >= pten && IS_ALIGNED(ptei, pten))
    break;
  }

  data = next | (log2blk << 7);
  next += pten * map->next;
  ptes -= pten;

  while (pten--)
   VMM_WO064(pt, vmm, ptei++ * 8, data);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct hl_ctx {TYPE_2__* hdev; } ;
struct TYPE_3__ {int mmu_pte_size; } ;
struct TYPE_4__ {TYPE_1__ asic_prop; } ;


 int HOP0_MASK ;
 int HOP0_SHIFT ;

__attribute__((used)) static inline u64 get_hop0_pte_addr(struct hl_ctx *ctx, u64 hop_addr,
  u64 virt_addr)
{
 return hop_addr + ctx->hdev->asic_prop.mmu_pte_size *
   ((virt_addr & HOP0_MASK) >> HOP0_SHIFT);
}

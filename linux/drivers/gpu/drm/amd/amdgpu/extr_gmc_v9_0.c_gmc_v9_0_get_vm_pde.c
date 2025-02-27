
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int vram_start; int translate_further; } ;
struct TYPE_4__ {int vram_base_offset; } ;
struct amdgpu_device {TYPE_1__ gmc; TYPE_2__ vm_manager; } ;


 int AMDGPU_PDE_BFS (int) ;
 int AMDGPU_PDE_PTE ;
 int AMDGPU_PTE_SYSTEM ;
 int AMDGPU_PTE_TF ;
 int AMDGPU_VM_PDB0 ;
 int AMDGPU_VM_PDB1 ;
 int BUG_ON (int) ;

__attribute__((used)) static void gmc_v9_0_get_vm_pde(struct amdgpu_device *adev, int level,
    uint64_t *addr, uint64_t *flags)
{
 if (!(*flags & AMDGPU_PDE_PTE) && !(*flags & AMDGPU_PTE_SYSTEM))
  *addr = adev->vm_manager.vram_base_offset + *addr -
   adev->gmc.vram_start;
 BUG_ON(*addr & 0xFFFF00000000003FULL);

 if (!adev->gmc.translate_further)
  return;

 if (level == AMDGPU_VM_PDB1) {

  if (!(*flags & AMDGPU_PDE_PTE))
   *flags |= AMDGPU_PDE_BFS(0x9);

 } else if (level == AMDGPU_VM_PDB0) {
  if (*flags & AMDGPU_PDE_PTE)
   *flags &= ~AMDGPU_PDE_PTE;
  else
   *flags |= AMDGPU_PTE_TF;
 }
}

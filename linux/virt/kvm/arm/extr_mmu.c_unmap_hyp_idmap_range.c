
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int phys_addr_t ;
typedef int pgd_t ;


 int __kvm_idmap_ptrs_per_pgd () ;
 int __unmap_hyp_range (int *,int ,int ,int ) ;

__attribute__((used)) static void unmap_hyp_idmap_range(pgd_t *pgdp, phys_addr_t start, u64 size)
{
 __unmap_hyp_range(pgdp, __kvm_idmap_ptrs_per_pgd(), start, size);
}

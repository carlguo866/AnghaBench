
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kvm_pfn_t ;


 int __clean_dcache_guest_page (int ,unsigned long) ;

__attribute__((used)) static void clean_dcache_guest_page(kvm_pfn_t pfn, unsigned long size)
{
 __clean_dcache_guest_page(pfn, size);
}

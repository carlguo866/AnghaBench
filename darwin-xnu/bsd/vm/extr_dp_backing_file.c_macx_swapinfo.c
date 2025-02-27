
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ memory_object_size_t ;
typedef int boolean_t ;


 int FALSE ;
 scalar_t__ PAGE_SIZE_64 ;
 int TRUE ;
 scalar_t__ VM_CONFIG_SWAP_IS_PRESENT ;
 scalar_t__ vm_swap_get_free_space () ;
 scalar_t__ vm_swap_get_total_space () ;

int
macx_swapinfo(
 memory_object_size_t *total_p,
 memory_object_size_t *avail_p,
 vm_size_t *pagesize_p,
 boolean_t *encrypted_p)
{
 if (VM_CONFIG_SWAP_IS_PRESENT) {

  *total_p = vm_swap_get_total_space();
  *avail_p = vm_swap_get_free_space();
  *pagesize_p = (vm_size_t)PAGE_SIZE_64;
  *encrypted_p = TRUE;

 } else {

  *total_p = 0;
  *avail_p = 0;
  *pagesize_p = 0;
  *encrypted_p = FALSE;
 }
 return 0;
}

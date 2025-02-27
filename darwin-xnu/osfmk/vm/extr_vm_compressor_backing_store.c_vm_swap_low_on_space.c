
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FALSE ;
 int SWAPPER_NEEDS_TO_UNTHROTTLE () ;
 scalar_t__ VM_SWAPFILE_HIWATER_SEGS ;
 scalar_t__ vm_num_swap_files ;
 scalar_t__ vm_swapfile_can_be_created ;
 scalar_t__ vm_swapfile_last_failed_to_create_ts ;
 scalar_t__ vm_swapfile_last_successful_create_ts ;
 unsigned int vm_swapfile_total_segs_alloced ;
 unsigned int vm_swapfile_total_segs_used ;

int
vm_swap_low_on_space(void)
{

 if (vm_num_swap_files == 0 && vm_swapfile_can_be_created == FALSE)
  return (0);

 if (((vm_swapfile_total_segs_alloced - vm_swapfile_total_segs_used) < ((unsigned int)VM_SWAPFILE_HIWATER_SEGS) / 8)) {

  if (vm_num_swap_files == 0 && !SWAPPER_NEEDS_TO_UNTHROTTLE())
   return (0);

  if (vm_swapfile_last_failed_to_create_ts >= vm_swapfile_last_successful_create_ts)
   return (1);
 }
 return (0);
}

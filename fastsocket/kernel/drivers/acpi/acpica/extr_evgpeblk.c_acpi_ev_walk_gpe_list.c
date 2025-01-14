
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_gpe_xrupt_info {struct acpi_gpe_xrupt_info* next; struct acpi_gpe_block_info* gpe_block_list_head; } ;
struct acpi_gpe_block_info {struct acpi_gpe_block_info* next; } ;
typedef scalar_t__ acpi_status ;
typedef scalar_t__ (* acpi_gpe_callback ) (struct acpi_gpe_xrupt_info*,struct acpi_gpe_block_info*,void*) ;
typedef int acpi_cpu_flags ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ AE_CTRL_END ;
 scalar_t__ AE_OK ;
 int acpi_gbl_gpe_lock ;
 struct acpi_gpe_xrupt_info* acpi_gbl_gpe_xrupt_list_head ;
 int acpi_os_acquire_lock (int ) ;
 int acpi_os_release_lock (int ,int ) ;
 int ev_walk_gpe_list ;
 int return_ACPI_STATUS (scalar_t__) ;

acpi_status
acpi_ev_walk_gpe_list(acpi_gpe_callback gpe_walk_callback, void *context)
{
 struct acpi_gpe_block_info *gpe_block;
 struct acpi_gpe_xrupt_info *gpe_xrupt_info;
 acpi_status status = AE_OK;
 acpi_cpu_flags flags;

 ACPI_FUNCTION_TRACE(ev_walk_gpe_list);

 flags = acpi_os_acquire_lock(acpi_gbl_gpe_lock);



 gpe_xrupt_info = acpi_gbl_gpe_xrupt_list_head;
 while (gpe_xrupt_info) {



  gpe_block = gpe_xrupt_info->gpe_block_list_head;
  while (gpe_block) {



   status =
       gpe_walk_callback(gpe_xrupt_info, gpe_block,
           context);
   if (ACPI_FAILURE(status)) {
    if (status == AE_CTRL_END) {
     status = AE_OK;
    }
    goto unlock_and_exit;
   }

   gpe_block = gpe_block->next;
  }

  gpe_xrupt_info = gpe_xrupt_info->next;
 }

      unlock_and_exit:
 acpi_os_release_lock(acpi_gbl_gpe_lock, flags);
 return_ACPI_STATUS(status);
}

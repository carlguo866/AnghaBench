
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state_machine; } ;
struct TYPE_5__ {int operation_status; int domain; TYPE_1__ parent; } ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef TYPE_2__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_WARNING (int ) ;
 scalar_t__ SCI_BASE_REMOTE_DEVICE_STATE_FAILED ;
 int SCI_BASE_REMOTE_DEVICE_STATE_STARTING ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 scalar_t__ sci_base_state_machine_get_state (int *) ;

__attribute__((used)) static
SCI_STATUS scif_sas_remote_device_stopped_start_handler(
   SCI_BASE_REMOTE_DEVICE_T * remote_device
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                                          remote_device;

   sci_base_state_machine_change_state(
      &fw_device->parent.state_machine, SCI_BASE_REMOTE_DEVICE_STATE_STARTING
   );


   if (sci_base_state_machine_get_state(&fw_device->parent.state_machine)
       == SCI_BASE_REMOTE_DEVICE_STATE_FAILED)
   {
      SCIF_LOG_WARNING((
         sci_base_object_get_logger(fw_device),
         SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
         "Domain:0x%x Device:0x%x Status:0x%x failed to start\n",
         fw_device->domain, fw_device, fw_device->operation_status
      ));
   }

   return fw_device->operation_status;
}

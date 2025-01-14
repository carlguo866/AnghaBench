
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* state_handlers; } ;
struct TYPE_5__ {int (* stop_complete_handler ) (TYPE_2__*,int ) ;} ;
typedef int SCI_STATUS ;
typedef int SCI_REMOTE_DEVICE_HANDLE_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_2__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 scalar_t__ sci_object_get_association (int ) ;
 int stub1 (TYPE_2__*,int ) ;

void scic_cb_remote_device_stop_complete(
   SCI_CONTROLLER_HANDLE_T controller,
   SCI_REMOTE_DEVICE_HANDLE_T remote_device,
   SCI_STATUS completion_status
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T*)
                                      sci_object_get_association(remote_device);

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG,
      "scic_cb_remote_device_stop_complete(0x%x, 0x%x, 0x%x) enter\n",
      controller, remote_device, completion_status
   ));

   fw_device->state_handlers->stop_complete_handler(
      fw_device, completion_status
   );
}

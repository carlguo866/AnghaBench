
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* state_handlers; } ;
struct TYPE_3__ {int (* complete_io_handler ) (int *,int *,int *) ;} ;
typedef int SCI_STATUS ;
typedef scalar_t__ SCI_REMOTE_DEVICE_HANDLE_T ;
typedef scalar_t__ SCI_IO_REQUEST_HANDLE_T ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef TYPE_2__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (scalar_t__) ;
 int stub1 (int *,int *,int *) ;

SCI_STATUS scif_controller_complete_io(
   SCI_CONTROLLER_HANDLE_T controller,
   SCI_REMOTE_DEVICE_HANDLE_T remote_device,
   SCI_IO_REQUEST_HANDLE_T io_request
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T*) controller;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_controller_complete_io(0x%x, 0x%x, 0x%x) enter\n",
      controller, remote_device, io_request
   ));

   return fw_controller->state_handlers->complete_io_handler(
             (SCI_BASE_CONTROLLER_T*) controller,
             (SCI_BASE_REMOTE_DEVICE_T*) remote_device,
             (SCI_BASE_REQUEST_T*) io_request
          );
}

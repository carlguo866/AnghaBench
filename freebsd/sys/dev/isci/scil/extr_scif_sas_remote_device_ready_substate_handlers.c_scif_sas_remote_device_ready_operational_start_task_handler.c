
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ U8 ;
struct TYPE_17__ {int domain; int core_object; } ;
struct TYPE_16__ {int io_tag_to_manage; } ;
struct TYPE_13__ {scalar_t__ attached_stp_target; scalar_t__ attached_ssp_target; } ;
struct TYPE_14__ {TYPE_1__ bits; } ;
struct TYPE_15__ {TYPE_2__ u; } ;
typedef TYPE_3__ SMP_DISCOVER_RESPONSE_PROTOCOLS_T ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef TYPE_4__ SCIF_SAS_TASK_REQUEST_T ;
typedef int SCIF_SAS_REQUEST_T ;
typedef TYPE_5__ SCIF_SAS_REMOTE_DEVICE_T ;


 int ASSERT (int) ;
 int SCIF_LOG_ERROR (int ) ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_OBJECT_TASK_MANAGEMENT ;
 scalar_t__ SCI_FAILURE ;
 scalar_t__ SCI_FAILURE_INVALID_IO_TAG ;
 scalar_t__ SCI_FAILURE_UNSUPPORTED_PROTOCOL ;
 scalar_t__ SCI_SAS_ABORT_TASK ;
 scalar_t__ SCI_SAS_ABORT_TASK_SET ;
 scalar_t__ SCI_SAS_CLEAR_ACA ;
 scalar_t__ SCI_SAS_CLEAR_TASK_SET ;
 scalar_t__ SCI_SAS_HARD_RESET ;
 scalar_t__ SCI_SAS_I_T_NEXUS_RESET ;
 scalar_t__ SCI_SAS_LOGICAL_UNIT_RESET ;
 scalar_t__ SCI_SAS_QUERY_ASYNCHRONOUS_EVENT ;
 scalar_t__ SCI_SAS_QUERY_TASK ;
 scalar_t__ SCI_SAS_QUERY_TASK_SET ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_5__*) ;
 int scic_remote_device_get_protocols (int ,TYPE_3__*) ;
 int * scif_sas_domain_get_request_by_io_tag (int ,int ) ;
 int scif_sas_domain_terminate_requests (int ,TYPE_5__*,int *,TYPE_4__*) ;
 scalar_t__ scif_sas_remote_device_start_task_request (TYPE_5__*,TYPE_4__*) ;
 scalar_t__ scif_sas_task_request_get_function (TYPE_4__*) ;

__attribute__((used)) static
SCI_STATUS scif_sas_remote_device_ready_operational_start_task_handler(
   SCI_BASE_REMOTE_DEVICE_T * remote_device,
   SCI_BASE_REQUEST_T * task_request
)
{
   SCI_STATUS status = SCI_FAILURE;
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T*)
                                           remote_device;
   SCIF_SAS_TASK_REQUEST_T * fw_task = (SCIF_SAS_TASK_REQUEST_T*)
                                           task_request;
   U8 task_function =
         scif_sas_task_request_get_function(fw_task);

   SMP_DISCOVER_RESPONSE_PROTOCOLS_T dev_protocols;

   scic_remote_device_get_protocols(fw_device->core_object, &dev_protocols);
   if ( dev_protocols.u.bits.attached_ssp_target
       || dev_protocols.u.bits.attached_stp_target)
   {


      if ( (task_function == SCI_SAS_ABORT_TASK_SET)
         || (task_function == SCI_SAS_CLEAR_TASK_SET)
         || (task_function == SCI_SAS_LOGICAL_UNIT_RESET)
         || (task_function == SCI_SAS_I_T_NEXUS_RESET)
         || (task_function == SCI_SAS_HARD_RESET) )
      {

         scif_sas_domain_terminate_requests(
            fw_device->domain, fw_device, ((void*)0), fw_task
         );

         status = scif_sas_remote_device_start_task_request(fw_device, fw_task);
      }
      else if ( (task_function == SCI_SAS_CLEAR_ACA)
              || (task_function == SCI_SAS_QUERY_TASK)
              || (task_function == SCI_SAS_QUERY_TASK_SET)
              || (task_function == SCI_SAS_QUERY_ASYNCHRONOUS_EVENT) )
      {
       ASSERT(!dev_protocols.u.bits.attached_stp_target);
         status = scif_sas_remote_device_start_task_request(fw_device, fw_task);
      }
      else if (task_function == SCI_SAS_ABORT_TASK)
      {
         SCIF_SAS_REQUEST_T * fw_request
            = scif_sas_domain_get_request_by_io_tag(
                 fw_device->domain, fw_task->io_tag_to_manage
              );


         if (fw_request != ((void*)0))
         {
            scif_sas_domain_terminate_requests(
               fw_device->domain, fw_device, fw_request, fw_task
            );

            status = scif_sas_remote_device_start_task_request(
                        fw_device, fw_task
                     );
         }
         else
            status = SCI_FAILURE_INVALID_IO_TAG;
      }
   }
   else
      status = SCI_FAILURE_UNSUPPORTED_PROTOCOL;

   if (status != SCI_SUCCESS)
   {
      SCIF_LOG_ERROR((
         sci_base_object_get_logger(fw_device),
         SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_TASK_MANAGEMENT,
         "Controller:0x%x TaskRequest:0x%x Status:0x%x start task failure\n",
         fw_device, fw_task, status
      ));
   }

   return status;
}

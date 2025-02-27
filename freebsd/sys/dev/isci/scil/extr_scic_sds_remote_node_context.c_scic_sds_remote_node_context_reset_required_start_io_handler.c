
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SCIC_SDS_REQUEST {int dummy; } ;
struct SCIC_SDS_REMOTE_NODE_CONTEXT {int state_machine; int device; } ;
typedef int SCI_STATUS ;


 int SCIC_LOG_OBJECT_SMP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_SSP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_STP_REMOTE_TARGET ;
 int SCIC_LOG_WARNING (int ) ;
 int SCI_FAILURE_REMOTE_DEVICE_RESET_REQUIRED ;
 int sci_base_object_get_logger (int ) ;
 int sci_base_state_machine_get_state (int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_remote_node_context_reset_required_start_io_handler(
   struct SCIC_SDS_REMOTE_NODE_CONTEXT * this_rnc,
   struct SCIC_SDS_REQUEST * the_request
)
{
   SCIC_LOG_WARNING((
      sci_base_object_get_logger(this_rnc->device),
      SCIC_LOG_OBJECT_SSP_REMOTE_TARGET |
         SCIC_LOG_OBJECT_SMP_REMOTE_TARGET |
         SCIC_LOG_OBJECT_STP_REMOTE_TARGET,
      "SCIC Remote Node Context 0x%x requested to start io 0x%x while in wrong state %d\n",
      this_rnc, the_request, sci_base_state_machine_get_state(&this_rnc->state_machine)
         ));

   return SCI_FAILURE_REMOTE_DEVICE_RESET_REQUIRED;
}

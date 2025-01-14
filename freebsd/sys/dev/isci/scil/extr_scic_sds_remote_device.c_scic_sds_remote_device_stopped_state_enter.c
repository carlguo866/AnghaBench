
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ previous_state_id; } ;
struct TYPE_9__ {TYPE_1__ state_machine; } ;
struct TYPE_10__ {TYPE_2__ parent; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_3__ SCIC_SDS_REMOTE_DEVICE_T ;


 int SCI_BASE_REMOTE_DEVICE_STATE_STOPPED ;
 scalar_t__ SCI_BASE_REMOTE_DEVICE_STATE_STOPPING ;
 int SCI_SUCCESS ;
 int SET_STATE_HANDLER (TYPE_3__*,int ,int ) ;
 int scic_cb_remote_device_stop_complete (int ,TYPE_3__*,int ) ;
 int scic_sds_controller_remote_device_stopped (int ,TYPE_3__*) ;
 int scic_sds_remote_device_get_controller (TYPE_3__*) ;
 int scic_sds_remote_device_state_handler_table ;

__attribute__((used)) static
void scic_sds_remote_device_stopped_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_REMOTE_DEVICE_T *this_device = (SCIC_SDS_REMOTE_DEVICE_T *)object;

   SET_STATE_HANDLER(
      this_device,
      scic_sds_remote_device_state_handler_table,
      SCI_BASE_REMOTE_DEVICE_STATE_STOPPED
   );



   if (this_device->parent.state_machine.previous_state_id
       == SCI_BASE_REMOTE_DEVICE_STATE_STOPPING)
   {
      scic_cb_remote_device_stop_complete(
         scic_sds_remote_device_get_controller(this_device),
         this_device,
         SCI_SUCCESS
      );
   }

   scic_sds_controller_remote_device_stopped(
      scic_sds_remote_device_get_controller(this_device),
      this_device
   );
}

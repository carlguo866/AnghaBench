
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ mode_type; } ;
struct TYPE_14__ {TYPE_1__ controller; } ;
struct TYPE_15__ {TYPE_2__ sds1; } ;
struct TYPE_17__ {scalar_t__ phy_startup_timer_pending; size_t next_phy_to_start; TYPE_4__* phy_table; TYPE_3__ oem_parameters; } ;
struct TYPE_16__ {int phy_index; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_4__ SCIC_SDS_PHY_T ;
typedef TYPE_5__ SCIC_SDS_CONTROLLER_T ;


 scalar_t__ FALSE ;
 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_OBJECT_PHY ;
 int SCIC_LOG_WARNING (int ) ;
 scalar_t__ SCIC_PORT_MANUAL_CONFIGURATION_MODE ;
 scalar_t__ SCI_INVALID_HANDLE ;
 size_t SCI_MAX_PHYS ;
 scalar_t__ SCI_SUCCESS ;
 scalar_t__ TRUE ;
 int sci_base_object_get_logger (TYPE_5__*) ;
 scalar_t__ scic_phy_start (TYPE_4__*) ;
 scalar_t__ scic_sds_controller_is_start_complete (TYPE_5__*) ;
 int scic_sds_controller_phy_timer_start (TYPE_5__*) ;
 int scic_sds_controller_transition_to_ready (TYPE_5__*,scalar_t__) ;
 scalar_t__ scic_sds_phy_get_port (TYPE_4__*) ;

SCI_STATUS scic_sds_controller_start_next_phy(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   SCI_STATUS status;

   status = SCI_SUCCESS;

   if (this_controller->phy_startup_timer_pending == FALSE)
   {
      if (this_controller->next_phy_to_start == SCI_MAX_PHYS)
      {


         if (scic_sds_controller_is_start_complete(this_controller) == TRUE)
         {
            scic_sds_controller_transition_to_ready(
               this_controller, SCI_SUCCESS
            );
         }
      }
      else
      {
         SCIC_SDS_PHY_T * the_phy;

         the_phy = &this_controller->phy_table[this_controller->next_phy_to_start];

         if (
               this_controller->oem_parameters.sds1.controller.mode_type
            == SCIC_PORT_MANUAL_CONFIGURATION_MODE
            )
         {
            if (scic_sds_phy_get_port(the_phy) == SCI_INVALID_HANDLE)
            {
               this_controller->next_phy_to_start++;






               return scic_sds_controller_start_next_phy(this_controller);
            }
         }

         status = scic_phy_start(the_phy);

         if (status == SCI_SUCCESS)
         {
            scic_sds_controller_phy_timer_start(this_controller);
         }
         else
         {
            SCIC_LOG_WARNING((
               sci_base_object_get_logger(this_controller),
               SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_PHY,
               "Controller stop operation failed to stop phy %d because of status %d.\n",
               this_controller->phy_table[this_controller->next_phy_to_start].phy_index,
               status
            ));
         }

         this_controller->next_phy_to_start++;
      }
   }

   return status;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef enum SCIC_PORT_CONFIGURATION_MODE { ____Placeholder_SCIC_PORT_CONFIGURATION_MODE } SCIC_PORT_CONFIGURATION_MODE ;
struct TYPE_15__ {int mode_type; } ;
struct TYPE_16__ {TYPE_1__ controller; } ;
struct TYPE_17__ {TYPE_2__ sds1; } ;
struct TYPE_19__ {TYPE_3__ oem_parameters; } ;
struct TYPE_18__ {int * timer; int link_down_handler; int link_up_handler; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_4__ SCIC_SDS_PORT_CONFIGURATION_AGENT_T ;
typedef TYPE_5__ SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_ERROR (int ) ;
 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_TRACE (int ) ;
 int SCIC_PORT_MANUAL_CONFIGURATION_MODE ;
 scalar_t__ SCI_FAILURE ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_5__*) ;
 void* scic_cb_timer_create (TYPE_5__*,int ,TYPE_5__*) ;
 int scic_sds_apc_agent_link_down ;
 int scic_sds_apc_agent_link_up ;
 int scic_sds_apc_agent_timeout_handler ;
 scalar_t__ scic_sds_apc_agent_validate_phy_configuration (TYPE_5__*,TYPE_4__*) ;
 int scic_sds_mpc_agent_link_down ;
 int scic_sds_mpc_agent_link_up ;
 int scic_sds_mpc_agent_timeout_handler ;
 scalar_t__ scic_sds_mpc_agent_validate_phy_configuration (TYPE_5__*,TYPE_4__*) ;

SCI_STATUS scic_sds_port_configuration_agent_initialize(
   SCIC_SDS_CONTROLLER_T * controller,
   SCIC_SDS_PORT_CONFIGURATION_AGENT_T * port_agent
)
{
   SCI_STATUS status = SCI_SUCCESS;
   enum SCIC_PORT_CONFIGURATION_MODE mode;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_PORT,
      "scic_sds_port_configuration_agent_initialize(0x%08x, 0x%08x) enter\n",
      controller, port_agent
   ));

   mode = controller->oem_parameters.sds1.controller.mode_type;

   if (mode == SCIC_PORT_MANUAL_CONFIGURATION_MODE)
   {
      status = scic_sds_mpc_agent_validate_phy_configuration(controller, port_agent);

      port_agent->link_up_handler = scic_sds_mpc_agent_link_up;
      port_agent->link_down_handler = scic_sds_mpc_agent_link_down;

      port_agent->timer = scic_cb_timer_create(
                              controller,
                              scic_sds_mpc_agent_timeout_handler,
                              controller
                          );
   }
   else
   {
      status = scic_sds_apc_agent_validate_phy_configuration(controller, port_agent);

      port_agent->link_up_handler = scic_sds_apc_agent_link_up;
      port_agent->link_down_handler = scic_sds_apc_agent_link_down;

      port_agent->timer = scic_cb_timer_create(
                              controller,
                              scic_sds_apc_agent_timeout_handler,
                              controller
                          );
   }


   if (status == SCI_SUCCESS && port_agent->timer == ((void*)0))
   {
      SCIC_LOG_ERROR((
         sci_base_object_get_logger(controller),
         SCIC_LOG_OBJECT_CONTROLLER,
         "Controller 0x%x automatic port configuration agent could not get timer.\n",
         controller
     ));

     status = SCI_FAILURE;
   }

   return status;
}

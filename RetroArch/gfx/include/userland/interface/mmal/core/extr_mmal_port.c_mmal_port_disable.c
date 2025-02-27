
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {TYPE_3__* connected_port; } ;
struct TYPE_15__ {scalar_t__ type; int name; int is_enabled; TYPE_2__* priv; scalar_t__ index; TYPE_1__* component; } ;
struct TYPE_14__ {TYPE_4__* core; int pf_disable; } ;
struct TYPE_13__ {int name; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef TYPE_4__ MMAL_PORT_PRIVATE_CORE_T ;


 int LOCK_CONNECTION (TYPE_3__*) ;
 int LOG_ERROR (char*,int ,TYPE_3__*,...) ;
 int LOG_TRACE (char*,int ,int,int,TYPE_3__*) ;
 scalar_t__ MMAL_EINVAL ;
 scalar_t__ MMAL_ENOSYS ;
 scalar_t__ MMAL_PORT_TYPE_INPUT ;
 scalar_t__ MMAL_SUCCESS ;
 int UNLOCK_CONNECTION (TYPE_3__*) ;
 scalar_t__ mmal_port_connection_disable (TYPE_3__*,TYPE_3__*) ;
 scalar_t__ mmal_port_disable_internal (TYPE_3__*) ;
 int mmal_status_to_string (scalar_t__) ;

MMAL_STATUS_T mmal_port_disable(MMAL_PORT_T *port)
{
   MMAL_STATUS_T status;
   MMAL_PORT_T *connected_port;
   MMAL_PORT_PRIVATE_CORE_T *core;

   if (!port || !port->priv)
      return MMAL_EINVAL;

   LOG_TRACE("%s(%i:%i) port %p", port->component->name,
             (int)port->type, (int)port->index, port);

   if (!port->priv->pf_disable)
      return MMAL_ENOSYS;

   core = port->priv->core;
   LOCK_CONNECTION(port);
   connected_port = core->connected_port;


   if (!port->is_enabled)
   {
      UNLOCK_CONNECTION(port);
      LOG_ERROR("port %s(%p) is not enabled", port->name, port);
      return MMAL_EINVAL;
   }

   if (connected_port)
      LOCK_CONNECTION(connected_port);


   if (connected_port && connected_port->type != MMAL_PORT_TYPE_INPUT)
   {
      status = mmal_port_disable_internal(connected_port);
      if (status != MMAL_SUCCESS)
      {
         LOG_ERROR("failed to disable connected port (%s)%p (%s)", connected_port->name,
            connected_port, mmal_status_to_string(status));
         goto end;
      }
   }

   status = mmal_port_disable_internal(port);
   if (status != MMAL_SUCCESS)
   {
      LOG_ERROR("failed to disable port (%s)%p", port->name, port);
      goto end;
   }


   if (connected_port && connected_port->type == MMAL_PORT_TYPE_INPUT)
   {
      status = mmal_port_disable_internal(connected_port);
      if (status != MMAL_SUCCESS)
      {
         LOG_ERROR("failed to disable connected port (%s)%p (%s)", connected_port->name,
            connected_port, mmal_status_to_string(status));
         goto end;
      }
   }

   if (connected_port)
   {
      status = mmal_port_connection_disable(port, connected_port);
      if (status != MMAL_SUCCESS)
         LOG_ERROR("failed to disable connection (%s)%p (%s)", port->name,
            port, mmal_status_to_string(status));
   }

end:
   if (connected_port)
      UNLOCK_CONNECTION(connected_port);
   UNLOCK_CONNECTION(port);

   return status;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_21__ {scalar_t__ (* pf_format_commit ) (TYPE_5__*,TYPE_3__*) ;} ;
struct TYPE_20__ {unsigned int output_num; TYPE_5__ graph; } ;
struct TYPE_19__ {scalar_t__ type; TYPE_2__* component; int name; int buffer_size; int buffer_num; int format; } ;
struct TYPE_18__ {TYPE_3__** output; TYPE_1__* priv; } ;
struct TYPE_17__ {TYPE_4__* module; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef TYPE_4__ MMAL_GRAPH_PRIVATE_T ;


 int LOG_ERROR (char*,int ,TYPE_3__*) ;
 scalar_t__ MMAL_EINVAL ;
 scalar_t__ MMAL_ENOSYS ;
 int MMAL_FALSE ;
 scalar_t__ MMAL_PORT_TYPE_INPUT ;
 scalar_t__ MMAL_SUCCESS ;
 TYPE_3__* find_port_from_graph (TYPE_4__*,TYPE_3__*) ;
 scalar_t__ graph_port_format_commit_propagate (TYPE_4__*,TYPE_3__*) ;
 scalar_t__ graph_port_update (TYPE_4__*,TYPE_3__*,int ) ;
 scalar_t__ mmal_format_full_copy (int ,int ) ;
 scalar_t__ mmal_port_format_commit (TYPE_3__*) ;
 scalar_t__ stub1 (TYPE_5__*,TYPE_3__*) ;

__attribute__((used)) static MMAL_STATUS_T graph_port_format_commit(MMAL_PORT_T *graph_port)
{
   MMAL_GRAPH_PRIVATE_T *graph_private = graph_port->component->priv->module;
   MMAL_STATUS_T status;
   MMAL_PORT_T *port;
   unsigned int i;


   if (graph_private->graph.pf_format_commit)
   {
      status = graph_private->graph.pf_format_commit(&graph_private->graph, graph_port);
      if (status == MMAL_SUCCESS)
         goto end;
      if (status != MMAL_ENOSYS)
         return status;
   }

   port = find_port_from_graph(graph_private, graph_port);
   if (!port)
      return MMAL_EINVAL;


   status = mmal_format_full_copy(port->format, graph_port->format);
   if (status != MMAL_SUCCESS)
      return status;
   port->buffer_num = graph_port->buffer_num;
   port->buffer_size = graph_port->buffer_size;


   status = mmal_port_format_commit(port);
   if (status != MMAL_SUCCESS)
      return status;


   status = graph_port_format_commit_propagate(graph_private, port);
   if (status != MMAL_SUCCESS)
   {
      LOG_ERROR("couldn't propagate format commit of port %s(%p)", port->name, port);
      return status;
   }

 end:

   status = graph_port_update(graph_private, graph_port, MMAL_FALSE);
   if (status != MMAL_SUCCESS)
      return status;


   if (graph_port->type == MMAL_PORT_TYPE_INPUT)
   {
      for (i = 0; i < graph_private->output_num; i++)
      {
         status = graph_port_update(graph_private, graph_port->component->output[i], MMAL_FALSE);
         if (status != MMAL_SUCCESS)
            return status;
      }
   }

   return MMAL_SUCCESS;
}

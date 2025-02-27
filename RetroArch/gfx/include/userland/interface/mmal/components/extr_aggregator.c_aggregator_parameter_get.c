
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;
typedef int MMAL_PARAMETER_HEADER_T ;
typedef int MMAL_GRAPH_T ;


 int LOG_TRACE (char*,int *,int *,int *) ;
 int MMAL_ENOSYS ;
 int MMAL_PARAM_UNUSED (int *) ;

__attribute__((used)) static MMAL_STATUS_T aggregator_parameter_get(MMAL_GRAPH_T *graph,
      MMAL_PORT_T *port, MMAL_PARAMETER_HEADER_T *param)
{
   MMAL_PARAM_UNUSED(graph);
   MMAL_PARAM_UNUSED(port);
   MMAL_PARAM_UNUSED(param);
   LOG_TRACE("graph %p, port %p, param %p", graph, port, param);
   return MMAL_ENOSYS;
}

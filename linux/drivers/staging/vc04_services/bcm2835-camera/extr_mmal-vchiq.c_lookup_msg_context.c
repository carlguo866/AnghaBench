
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_mmal_instance {int context_map; } ;
struct mmal_msg_context {int dummy; } ;


 struct mmal_msg_context* idr_find (int *,int) ;

__attribute__((used)) static struct mmal_msg_context *
lookup_msg_context(struct vchiq_mmal_instance *instance, int handle)
{
 return idr_find(&instance->context_map, handle);
}

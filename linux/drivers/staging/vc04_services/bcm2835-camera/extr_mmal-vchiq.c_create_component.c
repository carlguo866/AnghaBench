
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct vchiq_mmal_instance {int dummy; } ;
struct vchiq_mmal_component {int clocks; int outputs; int inputs; int handle; } ;
struct vchi_held_msg {int dummy; } ;
struct TYPE_7__ {int status; int clock_num; int output_num; int input_num; int component_handle; } ;
struct TYPE_5__ {int name; scalar_t__ client_component; } ;
struct TYPE_8__ {TYPE_3__ component_create_reply; TYPE_1__ component_create; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct mmal_msg {TYPE_4__ u; TYPE_2__ h; } ;


 int EINVAL ;
 int MMAL_MSG_STATUS_SUCCESS ;
 scalar_t__ MMAL_MSG_TYPE_COMPONENT_CREATE ;
 int pr_debug (char*,int ,int ,int ,int ) ;
 int send_synchronous_mmal_msg (struct vchiq_mmal_instance*,struct mmal_msg*,int,struct mmal_msg**,struct vchi_held_msg*) ;
 int strncpy (int ,char const*,int) ;
 int vchi_held_msg_release (struct vchi_held_msg*) ;

__attribute__((used)) static int create_component(struct vchiq_mmal_instance *instance,
       struct vchiq_mmal_component *component,
       const char *name)
{
 int ret;
 struct mmal_msg m;
 struct mmal_msg *rmsg;
 struct vchi_held_msg rmsg_handle;


 m.h.type = MMAL_MSG_TYPE_COMPONENT_CREATE;
 m.u.component_create.client_component = (u32)(unsigned long)component;
 strncpy(m.u.component_create.name, name,
  sizeof(m.u.component_create.name));

 ret = send_synchronous_mmal_msg(instance, &m,
     sizeof(m.u.component_create),
     &rmsg, &rmsg_handle);
 if (ret)
  return ret;

 if (rmsg->h.type != m.h.type) {

  ret = -EINVAL;
  goto release_msg;
 }

 ret = -rmsg->u.component_create_reply.status;
 if (ret != MMAL_MSG_STATUS_SUCCESS)
  goto release_msg;


 component->handle = rmsg->u.component_create_reply.component_handle;
 component->inputs = rmsg->u.component_create_reply.input_num;
 component->outputs = rmsg->u.component_create_reply.output_num;
 component->clocks = rmsg->u.component_create_reply.clock_num;

 pr_debug("Component handle:0x%x in:%d out:%d clock:%d\n",
   component->handle,
   component->inputs, component->outputs, component->clocks);

release_msg:
 vchi_held_msg_release(&rmsg_handle);

 return ret;
}

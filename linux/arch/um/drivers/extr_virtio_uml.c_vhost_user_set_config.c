
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct virtio_uml_device {int protocol_features; } ;
struct TYPE_5__ {int offset; int size; int payload; } ;
struct TYPE_6__ {TYPE_2__ config; } ;
struct TYPE_4__ {size_t size; int request; } ;
struct vhost_user_msg {TYPE_3__ payload; TYPE_1__ header; } ;


 int BIT_ULL (int ) ;
 int GFP_KERNEL ;
 int VHOST_USER_PROTOCOL_F_CONFIG ;
 int VHOST_USER_SET_CONFIG ;
 int kfree (struct vhost_user_msg*) ;
 struct vhost_user_msg* kzalloc (size_t,int ) ;
 int memcpy (int ,void const*,int) ;
 int vhost_user_send (struct virtio_uml_device*,int,struct vhost_user_msg*,int *,int ) ;
 int vu_err (struct virtio_uml_device*,char*,int) ;

__attribute__((used)) static void vhost_user_set_config(struct virtio_uml_device *vu_dev,
      u32 offset, const void *buf, u32 len)
{
 struct vhost_user_msg *msg;
 size_t payload_size = sizeof(msg->payload.config) + len;
 size_t msg_size = sizeof(msg->header) + payload_size;
 int rc;

 if (!(vu_dev->protocol_features &
       BIT_ULL(VHOST_USER_PROTOCOL_F_CONFIG)))
  return;

 msg = kzalloc(msg_size, GFP_KERNEL);
 if (!msg)
  return;
 msg->header.request = VHOST_USER_SET_CONFIG;
 msg->header.size = payload_size;
 msg->payload.config.offset = offset;
 msg->payload.config.size = len;
 memcpy(msg->payload.config.payload, buf, len);

 rc = vhost_user_send(vu_dev, 0, msg, ((void*)0), 0);
 if (rc)
  vu_err(vu_dev, "sending VHOST_USER_SET_CONFIG failed: %d\n",
         rc);

 kfree(msg);
}

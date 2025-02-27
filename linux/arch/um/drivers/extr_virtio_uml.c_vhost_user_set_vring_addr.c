
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct virtio_uml_device {int dummy; } ;
struct TYPE_5__ {int log; int avail; int used; int desc; int index; } ;
struct TYPE_6__ {TYPE_2__ vring_addr; } ;
struct TYPE_4__ {int size; int request; } ;
struct vhost_user_msg {TYPE_3__ payload; TYPE_1__ header; } ;


 int VHOST_USER_SET_VRING_ADDR ;
 int vhost_user_send (struct virtio_uml_device*,int,struct vhost_user_msg*,int *,int ) ;

__attribute__((used)) static int vhost_user_set_vring_addr(struct virtio_uml_device *vu_dev,
         u32 index, u64 desc, u64 used, u64 avail,
         u64 log)
{
 struct vhost_user_msg msg = {
  .header.request = VHOST_USER_SET_VRING_ADDR,
  .header.size = sizeof(msg.payload.vring_addr),
  .payload.vring_addr.index = index,
  .payload.vring_addr.desc = desc,
  .payload.vring_addr.used = used,
  .payload.vring_addr.avail = avail,
  .payload.vring_addr.log = log,
 };

 return vhost_user_send(vu_dev, 0, &msg, ((void*)0), 0);
}

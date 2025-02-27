
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vring_desc {int dummy; } ;
struct vring {unsigned int num; struct vring_desc* desc; TYPE_1__* avail; } ;
struct virtio_device {int dummy; } ;
struct mlxbf_tmfifo_vring {unsigned int next_avail; TYPE_2__* vq; } ;
struct TYPE_4__ {struct virtio_device* vdev; } ;
struct TYPE_3__ {int * ring; int idx; } ;


 scalar_t__ WARN_ON (int) ;
 unsigned int virtio16_to_cpu (struct virtio_device*,int ) ;
 struct vring* virtqueue_get_vring (TYPE_2__*) ;

__attribute__((used)) static struct vring_desc *
mlxbf_tmfifo_get_next_desc(struct mlxbf_tmfifo_vring *vring)
{
 const struct vring *vr = virtqueue_get_vring(vring->vq);
 struct virtio_device *vdev = vring->vq->vdev;
 unsigned int idx, head;

 if (vring->next_avail == virtio16_to_cpu(vdev, vr->avail->idx))
  return ((void*)0);

 idx = vring->next_avail % vr->num;
 head = virtio16_to_cpu(vdev, vr->avail->ring[idx]);
 if (WARN_ON(head >= vr->num))
  return ((void*)0);

 vring->next_avail++;

 return &vr->desc[head];
}

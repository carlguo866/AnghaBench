
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int uint16_t ;
struct vq_desc_extra {int dummy; } ;
struct vq_alloc_info {int vqai_maxindirsz; int vqai_intr_arg; int vqai_intr; int vqai_name; } ;
struct virtqueue {int vq_queue_index; int vq_alignment; int vq_nentries; int vq_free_cnt; int * vq_ring_mem; int vq_ring_size; int vq_flags; int vq_intrhand_arg; int vq_intrhand; int vq_name; int vq_dev; } ;
typedef int device_t ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PAGE_SIZE ;
 scalar_t__ VIRTIO_BUS_WITH_FEATURE (int ,int ) ;
 int VIRTIO_MAX_INDIRECT ;
 int VIRTIO_RING_F_EVENT_IDX ;
 int VIRTQUEUE_FLAG_EVENT_IDX ;
 int * contigmalloc (int ,int ,int,int ,int ,int ,int ) ;
 int device_printf (int ,char*,...) ;
 struct virtqueue* malloc (int,int ,int) ;
 int powerof2 (int) ;
 int round_page (int ) ;
 int strlcpy (int ,int ,int) ;
 int virtqueue_disable_intr (struct virtqueue*) ;
 int virtqueue_free (struct virtqueue*) ;
 int virtqueue_init_indirect (struct virtqueue*,int) ;
 int vq_ring_init (struct virtqueue*) ;
 int vring_size (int,int) ;

int
virtqueue_alloc(device_t dev, uint16_t queue, uint16_t size, int align,
    vm_paddr_t highaddr, struct vq_alloc_info *info, struct virtqueue **vqp)
{
 struct virtqueue *vq;
 int error;

 *vqp = ((void*)0);
 error = 0;

 if (size == 0) {
  device_printf(dev,
      "virtqueue %d (%s) does not exist (size is zero)\n",
      queue, info->vqai_name);
  return (ENODEV);
 } else if (!powerof2(size)) {
  device_printf(dev,
      "virtqueue %d (%s) size is not a power of 2: %d\n",
      queue, info->vqai_name, size);
  return (ENXIO);
 } else if (info->vqai_maxindirsz > VIRTIO_MAX_INDIRECT) {
  device_printf(dev, "virtqueue %d (%s) requested too many "
      "indirect descriptors: %d, max %d\n",
      queue, info->vqai_name, info->vqai_maxindirsz,
      VIRTIO_MAX_INDIRECT);
  return (EINVAL);
 }

 vq = malloc(sizeof(struct virtqueue) +
     size * sizeof(struct vq_desc_extra), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (vq == ((void*)0)) {
  device_printf(dev, "cannot allocate virtqueue\n");
  return (ENOMEM);
 }

 vq->vq_dev = dev;
 strlcpy(vq->vq_name, info->vqai_name, sizeof(vq->vq_name));
 vq->vq_queue_index = queue;
 vq->vq_alignment = align;
 vq->vq_nentries = size;
 vq->vq_free_cnt = size;
 vq->vq_intrhand = info->vqai_intr;
 vq->vq_intrhand_arg = info->vqai_intr_arg;

 if (VIRTIO_BUS_WITH_FEATURE(dev, VIRTIO_RING_F_EVENT_IDX) != 0)
  vq->vq_flags |= VIRTQUEUE_FLAG_EVENT_IDX;

 if (info->vqai_maxindirsz > 1) {
  error = virtqueue_init_indirect(vq, info->vqai_maxindirsz);
  if (error)
   goto fail;
 }

 vq->vq_ring_size = round_page(vring_size(size, align));
 vq->vq_ring_mem = contigmalloc(vq->vq_ring_size, M_DEVBUF,
     M_NOWAIT | M_ZERO, 0, highaddr, PAGE_SIZE, 0);
 if (vq->vq_ring_mem == ((void*)0)) {
  device_printf(dev,
      "cannot allocate memory for virtqueue ring\n");
  error = ENOMEM;
  goto fail;
 }

 vq_ring_init(vq);
 virtqueue_disable_intr(vq);

 *vqp = vq;

fail:
 if (error)
  virtqueue_free(vq);

 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_rdma_qe {int dummy; } ;
struct ib_device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int GFP_KERNEL ;
 struct nvme_rdma_qe* kcalloc (size_t,int,int ) ;
 scalar_t__ nvme_rdma_alloc_qe (struct ib_device*,struct nvme_rdma_qe*,size_t,int) ;
 int nvme_rdma_free_ring (struct ib_device*,struct nvme_rdma_qe*,int,size_t,int) ;

__attribute__((used)) static struct nvme_rdma_qe *nvme_rdma_alloc_ring(struct ib_device *ibdev,
  size_t ib_queue_size, size_t capsule_size,
  enum dma_data_direction dir)
{
 struct nvme_rdma_qe *ring;
 int i;

 ring = kcalloc(ib_queue_size, sizeof(struct nvme_rdma_qe), GFP_KERNEL);
 if (!ring)
  return ((void*)0);






 for (i = 0; i < ib_queue_size; i++) {
  if (nvme_rdma_alloc_qe(ibdev, &ring[i], capsule_size, dir))
   goto out_free_ring;
 }

 return ring;

out_free_ring:
 nvme_rdma_free_ring(ibdev, ring, i, capsule_size, dir);
 return ((void*)0);
}

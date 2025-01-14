
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_rdma_rsp {int free_list; } ;
struct nvmet_rdma_queue {int recv_queue_size; struct nvmet_rdma_rsp* rsps; int free_rsps; struct nvmet_rdma_device* dev; } ;
struct nvmet_rdma_device {int dummy; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 struct nvmet_rdma_rsp* kcalloc (int,int,int ) ;
 int kfree (struct nvmet_rdma_rsp*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int nvmet_rdma_alloc_rsp (struct nvmet_rdma_device*,struct nvmet_rdma_rsp*) ;
 int nvmet_rdma_free_rsp (struct nvmet_rdma_device*,struct nvmet_rdma_rsp*) ;

__attribute__((used)) static int
nvmet_rdma_alloc_rsps(struct nvmet_rdma_queue *queue)
{
 struct nvmet_rdma_device *ndev = queue->dev;
 int nr_rsps = queue->recv_queue_size * 2;
 int ret = -EINVAL, i;

 queue->rsps = kcalloc(nr_rsps, sizeof(struct nvmet_rdma_rsp),
   GFP_KERNEL);
 if (!queue->rsps)
  goto out;

 for (i = 0; i < nr_rsps; i++) {
  struct nvmet_rdma_rsp *rsp = &queue->rsps[i];

  ret = nvmet_rdma_alloc_rsp(ndev, rsp);
  if (ret)
   goto out_free;

  list_add_tail(&rsp->free_list, &queue->free_rsps);
 }

 return 0;

out_free:
 while (--i >= 0) {
  struct nvmet_rdma_rsp *rsp = &queue->rsps[i];

  list_del(&rsp->free_list);
  nvmet_rdma_free_rsp(ndev, rsp);
 }
 kfree(queue->rsps);
out:
 return ret;
}

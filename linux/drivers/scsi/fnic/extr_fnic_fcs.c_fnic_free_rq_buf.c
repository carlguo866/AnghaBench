
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_rq_buf {struct fc_frame* os_buf; int len; int dma_addr; } ;
struct vnic_rq {int vdev; } ;
struct fnic {TYPE_1__* pdev; } ;
struct fc_frame {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int dev_kfree_skb (int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int fp_skb (struct fc_frame*) ;
 struct fnic* vnic_dev_priv (int ) ;

void fnic_free_rq_buf(struct vnic_rq *rq, struct vnic_rq_buf *buf)
{
 struct fc_frame *fp = buf->os_buf;
 struct fnic *fnic = vnic_dev_priv(rq->vdev);

 dma_unmap_single(&fnic->pdev->dev, buf->dma_addr, buf->len,
    DMA_FROM_DEVICE);

 dev_kfree_skb(fp_skb(fp));
 buf->os_buf = ((void*)0);
}

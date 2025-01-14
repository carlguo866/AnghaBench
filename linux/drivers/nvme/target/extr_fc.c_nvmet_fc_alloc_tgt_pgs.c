
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct TYPE_4__ {int transfer_len; } ;
struct nvmet_fc_fcp_iod {unsigned int data_sg_cnt; scalar_t__ io_dir; struct scatterlist* data_sg; struct scatterlist* next_sg; TYPE_1__* tgtport; TYPE_2__ req; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int GFP_KERNEL ;
 scalar_t__ NVMET_FCP_WRITE ;
 int NVME_SC_INTERNAL ;
 unsigned int fc_dma_map_sg (int ,struct scatterlist*,unsigned int,int ) ;
 struct scatterlist* sgl_alloc (int ,int ,unsigned int*) ;

__attribute__((used)) static int
nvmet_fc_alloc_tgt_pgs(struct nvmet_fc_fcp_iod *fod)
{
 struct scatterlist *sg;
 unsigned int nent;

 sg = sgl_alloc(fod->req.transfer_len, GFP_KERNEL, &nent);
 if (!sg)
  goto out;

 fod->data_sg = sg;
 fod->data_sg_cnt = nent;
 fod->data_sg_cnt = fc_dma_map_sg(fod->tgtport->dev, sg, nent,
    ((fod->io_dir == NVMET_FCP_WRITE) ?
     DMA_FROM_DEVICE : DMA_TO_DEVICE));

 fod->next_sg = fod->data_sg;

 return 0;

out:
 return NVME_SC_INTERNAL;
}

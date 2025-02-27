
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sprd_dma_dev {scalar_t__ glb_base; } ;
struct TYPE_2__ {int chan; } ;
struct sprd_dma_chn {scalar_t__ dev_id; TYPE_1__ vc; } ;


 scalar_t__ SPRD_DMA_GLB_REQ_UID (scalar_t__) ;
 scalar_t__ SPRD_DMA_GLB_REQ_UID_OFFSET ;
 scalar_t__ SPRD_DMA_SOFTWARE_UID ;
 struct sprd_dma_dev* to_sprd_dma_dev (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sprd_dma_unset_uid(struct sprd_dma_chn *schan)
{
 struct sprd_dma_dev *sdev = to_sprd_dma_dev(&schan->vc.chan);
 u32 dev_id = schan->dev_id;

 if (dev_id != SPRD_DMA_SOFTWARE_UID) {
  u32 uid_offset = SPRD_DMA_GLB_REQ_UID_OFFSET +
     SPRD_DMA_GLB_REQ_UID(dev_id);

  writel(0, sdev->glb_base + uid_offset);
 }
}

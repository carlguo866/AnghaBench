
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_xor_v2_device {scalar_t__ dma_base; } ;
struct msi_msg {int address_lo; int address_hi; int data; } ;
struct msi_desc {int dev; } ;


 scalar_t__ MV_XOR_V2_DMA_IMSG_BAHR_OFF ;
 scalar_t__ MV_XOR_V2_DMA_IMSG_BALR_OFF ;
 scalar_t__ MV_XOR_V2_DMA_IMSG_CDAT_OFF ;
 struct mv_xor_v2_device* dev_get_drvdata (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mv_xor_v2_set_msi_msg(struct msi_desc *desc, struct msi_msg *msg)
{
 struct mv_xor_v2_device *xor_dev = dev_get_drvdata(desc->dev);

 writel(msg->address_lo,
        xor_dev->dma_base + MV_XOR_V2_DMA_IMSG_BALR_OFF);
 writel(msg->address_hi & 0xFFFF,
        xor_dev->dma_base + MV_XOR_V2_DMA_IMSG_BAHR_OFF);
 writel(msg->data,
        xor_dev->dma_base + MV_XOR_V2_DMA_IMSG_CDAT_OFF);
}

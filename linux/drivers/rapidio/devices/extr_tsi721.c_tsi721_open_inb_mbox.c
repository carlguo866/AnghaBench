
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct tsi721_imsg_desc {int dummy; } ;
struct TYPE_5__ {scalar_t__ host_deviceid; } ;
struct tsi721_device {int flags; int* imsg_init; TYPE_3__* imsg_ring; TYPE_4__* pdev; scalar_t__ regs; TYPE_2__* msix; TYPE_1__ mport; } ;
struct rio_mport {struct tsi721_device* priv; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int size; int fq_wrptr; int* buf_base; int* imfq_base; int* imd_base; scalar_t__ buf_phys; scalar_t__ imfq_phys; scalar_t__ imd_phys; int lock; int ** imq_base; scalar_t__ desc_rdptr; scalar_t__ rx_slot; void* dev_id; } ;
struct TYPE_6__ {int vector; int irq_name; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IMSG ;
 int RIO_MAX_MBOX ;
 int TSI721_DMAC_DSSZ_SIZE (int) ;
 scalar_t__ TSI721_IBDMAC_CTL (int) ;
 int TSI721_IBDMAC_CTL_INIT ;
 scalar_t__ TSI721_IBDMAC_DQBH (int) ;
 scalar_t__ TSI721_IBDMAC_DQBL (int) ;
 scalar_t__ TSI721_IBDMAC_DQBL_MASK ;
 scalar_t__ TSI721_IBDMAC_DQSZ (int) ;
 scalar_t__ TSI721_IBDMAC_FQBH (int) ;
 scalar_t__ TSI721_IBDMAC_FQBL (int) ;
 int TSI721_IBDMAC_FQBL_MASK ;
 scalar_t__ TSI721_IBDMAC_FQSZ (int) ;
 scalar_t__ TSI721_IBDMAC_FQWP (int) ;
 int TSI721_IBDMAC_INT_ALL ;
 scalar_t__ TSI721_IB_DEVID ;
 int TSI721_IMSGD_MIN_RING_SIZE ;
 int TSI721_IMSGD_RING_SIZE ;
 int TSI721_IMSGID_SET ;
 int TSI721_MSG_BUFFER_SIZE ;
 int TSI721_USING_MSIX ;
 int TSI721_VECT_IMB0_INT ;
 int TSI721_VECT_IMB0_RCV ;
 int cpu_to_le64 (int) ;
 void* dma_alloc_coherent (int *,int,scalar_t__*,int ) ;
 int dma_free_coherent (int *,int,int*,scalar_t__) ;
 int free_irq (int ,void*) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int is_power_of_2 (int) ;
 int mb () ;
 int mbox_sel ;
 int request_irq (int ,int ,int ,int ,void*) ;
 int spin_lock_init (int *) ;
 int tsi721_imsg_interrupt_enable (struct tsi721_device*,int,int ) ;
 int tsi721_imsg_msix ;
 int tsi_debug (int ,int *,char*,int) ;
 int tsi_err (int *,char*,int) ;
 int udelay (int) ;

__attribute__((used)) static int tsi721_open_inb_mbox(struct rio_mport *mport, void *dev_id,
    int mbox, int entries)
{
 struct tsi721_device *priv = mport->priv;
 int ch = mbox + 4;
 int i;
 u64 *free_ptr;
 int rc = 0;

 if ((entries < TSI721_IMSGD_MIN_RING_SIZE) ||
     (entries > TSI721_IMSGD_RING_SIZE) ||
     (!is_power_of_2(entries)) || mbox >= RIO_MAX_MBOX) {
  rc = -EINVAL;
  goto out;
 }

 if ((mbox_sel & (1 << mbox)) == 0) {
  rc = -ENODEV;
  goto out;
 }


 priv->imsg_ring[mbox].dev_id = dev_id;
 priv->imsg_ring[mbox].size = entries;
 priv->imsg_ring[mbox].rx_slot = 0;
 priv->imsg_ring[mbox].desc_rdptr = 0;
 priv->imsg_ring[mbox].fq_wrptr = 0;
 for (i = 0; i < priv->imsg_ring[mbox].size; i++)
  priv->imsg_ring[mbox].imq_base[i] = ((void*)0);
 spin_lock_init(&priv->imsg_ring[mbox].lock);


 priv->imsg_ring[mbox].buf_base =
  dma_alloc_coherent(&priv->pdev->dev,
       entries * TSI721_MSG_BUFFER_SIZE,
       &priv->imsg_ring[mbox].buf_phys,
       GFP_KERNEL);

 if (priv->imsg_ring[mbox].buf_base == ((void*)0)) {
  tsi_err(&priv->pdev->dev,
   "Failed to allocate buffers for IB MBOX%d", mbox);
  rc = -ENOMEM;
  goto out;
 }


 priv->imsg_ring[mbox].imfq_base =
  dma_alloc_coherent(&priv->pdev->dev,
       entries * 8,
       &priv->imsg_ring[mbox].imfq_phys,
       GFP_KERNEL);

 if (priv->imsg_ring[mbox].imfq_base == ((void*)0)) {
  tsi_err(&priv->pdev->dev,
   "Failed to allocate free queue for IB MBOX%d", mbox);
  rc = -ENOMEM;
  goto out_buf;
 }


 priv->imsg_ring[mbox].imd_base =
  dma_alloc_coherent(&priv->pdev->dev,
       entries * sizeof(struct tsi721_imsg_desc),
       &priv->imsg_ring[mbox].imd_phys, GFP_KERNEL);

 if (priv->imsg_ring[mbox].imd_base == ((void*)0)) {
  tsi_err(&priv->pdev->dev,
   "Failed to allocate descriptor memory for IB MBOX%d",
   mbox);
  rc = -ENOMEM;
  goto out_dma;
 }


 free_ptr = priv->imsg_ring[mbox].imfq_base;
 for (i = 0; i < entries; i++)
  free_ptr[i] = cpu_to_le64(
    (u64)(priv->imsg_ring[mbox].buf_phys) +
    i * 0x1000);

 mb();






 if (!(priv->flags & TSI721_IMSGID_SET)) {
  iowrite32((u32)priv->mport.host_deviceid,
   priv->regs + TSI721_IB_DEVID);
  priv->flags |= TSI721_IMSGID_SET;
 }






 iowrite32(((u64)priv->imsg_ring[mbox].imfq_phys >> 32),
  priv->regs + TSI721_IBDMAC_FQBH(ch));
 iowrite32(((u64)priv->imsg_ring[mbox].imfq_phys &
   TSI721_IBDMAC_FQBL_MASK),
  priv->regs+TSI721_IBDMAC_FQBL(ch));
 iowrite32(TSI721_DMAC_DSSZ_SIZE(entries),
  priv->regs + TSI721_IBDMAC_FQSZ(ch));


 iowrite32(((u64)priv->imsg_ring[mbox].imd_phys >> 32),
  priv->regs + TSI721_IBDMAC_DQBH(ch));
 iowrite32(((u32)priv->imsg_ring[mbox].imd_phys &
     (u32)TSI721_IBDMAC_DQBL_MASK),
  priv->regs+TSI721_IBDMAC_DQBL(ch));
 iowrite32(TSI721_DMAC_DSSZ_SIZE(entries),
  priv->regs + TSI721_IBDMAC_DQSZ(ch));
 tsi721_imsg_interrupt_enable(priv, ch, TSI721_IBDMAC_INT_ALL);


 iowrite32(TSI721_IBDMAC_CTL_INIT, priv->regs + TSI721_IBDMAC_CTL(ch));
 ioread32(priv->regs + TSI721_IBDMAC_CTL(ch));
 udelay(10);
 priv->imsg_ring[mbox].fq_wrptr = entries - 1;
 iowrite32(entries - 1, priv->regs + TSI721_IBDMAC_FQWP(ch));

 priv->imsg_init[mbox] = 1;
 return 0;
out_dma:
 dma_free_coherent(&priv->pdev->dev,
  priv->imsg_ring[mbox].size * 8,
  priv->imsg_ring[mbox].imfq_base,
  priv->imsg_ring[mbox].imfq_phys);

 priv->imsg_ring[mbox].imfq_base = ((void*)0);

out_buf:
 dma_free_coherent(&priv->pdev->dev,
  priv->imsg_ring[mbox].size * TSI721_MSG_BUFFER_SIZE,
  priv->imsg_ring[mbox].buf_base,
  priv->imsg_ring[mbox].buf_phys);

 priv->imsg_ring[mbox].buf_base = ((void*)0);

out:
 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct knav_acc_info {int list_size; struct knav_pdsp_info* pdsp; } ;
struct knav_range_info {int queue_base; int flags; int num_irqs; int num_queues; TYPE_1__* irqs; struct knav_acc_channel* acc; struct knav_acc_info acc_info; struct knav_device* kdev; } ;
struct knav_queue_inst {int* descs; int notify_needed; int desc_tail; int desc_count; } ;
struct knav_pdsp_info {scalar_t__ intd; } ;
struct knav_device {int base_id; int dev; } ;
struct knav_acc_channel {int channel; size_t list_index; int** list_cpu; int retrigger_count; int * list_dma; } ;
typedef int irqreturn_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {int irq; } ;


 int ACC_CHANNEL_INT_BASE ;
 int ACC_DESCS_MASK ;
 int ACC_DESCS_MAX ;
 scalar_t__ ACC_INTD_OFFSET_COUNT (int) ;
 scalar_t__ ACC_INTD_OFFSET_EOI ;
 size_t ACC_LIST_ENTRY_DESC_IDX ;
 size_t ACC_LIST_ENTRY_QUEUE_IDX ;
 int ACC_LIST_ENTRY_WORDS ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int IRQ_HANDLED ;
 int RANGE_MULTI_QUEUE ;
 int WARN_ON (int) ;
 int __knav_acc_notify (struct knav_range_info*,struct knav_acc_channel*) ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 int dev_dbg (int ,char*,int,...) ;
 int dev_err (int ,char*,int,...) ;
 int dma_sync_single_for_cpu (int ,int ,int,int ) ;
 int dma_sync_single_for_device (int ,int ,int,int ) ;
 struct knav_queue_inst* knav_range_offset_to_inst (struct knav_device*,struct knav_range_info*,int) ;
 int memset (int*,int ,int) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t knav_acc_int_handler(int irq, void *_instdata)
{
 struct knav_acc_channel *acc;
 struct knav_queue_inst *kq = ((void*)0);
 struct knav_range_info *range;
 struct knav_pdsp_info *pdsp;
 struct knav_acc_info *info;
 struct knav_device *kdev;

 u32 *list, *list_cpu, val, idx, notifies;
 int range_base, channel, queue = 0;
 dma_addr_t list_dma;

 range = _instdata;
 info = &range->acc_info;
 kdev = range->kdev;
 pdsp = range->acc_info.pdsp;
 acc = range->acc;

 range_base = kdev->base_id + range->queue_base;
 if ((range->flags & RANGE_MULTI_QUEUE) == 0) {
  for (queue = 0; queue < range->num_irqs; queue++)
   if (range->irqs[queue].irq == irq)
    break;
  kq = knav_range_offset_to_inst(kdev, range, queue);
  acc += queue;
 }

 channel = acc->channel;
 list_dma = acc->list_dma[acc->list_index];
 list_cpu = acc->list_cpu[acc->list_index];
 dev_dbg(kdev->dev, "acc-irq: channel %d, list %d, virt %p, dma %pad\n",
  channel, acc->list_index, list_cpu, &list_dma);
 if (atomic_read(&acc->retrigger_count)) {
  atomic_dec(&acc->retrigger_count);
  __knav_acc_notify(range, acc);
  writel_relaxed(1, pdsp->intd + ACC_INTD_OFFSET_COUNT(channel));

  writel_relaxed(ACC_CHANNEL_INT_BASE + channel,
          pdsp->intd + ACC_INTD_OFFSET_EOI);

  return IRQ_HANDLED;
 }

 notifies = readl_relaxed(pdsp->intd + ACC_INTD_OFFSET_COUNT(channel));
 WARN_ON(!notifies);
 dma_sync_single_for_cpu(kdev->dev, list_dma, info->list_size,
    DMA_FROM_DEVICE);

 for (list = list_cpu; list < list_cpu + (info->list_size / sizeof(u32));
      list += ACC_LIST_ENTRY_WORDS) {
  if (ACC_LIST_ENTRY_WORDS == 1) {
   dev_dbg(kdev->dev,
    "acc-irq: list %d, entry @%p, %08x\n",
    acc->list_index, list, list[0]);
  } else if (ACC_LIST_ENTRY_WORDS == 2) {
   dev_dbg(kdev->dev,
    "acc-irq: list %d, entry @%p, %08x %08x\n",
    acc->list_index, list, list[0], list[1]);
  } else if (ACC_LIST_ENTRY_WORDS == 4) {
   dev_dbg(kdev->dev,
    "acc-irq: list %d, entry @%p, %08x %08x %08x %08x\n",
    acc->list_index, list, list[0], list[1],
    list[2], list[3]);
  }

  val = list[ACC_LIST_ENTRY_DESC_IDX];
  if (!val)
   break;

  if (range->flags & RANGE_MULTI_QUEUE) {
   queue = list[ACC_LIST_ENTRY_QUEUE_IDX] >> 16;
   if (queue < range_base ||
       queue >= range_base + range->num_queues) {
    dev_err(kdev->dev,
     "bad queue %d, expecting %d-%d\n",
     queue, range_base,
     range_base + range->num_queues);
    break;
   }
   queue -= range_base;
   kq = knav_range_offset_to_inst(kdev, range,
        queue);
  }

  if (atomic_inc_return(&kq->desc_count) >= ACC_DESCS_MAX) {
   atomic_dec(&kq->desc_count);
   dev_err(kdev->dev,
    "acc-irq: queue %d full, entry dropped\n",
    queue + range_base);
   continue;
  }

  idx = atomic_inc_return(&kq->desc_tail) & ACC_DESCS_MASK;
  kq->descs[idx] = val;
  kq->notify_needed = 1;
  dev_dbg(kdev->dev, "acc-irq: enqueue %08x at %d, queue %d\n",
   val, idx, queue + range_base);
 }

 __knav_acc_notify(range, acc);
 memset(list_cpu, 0, info->list_size);
 dma_sync_single_for_device(kdev->dev, list_dma, info->list_size,
       DMA_TO_DEVICE);


 acc->list_index ^= 1;


 writel_relaxed(1, pdsp->intd + ACC_INTD_OFFSET_COUNT(channel));


 writel_relaxed(ACC_CHANNEL_INT_BASE + channel,
         pdsp->intd + ACC_INTD_OFFSET_EOI);

 return IRQ_HANDLED;
}

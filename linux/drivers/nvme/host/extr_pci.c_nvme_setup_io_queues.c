
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct nvme_queue {int flags; int q_db; } ;
struct TYPE_2__ {int quirks; int device; } ;
struct nvme_dev {int cmb_use_sqes; int q_depth; int num_vecs; int max_qid; int* io_queues; int online_queues; TYPE_1__ ctrl; int dbs; int dev; struct nvme_queue* queues; } ;
struct nvme_command {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 size_t HCTX_TYPE_DEFAULT ;
 size_t HCTX_TYPE_POLL ;
 size_t HCTX_TYPE_READ ;
 int NVMEQ_ENABLED ;
 int NVME_QUIRK_SHARED_TAGS ;
 int clear_bit (int ,int *) ;
 unsigned long db_bar_size (struct nvme_dev*,int) ;
 int dev_info (int ,char*,int,int,int) ;
 int max (int,int) ;
 int max_io_queues () ;
 int nvme_cmb_qdepth (struct nvme_dev*,int,int) ;
 int nvme_create_io_queues (struct nvme_dev*) ;
 int nvme_disable_io_queues (struct nvme_dev*) ;
 int nvme_remap_bar (struct nvme_dev*,unsigned long) ;
 int nvme_set_queue_count (TYPE_1__*,int*) ;
 int nvme_setup_irqs (struct nvme_dev*,int) ;
 int nvme_suspend_io_queues (struct nvme_dev*) ;
 int pci_free_irq (struct pci_dev*,int ,struct nvme_queue*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int queue_request_irq (struct nvme_queue*) ;
 int set_bit (int ,int *) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int nvme_setup_io_queues(struct nvme_dev *dev)
{
 struct nvme_queue *adminq = &dev->queues[0];
 struct pci_dev *pdev = to_pci_dev(dev->dev);
 int result, nr_io_queues;
 unsigned long size;

 nr_io_queues = max_io_queues();





 if (dev->ctrl.quirks & NVME_QUIRK_SHARED_TAGS)
  nr_io_queues = 1;

 result = nvme_set_queue_count(&dev->ctrl, &nr_io_queues);
 if (result < 0)
  return result;

 if (nr_io_queues == 0)
  return 0;

 clear_bit(NVMEQ_ENABLED, &adminq->flags);

 if (dev->cmb_use_sqes) {
  result = nvme_cmb_qdepth(dev, nr_io_queues,
    sizeof(struct nvme_command));
  if (result > 0)
   dev->q_depth = result;
  else
   dev->cmb_use_sqes = 0;
 }

 do {
  size = db_bar_size(dev, nr_io_queues);
  result = nvme_remap_bar(dev, size);
  if (!result)
   break;
  if (!--nr_io_queues)
   return -ENOMEM;
 } while (1);
 adminq->q_db = dev->dbs;

 retry:

 pci_free_irq(pdev, 0, adminq);





 pci_free_irq_vectors(pdev);

 result = nvme_setup_irqs(dev, nr_io_queues);
 if (result <= 0)
  return -EIO;

 dev->num_vecs = result;
 result = max(result - 1, 1);
 dev->max_qid = result + dev->io_queues[HCTX_TYPE_POLL];







 result = queue_request_irq(adminq);
 if (result)
  return result;
 set_bit(NVMEQ_ENABLED, &adminq->flags);

 result = nvme_create_io_queues(dev);
 if (result || dev->online_queues < 2)
  return result;

 if (dev->online_queues - 1 < dev->max_qid) {
  nr_io_queues = dev->online_queues - 1;
  nvme_disable_io_queues(dev);
  nvme_suspend_io_queues(dev);
  goto retry;
 }
 dev_info(dev->ctrl.device, "%d/%d/%d default/read/poll queues\n",
     dev->io_queues[HCTX_TYPE_DEFAULT],
     dev->io_queues[HCTX_TYPE_READ],
     dev->io_queues[HCTX_TYPE_POLL]);
 return 0;
}

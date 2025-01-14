
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker {int cmd_ring; int event_ring; int cmd_ring_lock; struct pci_dev* pdev; } ;
struct pci_dev {int dev; } ;


 int PAGE_SIZE ;
 int PCI_DMA_BIDIRECTIONAL ;
 int PCI_DMA_FROMDEVICE ;
 int ROCKER_DMA_CMD ;
 int ROCKER_DMA_CMD_DEFAULT_SIZE ;
 int ROCKER_DMA_EVENT ;
 int ROCKER_DMA_EVENT_DEFAULT_SIZE ;
 int dev_err (int *,char*) ;
 int rocker_dma_cmd_ring_waits_alloc (struct rocker*) ;
 int rocker_dma_cmd_ring_waits_free (struct rocker*) ;
 int rocker_dma_ring_bufs_alloc (struct rocker*,int *,int ,int ) ;
 int rocker_dma_ring_bufs_free (struct rocker*,int *,int ) ;
 int rocker_dma_ring_create (struct rocker*,int ,int ,int *) ;
 int rocker_dma_ring_destroy (struct rocker*,int *) ;
 int rocker_dma_ring_pass_to_producer (struct rocker*,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int rocker_dma_rings_init(struct rocker *rocker)
{
 const struct pci_dev *pdev = rocker->pdev;
 int err;

 err = rocker_dma_ring_create(rocker, ROCKER_DMA_CMD,
         ROCKER_DMA_CMD_DEFAULT_SIZE,
         &rocker->cmd_ring);
 if (err) {
  dev_err(&pdev->dev, "failed to create command dma ring\n");
  return err;
 }

 spin_lock_init(&rocker->cmd_ring_lock);

 err = rocker_dma_ring_bufs_alloc(rocker, &rocker->cmd_ring,
      PCI_DMA_BIDIRECTIONAL, PAGE_SIZE);
 if (err) {
  dev_err(&pdev->dev, "failed to alloc command dma ring buffers\n");
  goto err_dma_cmd_ring_bufs_alloc;
 }

 err = rocker_dma_cmd_ring_waits_alloc(rocker);
 if (err) {
  dev_err(&pdev->dev, "failed to alloc command dma ring waits\n");
  goto err_dma_cmd_ring_waits_alloc;
 }

 err = rocker_dma_ring_create(rocker, ROCKER_DMA_EVENT,
         ROCKER_DMA_EVENT_DEFAULT_SIZE,
         &rocker->event_ring);
 if (err) {
  dev_err(&pdev->dev, "failed to create event dma ring\n");
  goto err_dma_event_ring_create;
 }

 err = rocker_dma_ring_bufs_alloc(rocker, &rocker->event_ring,
      PCI_DMA_FROMDEVICE, PAGE_SIZE);
 if (err) {
  dev_err(&pdev->dev, "failed to alloc event dma ring buffers\n");
  goto err_dma_event_ring_bufs_alloc;
 }
 rocker_dma_ring_pass_to_producer(rocker, &rocker->event_ring);
 return 0;

err_dma_event_ring_bufs_alloc:
 rocker_dma_ring_destroy(rocker, &rocker->event_ring);
err_dma_event_ring_create:
 rocker_dma_ring_bufs_free(rocker, &rocker->cmd_ring,
      PCI_DMA_BIDIRECTIONAL);
err_dma_cmd_ring_waits_alloc:
 rocker_dma_cmd_ring_waits_free(rocker);
err_dma_cmd_ring_bufs_alloc:
 rocker_dma_ring_destroy(rocker, &rocker->cmd_ring);
 return err;
}

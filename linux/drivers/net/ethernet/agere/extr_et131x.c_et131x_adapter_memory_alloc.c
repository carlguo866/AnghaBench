
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct et131x_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 int et131x_adapter_memory_free (struct et131x_adapter*) ;
 int et131x_init_recv (struct et131x_adapter*) ;
 int et131x_rx_dma_memory_alloc (struct et131x_adapter*) ;
 int et131x_tx_dma_memory_alloc (struct et131x_adapter*) ;
 int et131x_tx_dma_memory_free (struct et131x_adapter*) ;

__attribute__((used)) static int et131x_adapter_memory_alloc(struct et131x_adapter *adapter)
{
 int status;

 status = et131x_tx_dma_memory_alloc(adapter);
 if (status) {
  dev_err(&adapter->pdev->dev,
   "et131x_tx_dma_memory_alloc FAILED\n");
  et131x_tx_dma_memory_free(adapter);
  return status;
 }

 status = et131x_rx_dma_memory_alloc(adapter);
 if (status) {
  dev_err(&adapter->pdev->dev,
   "et131x_rx_dma_memory_alloc FAILED\n");
  et131x_adapter_memory_free(adapter);
  return status;
 }

 status = et131x_init_recv(adapter);
 if (status) {
  dev_err(&adapter->pdev->dev, "et131x_init_recv FAILED\n");
  et131x_adapter_memory_free(adapter);
 }
 return status;
}

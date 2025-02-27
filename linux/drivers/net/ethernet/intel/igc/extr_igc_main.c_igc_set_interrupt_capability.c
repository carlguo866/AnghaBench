
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct msix_entry {int dummy; } ;
struct igc_adapter {int flags; int num_rx_queues; int rss_queues; int num_tx_queues; int num_q_vectors; int pdev; TYPE_1__* msix_entries; } ;
struct TYPE_4__ {int entry; } ;


 int GFP_KERNEL ;
 int IGC_FLAG_HAS_MSI ;
 int IGC_FLAG_HAS_MSIX ;
 int IGC_FLAG_QUEUE_PAIRS ;
 int igc_reset_interrupt_capability (struct igc_adapter*) ;
 TYPE_1__* kcalloc (int,int,int ) ;
 int kfree (TYPE_1__*) ;
 int pci_enable_msi (int ) ;
 int pci_enable_msix_range (int ,TYPE_1__*,int,int) ;

__attribute__((used)) static void igc_set_interrupt_capability(struct igc_adapter *adapter,
      bool msix)
{
 int numvecs, i;
 int err;

 if (!msix)
  goto msi_only;
 adapter->flags |= IGC_FLAG_HAS_MSIX;


 adapter->num_rx_queues = adapter->rss_queues;

 adapter->num_tx_queues = adapter->rss_queues;


 numvecs = adapter->num_rx_queues;


 if (!(adapter->flags & IGC_FLAG_QUEUE_PAIRS))
  numvecs += adapter->num_tx_queues;


 adapter->num_q_vectors = numvecs;


 numvecs++;

 adapter->msix_entries = kcalloc(numvecs, sizeof(struct msix_entry),
     GFP_KERNEL);

 if (!adapter->msix_entries)
  return;


 for (i = 0; i < numvecs; i++)
  adapter->msix_entries[i].entry = i;

 err = pci_enable_msix_range(adapter->pdev,
        adapter->msix_entries,
        numvecs,
        numvecs);
 if (err > 0)
  return;

 kfree(adapter->msix_entries);
 adapter->msix_entries = ((void*)0);

 igc_reset_interrupt_capability(adapter);

msi_only:
 adapter->flags &= ~IGC_FLAG_HAS_MSIX;

 adapter->rss_queues = 1;
 adapter->flags |= IGC_FLAG_QUEUE_PAIRS;
 adapter->num_rx_queues = 1;
 adapter->num_tx_queues = 1;
 adapter->num_q_vectors = 1;
 if (!pci_enable_msi(adapter->pdev))
  adapter->flags |= IGC_FLAG_HAS_MSI;
}

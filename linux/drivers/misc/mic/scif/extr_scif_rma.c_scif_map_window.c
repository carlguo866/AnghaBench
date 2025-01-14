
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scif_window {int nr_pages; int* num_pages; void** dma_addr; int nr_contig_chunks; TYPE_1__* pinned_pages; } ;
struct scif_dev {int dummy; } ;
typedef TYPE_1__* scif_pinned_pages_t ;
typedef scalar_t__ phys_addr_t ;
struct TYPE_2__ {int * pages; } ;


 int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ intel_iommu_enabled ;
 int might_sleep () ;
 void* page_to_phys (int ) ;
 int phys_to_virt (void*) ;
 int scif_iommu_map (struct scif_dev*,struct scif_window*) ;
 scalar_t__ scif_is_mgmt_node () ;
 int scif_map_single (void**,int ,struct scif_dev*,int) ;
 int scifdev_self (struct scif_dev*) ;

int
scif_map_window(struct scif_dev *remote_dev, struct scif_window *window)
{
 int i, j, k, err = 0, nr_contig_pages;
 scif_pinned_pages_t pin;
 phys_addr_t phys_prev, phys_curr;

 might_sleep();

 pin = window->pinned_pages;

 if (intel_iommu_enabled && !scifdev_self(remote_dev))
  return scif_iommu_map(remote_dev, window);

 for (i = 0, j = 0; i < window->nr_pages; i += nr_contig_pages, j++) {
  phys_prev = page_to_phys(pin->pages[i]);
  nr_contig_pages = 1;


  for (k = i + 1; k < window->nr_pages; k++) {
   phys_curr = page_to_phys(pin->pages[k]);
   if (phys_curr != (phys_prev + PAGE_SIZE))
    break;
   phys_prev = phys_curr;
   nr_contig_pages++;
  }
  window->num_pages[j] = nr_contig_pages;
  window->nr_contig_chunks++;
  if (scif_is_mgmt_node()) {




   err = scif_map_single(&window->dma_addr[j],
           phys_to_virt(page_to_phys(
          pin->pages[i])),
           remote_dev,
           nr_contig_pages << PAGE_SHIFT);
   if (err)
    return err;
  } else {
   window->dma_addr[j] = page_to_phys(pin->pages[i]);
  }
 }
 return err;
}

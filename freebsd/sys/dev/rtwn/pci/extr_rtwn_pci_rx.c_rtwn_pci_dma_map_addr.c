
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;
typedef int bus_addr_t ;


 int KASSERT (int,char*) ;

void
rtwn_pci_dma_map_addr(void *arg, bus_dma_segment_t *segs, int nsegs,
    int error)
{

 if (error != 0)
  return;
 KASSERT(nsegs == 1, ("too many DMA segments, %d should be 1", nsegs));
 *(bus_addr_t *)arg = segs[0].ds_addr;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;
typedef int bus_addr_t ;


 int printf (char*,int) ;

__attribute__((used)) static void
sdhci_getaddr(void *arg, bus_dma_segment_t *segs, int nsegs, int error)
{

 if (error != 0) {
  printf("getaddr: error %d\n", error);
  return;
 }
 *(bus_addr_t *)arg = segs[0].ds_addr;
}

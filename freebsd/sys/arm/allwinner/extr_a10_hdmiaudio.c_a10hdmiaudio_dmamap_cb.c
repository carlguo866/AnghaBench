
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct a10hdmiaudio_chinfo {int physaddr; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;



__attribute__((used)) static void
a10hdmiaudio_dmamap_cb(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 struct a10hdmiaudio_chinfo *ch = arg;

 if (error != 0)
  return;

 ch->physaddr = segs[0].ds_addr;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ds_len; scalar_t__ ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;
typedef scalar_t__ bus_addr_t ;


 scalar_t__ bootverbose ;
 int printf (char*,unsigned long,unsigned long,int,int) ;

__attribute__((used)) static void
setmap(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
 bus_addr_t *phys = arg;

 *phys = error? 0 : segs->ds_addr;

 if (bootverbose) {
  printf("setmap (%lx, %lx), nseg=%d, error=%d\n",
      (unsigned long)segs->ds_addr, (unsigned long)segs->ds_len,
      nseg, error);
 }
}

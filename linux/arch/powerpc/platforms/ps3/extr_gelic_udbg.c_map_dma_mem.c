
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ s64 ;


 scalar_t__ lv1_allocate_device_dma_region (int,int,int,int,int ,int*) ;
 scalar_t__ lv1_map_device_dma_region (int,int,int,int,int,int) ;
 int lv1_panic (int ) ;

__attribute__((used)) static void map_dma_mem(int bus_id, int dev_id, void *start, size_t len,
   u64 *real_bus_addr)
{
 s64 result;
 u64 real_addr = ((u64)start) & 0x0fffffffffffffffUL;
 u64 real_end = real_addr + len;
 u64 map_start = real_addr & ~0xfff;
 u64 map_end = (real_end + 0xfff) & ~0xfff;
 u64 bus_addr = 0;

 u64 flags = 0xf800000000000000UL;

 result = lv1_allocate_device_dma_region(bus_id, dev_id,
      map_end - map_start, 12, 0,
      &bus_addr);
 if (result)
  lv1_panic(0);

 result = lv1_map_device_dma_region(bus_id, dev_id, map_start,
        bus_addr, map_end - map_start,
        flags);
 if (result)
  lv1_panic(0);

 *real_bus_addr = bus_addr + real_addr - map_start;
}

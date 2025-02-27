
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hfsplus_extent {void* block_count; void* start_block; } ;


 int EIO ;
 int ENOSPC ;
 scalar_t__ be32_to_cpu (void*) ;
 void* cpu_to_be32 (scalar_t__) ;
 int hfsplus_dump_extent (struct hfsplus_extent*) ;

__attribute__((used)) static int hfsplus_add_extent(struct hfsplus_extent *extent, u32 offset,
         u32 alloc_block, u32 block_count)
{
 u32 count, start;
 int i;

 hfsplus_dump_extent(extent);
 for (i = 0; i < 8; extent++, i++) {
  count = be32_to_cpu(extent->block_count);
  if (offset == count) {
   start = be32_to_cpu(extent->start_block);
   if (alloc_block != start + count) {
    if (++i >= 8)
     return -ENOSPC;
    extent++;
    extent->start_block = cpu_to_be32(alloc_block);
   } else
    block_count += count;
   extent->block_count = cpu_to_be32(block_count);
   return 0;
  } else if (offset < count)
   break;
  offset -= count;
 }

 return -EIO;
}

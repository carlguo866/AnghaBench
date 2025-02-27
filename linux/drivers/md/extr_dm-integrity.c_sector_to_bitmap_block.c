
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_integrity_c {unsigned int log2_blocks_per_bitmap_bit; unsigned int n_bitmap_blocks; struct bitmap_block_status* bbs; TYPE_1__* sb; } ;
struct bitmap_block_status {int dummy; } ;
typedef unsigned int sector_t ;
struct TYPE_2__ {unsigned int log2_sectors_per_block; } ;


 int BITMAP_BLOCK_SIZE ;
 int BUG_ON (int) ;

__attribute__((used)) static struct bitmap_block_status *sector_to_bitmap_block(struct dm_integrity_c *ic, sector_t sector)
{
 unsigned bit = sector >> (ic->sb->log2_sectors_per_block + ic->log2_blocks_per_bitmap_bit);
 unsigned bitmap_block = bit / (BITMAP_BLOCK_SIZE * 8);

 BUG_ON(bitmap_block >= ic->n_bitmap_blocks);
 return &ic->bbs[bitmap_block];
}

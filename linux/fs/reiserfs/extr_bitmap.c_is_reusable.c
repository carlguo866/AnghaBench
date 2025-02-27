
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
typedef scalar_t__ b_blocknr_t ;
struct TYPE_4__ {TYPE_1__* s_sbh; int s_properties; } ;
struct TYPE_3__ {scalar_t__ b_blocknr; } ;


 int REISERFS_OLD_FORMAT ;
 TYPE_2__* REISERFS_SB (struct super_block*) ;
 scalar_t__ SB_BLOCK_COUNT (struct super_block*) ;
 scalar_t__ SB_ROOT_BLOCK (struct super_block*) ;
 int get_bit_address (struct super_block*,scalar_t__,unsigned int*,unsigned int*) ;
 unsigned int reiserfs_bmap_count (struct super_block*) ;
 int reiserfs_error (struct super_block*,char*,char*,scalar_t__,...) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

int is_reusable(struct super_block *s, b_blocknr_t block, int bit_value)
{
 unsigned int bmap, offset;
 unsigned int bmap_count = reiserfs_bmap_count(s);

 if (block == 0 || block >= SB_BLOCK_COUNT(s)) {
  reiserfs_error(s, "vs-4010",
          "block number is out of range %lu (%u)",
          block, SB_BLOCK_COUNT(s));
  return 0;
 }

 get_bit_address(s, block, &bmap, &offset);





 if (unlikely(test_bit(REISERFS_OLD_FORMAT,
         &REISERFS_SB(s)->s_properties))) {
  b_blocknr_t bmap1 = REISERFS_SB(s)->s_sbh->b_blocknr + 1;
  if (block >= bmap1 &&
      block <= bmap1 + bmap_count) {
   reiserfs_error(s, "vs-4019", "bitmap block %lu(%u) "
           "can't be freed or reused",
           block, bmap_count);
   return 0;
  }
 } else {
  if (offset == 0) {
   reiserfs_error(s, "vs-4020", "bitmap block %lu(%u) "
           "can't be freed or reused",
           block, bmap_count);
   return 0;
  }
 }

 if (bmap >= bmap_count) {
  reiserfs_error(s, "vs-4030", "bitmap for requested block "
          "is out of range: block=%lu, bitmap_nr=%u",
          block, bmap);
  return 0;
 }

 if (bit_value == 0 && block == SB_ROOT_BLOCK(s)) {
  reiserfs_error(s, "vs-4050", "this is root block (%u), "
          "it must be busy", SB_ROOT_BLOCK(s));
  return 0;
 }

 return 1;
}

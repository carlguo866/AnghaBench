
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;


 int EXT2_ADDR_PER_BLOCK (int ) ;
 int EXT2_ADDR_PER_BLOCK_BITS (int ) ;
 int EXT2_DIND_BLOCK ;
 int EXT2_IND_BLOCK ;
 long EXT2_NDIR_BLOCKS ;
 int EXT2_TIND_BLOCK ;
 int ext2_warning (int ,char*,char*) ;

__attribute__((used)) static int ext2_block_to_path(struct inode *inode,
   long i_block, int offsets[4], int *boundary)
{
 int ptrs = EXT2_ADDR_PER_BLOCK(inode->i_sb);
 int ptrs_bits = EXT2_ADDR_PER_BLOCK_BITS(inode->i_sb);
 const long direct_blocks = EXT2_NDIR_BLOCKS,
  indirect_blocks = ptrs,
  double_blocks = (1 << (ptrs_bits * 2));
 int n = 0;
 int final = 0;

 if (i_block < 0) {
  ext2_warning (inode->i_sb, "ext2_block_to_path", "block < 0");
 } else if (i_block < direct_blocks) {
  offsets[n++] = i_block;
  final = direct_blocks;
 } else if ( (i_block -= direct_blocks) < indirect_blocks) {
  offsets[n++] = EXT2_IND_BLOCK;
  offsets[n++] = i_block;
  final = ptrs;
 } else if ((i_block -= indirect_blocks) < double_blocks) {
  offsets[n++] = EXT2_DIND_BLOCK;
  offsets[n++] = i_block >> ptrs_bits;
  offsets[n++] = i_block & (ptrs - 1);
  final = ptrs;
 } else if (((i_block -= double_blocks) >> (ptrs_bits * 2)) < ptrs) {
  offsets[n++] = EXT2_TIND_BLOCK;
  offsets[n++] = i_block >> (ptrs_bits * 2);
  offsets[n++] = (i_block >> ptrs_bits) & (ptrs - 1);
  offsets[n++] = i_block & (ptrs - 1);
  final = ptrs;
 } else {
  ext2_warning (inode->i_sb, "ext2_block_to_path", "block > big");
 }
 if (boundary)
  *boundary = final - 1 - (i_block & (ptrs - 1));

 return n;
}

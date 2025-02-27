
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_size; TYPE_1__* i_sb; int i_ino; } ;
struct ext4_extent_header {int dummy; } ;
struct ext4_extent {void* ee_len; void* ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; struct ext4_extent_header* p_hdr; } ;
typedef int handle_t ;
typedef unsigned int ext4_lblk_t ;
typedef scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {int s_blocksize; int s_blocksize_bits; } ;


 int ENOSPC ;
 int EXT4_EXT_DATA_VALID ;
 scalar_t__ IS_ERR (struct ext4_ext_path*) ;
 int PTR_ERR (struct ext4_ext_path*) ;
 void* cpu_to_le16 (unsigned int) ;
 void* cpu_to_le32 (unsigned int) ;
 int ext4_ext_dirty (int *,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_drop_refs (struct ext4_ext_path*) ;
 struct ext4_ext_path* ext4_ext_find_extent (struct inode*,unsigned int,struct ext4_ext_path*) ;
 int ext4_ext_get_access (int *,struct inode*,struct ext4_ext_path*) ;
 unsigned int ext4_ext_get_actual_len (struct ext4_extent*) ;
 int ext4_ext_insert_extent (int *,struct inode*,struct ext4_ext_path*,struct ext4_extent*,int) ;
 int ext4_ext_mark_uninitialized (struct ext4_extent*) ;
 scalar_t__ ext4_ext_pblock (struct ext4_extent*) ;
 int ext4_ext_show_leaf (struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_store_pblock (struct ext4_extent*,scalar_t__) ;
 int ext4_ext_zeroout (struct inode*,struct ext4_extent*) ;
 int ext_debug (char*,...) ;
 unsigned int ext_depth (struct inode*) ;
 unsigned int le32_to_cpu (void*) ;

__attribute__((used)) static int ext4_split_unwritten_extents(handle_t *handle,
     struct inode *inode,
     struct ext4_ext_path *path,
     ext4_lblk_t iblock,
     unsigned int max_blocks,
     int flags)
{
 struct ext4_extent *ex, newex, orig_ex;
 struct ext4_extent *ex1 = ((void*)0);
 struct ext4_extent *ex2 = ((void*)0);
 struct ext4_extent *ex3 = ((void*)0);
 struct ext4_extent_header *eh;
 ext4_lblk_t ee_block, eof_block;
 unsigned int allocated, ee_len, depth;
 ext4_fsblk_t newblock;
 int err = 0;
 int may_zeroout;

 ext_debug("ext4_split_unwritten_extents: inode %lu, logical"
  "block %llu, max_blocks %u\n", inode->i_ino,
  (unsigned long long)iblock, max_blocks);

 eof_block = (inode->i_size + inode->i_sb->s_blocksize - 1) >>
  inode->i_sb->s_blocksize_bits;
 if (eof_block < iblock + max_blocks)
  eof_block = iblock + max_blocks;

 depth = ext_depth(inode);
 eh = path[depth].p_hdr;
 ex = path[depth].p_ext;
 ee_block = le32_to_cpu(ex->ee_block);
 ee_len = ext4_ext_get_actual_len(ex);
 allocated = ee_len - (iblock - ee_block);
 newblock = iblock - ee_block + ext4_ext_pblock(ex);

 ex2 = ex;
 orig_ex.ee_block = ex->ee_block;
 orig_ex.ee_len = cpu_to_le16(ee_len);
 ext4_ext_store_pblock(&orig_ex, ext4_ext_pblock(ex));





 may_zeroout = ee_block + ee_len <= eof_block;






 if ((iblock == ee_block) && (allocated <= max_blocks))
  return allocated;

 err = ext4_ext_get_access(handle, inode, path + depth);
 if (err)
  goto out;

 if (iblock > ee_block) {
  ex1 = ex;
  ex1->ee_len = cpu_to_le16(iblock - ee_block);
  ext4_ext_mark_uninitialized(ex1);
  ext4_ext_dirty(handle, inode, path + depth);
  ex2 = &newex;
 }





 if (!ex1 && allocated > max_blocks)
  ex2->ee_len = cpu_to_le16(max_blocks);

 if (allocated > max_blocks) {
  unsigned int newdepth;
  ex3 = &newex;
  ex3->ee_block = cpu_to_le32(iblock + max_blocks);
  ext4_ext_store_pblock(ex3, newblock + max_blocks);
  ex3->ee_len = cpu_to_le16(allocated - max_blocks);
  ext4_ext_mark_uninitialized(ex3);
  err = ext4_ext_insert_extent(handle, inode, path, ex3, flags);
  if (err == -ENOSPC && may_zeroout) {
   if (flags & EXT4_EXT_DATA_VALID) {
    err = ext4_ext_zeroout(inode, ex3);
    if (err)
     goto fix_extent_len;
    max_blocks = allocated;
    ex2->ee_len = cpu_to_le16(max_blocks);
    goto skip;
   }
   err = ext4_ext_zeroout(inode, &orig_ex);
   if (err)
    goto fix_extent_len;

   ex->ee_block = orig_ex.ee_block;
   ex->ee_len = orig_ex.ee_len;
   ext4_ext_store_pblock(ex, ext4_ext_pblock(&orig_ex));
   ext4_ext_dirty(handle, inode, path + depth);


   return allocated;

  } else if (err)
   goto fix_extent_len;




  newdepth = ext_depth(inode);




  ee_len -= ext4_ext_get_actual_len(ex3);
  orig_ex.ee_len = cpu_to_le16(ee_len);
  may_zeroout = ee_block + ee_len <= eof_block;

  depth = newdepth;
  ext4_ext_drop_refs(path);
  path = ext4_ext_find_extent(inode, iblock, path);
  if (IS_ERR(path)) {
   err = PTR_ERR(path);
   goto out;
  }
  eh = path[depth].p_hdr;
  ex = path[depth].p_ext;
  if (ex2 != &newex)
   ex2 = ex;

  err = ext4_ext_get_access(handle, inode, path + depth);
  if (err)
   goto out;

  allocated = max_blocks;
 }
skip:





 if (ex1 && ex1 != ex) {
  ex1 = ex;
  ex1->ee_len = cpu_to_le16(iblock - ee_block);
  ext4_ext_mark_uninitialized(ex1);
  ext4_ext_dirty(handle, inode, path + depth);
  ex2 = &newex;
 }




 ex2->ee_block = cpu_to_le32(iblock);
 ext4_ext_store_pblock(ex2, newblock);
 ex2->ee_len = cpu_to_le16(allocated);
 ext4_ext_mark_uninitialized(ex2);
 if (ex2 != ex)
  goto insert;

 err = ext4_ext_dirty(handle, inode, path + depth);
 ext_debug("out here\n");
 goto out;
insert:
 err = ext4_ext_insert_extent(handle, inode, path, &newex, flags);
 if (err == -ENOSPC && may_zeroout) {
  err = ext4_ext_zeroout(inode, &orig_ex);
  if (err)
   goto fix_extent_len;

  ex->ee_block = orig_ex.ee_block;
  ex->ee_len = orig_ex.ee_len;
  ext4_ext_store_pblock(ex, ext4_ext_pblock(&orig_ex));
  ext4_ext_dirty(handle, inode, path + depth);

  return allocated;
 } else if (err)
  goto fix_extent_len;
out:
 ext4_ext_show_leaf(inode, path);
 return err ? err : allocated;

fix_extent_len:
 ex->ee_block = orig_ex.ee_block;
 ex->ee_len = orig_ex.ee_len;
 ext4_ext_store_pblock(ex, ext4_ext_pblock(&orig_ex));
 ext4_ext_mark_uninitialized(ex);
 ext4_ext_dirty(handle, inode, path + depth);
 return err;
}

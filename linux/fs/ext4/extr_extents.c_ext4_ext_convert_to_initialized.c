
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_size; TYPE_1__* i_sb; int i_ino; } ;
struct ext4_sb_info {int s_extent_max_zeroout_kb; } ;
struct ext4_map_blocks {unsigned int m_len; unsigned int m_lblk; } ;
struct ext4_extent_header {int dummy; } ;
struct ext4_extent {void* ee_len; void* ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; struct ext4_extent_header* p_hdr; } ;
typedef int handle_t ;
typedef unsigned int ext4_lblk_t ;
typedef scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {int s_blocksize; int s_blocksize_bits; } ;


 int BUG_ON (int) ;
 int EXT4_EXT_DATA_VALID2 ;
 int EXT4_EXT_MAY_ZEROOUT ;
 struct ext4_sb_info* EXT4_SB (TYPE_1__*) ;
 struct ext4_extent* EXT_FIRST_EXTENT (struct ext4_extent_header*) ;
 unsigned int EXT_INIT_MAX_LEN ;
 struct ext4_extent* EXT_LAST_EXTENT (struct ext4_extent_header*) ;
 scalar_t__ IS_ENCRYPTED (struct inode*) ;
 int WARN_ON (int) ;
 void* cpu_to_le16 (unsigned int) ;
 void* cpu_to_le32 (unsigned int) ;
 int ext4_ext_dirty (int *,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_get_access (int *,struct inode*,struct ext4_ext_path*) ;
 unsigned int ext4_ext_get_actual_len (struct ext4_extent*) ;
 int ext4_ext_is_unwritten (struct ext4_extent*) ;
 int ext4_ext_mark_unwritten (struct ext4_extent*) ;
 scalar_t__ ext4_ext_pblock (struct ext4_extent*) ;
 int ext4_ext_store_pblock (struct ext4_extent*,scalar_t__) ;
 int ext4_ext_zeroout (struct inode*,struct ext4_extent*) ;
 int ext4_split_extent (int *,struct inode*,struct ext4_ext_path**,struct ext4_map_blocks*,int,int) ;
 int ext4_zeroout_es (struct inode*,struct ext4_extent*) ;
 int ext_debug (char*,int ,unsigned long long,unsigned int) ;
 unsigned int ext_depth (struct inode*) ;
 int in_range (unsigned int,unsigned int,unsigned int) ;
 unsigned int le32_to_cpu (void*) ;
 int trace_ext4_ext_convert_to_initialized_enter (struct inode*,struct ext4_map_blocks*,struct ext4_extent*) ;
 int trace_ext4_ext_convert_to_initialized_fastpath (struct inode*,struct ext4_map_blocks*,struct ext4_extent*,struct ext4_extent*) ;

__attribute__((used)) static int ext4_ext_convert_to_initialized(handle_t *handle,
        struct inode *inode,
        struct ext4_map_blocks *map,
        struct ext4_ext_path **ppath,
        int flags)
{
 struct ext4_ext_path *path = *ppath;
 struct ext4_sb_info *sbi;
 struct ext4_extent_header *eh;
 struct ext4_map_blocks split_map;
 struct ext4_extent zero_ex1, zero_ex2;
 struct ext4_extent *ex, *abut_ex;
 ext4_lblk_t ee_block, eof_block;
 unsigned int ee_len, depth, map_len = map->m_len;
 int allocated = 0, max_zeroout = 0;
 int err = 0;
 int split_flag = EXT4_EXT_DATA_VALID2;

 ext_debug("ext4_ext_convert_to_initialized: inode %lu, logical"
  "block %llu, max_blocks %u\n", inode->i_ino,
  (unsigned long long)map->m_lblk, map_len);

 sbi = EXT4_SB(inode->i_sb);
 eof_block = (inode->i_size + inode->i_sb->s_blocksize - 1) >>
  inode->i_sb->s_blocksize_bits;
 if (eof_block < map->m_lblk + map_len)
  eof_block = map->m_lblk + map_len;

 depth = ext_depth(inode);
 eh = path[depth].p_hdr;
 ex = path[depth].p_ext;
 ee_block = le32_to_cpu(ex->ee_block);
 ee_len = ext4_ext_get_actual_len(ex);
 zero_ex1.ee_len = 0;
 zero_ex2.ee_len = 0;

 trace_ext4_ext_convert_to_initialized_enter(inode, map, ex);


 BUG_ON(!ext4_ext_is_unwritten(ex));
 BUG_ON(!in_range(map->m_lblk, ee_block, ee_len));
 if ((map->m_lblk == ee_block) &&

  (map_len < ee_len) &&
  (ex > EXT_FIRST_EXTENT(eh))) {
  ext4_lblk_t prev_lblk;
  ext4_fsblk_t prev_pblk, ee_pblk;
  unsigned int prev_len;

  abut_ex = ex - 1;
  prev_lblk = le32_to_cpu(abut_ex->ee_block);
  prev_len = ext4_ext_get_actual_len(abut_ex);
  prev_pblk = ext4_ext_pblock(abut_ex);
  ee_pblk = ext4_ext_pblock(ex);
  if ((!ext4_ext_is_unwritten(abut_ex)) &&
   ((prev_lblk + prev_len) == ee_block) &&
   ((prev_pblk + prev_len) == ee_pblk) &&
   (prev_len < (EXT_INIT_MAX_LEN - map_len))) {
   err = ext4_ext_get_access(handle, inode, path + depth);
   if (err)
    goto out;

   trace_ext4_ext_convert_to_initialized_fastpath(inode,
    map, ex, abut_ex);


   ex->ee_block = cpu_to_le32(ee_block + map_len);
   ext4_ext_store_pblock(ex, ee_pblk + map_len);
   ex->ee_len = cpu_to_le16(ee_len - map_len);
   ext4_ext_mark_unwritten(ex);


   abut_ex->ee_len = cpu_to_le16(prev_len + map_len);


   allocated = map_len;
  }
 } else if (((map->m_lblk + map_len) == (ee_block + ee_len)) &&
     (map_len < ee_len) &&
     ex < EXT_LAST_EXTENT(eh)) {

  ext4_lblk_t next_lblk;
  ext4_fsblk_t next_pblk, ee_pblk;
  unsigned int next_len;

  abut_ex = ex + 1;
  next_lblk = le32_to_cpu(abut_ex->ee_block);
  next_len = ext4_ext_get_actual_len(abut_ex);
  next_pblk = ext4_ext_pblock(abut_ex);
  ee_pblk = ext4_ext_pblock(ex);
  if ((!ext4_ext_is_unwritten(abut_ex)) &&
      ((map->m_lblk + map_len) == next_lblk) &&
      ((ee_pblk + ee_len) == next_pblk) &&
      (next_len < (EXT_INIT_MAX_LEN - map_len))) {
   err = ext4_ext_get_access(handle, inode, path + depth);
   if (err)
    goto out;

   trace_ext4_ext_convert_to_initialized_fastpath(inode,
    map, ex, abut_ex);


   abut_ex->ee_block = cpu_to_le32(next_lblk - map_len);
   ext4_ext_store_pblock(abut_ex, next_pblk - map_len);
   ex->ee_len = cpu_to_le16(ee_len - map_len);
   ext4_ext_mark_unwritten(ex);


   abut_ex->ee_len = cpu_to_le16(next_len + map_len);


   allocated = map_len;
  }
 }
 if (allocated) {

  ext4_ext_dirty(handle, inode, path + depth);


  path[depth].p_ext = abut_ex;
  goto out;
 } else
  allocated = ee_len - (map->m_lblk - ee_block);

 WARN_ON(map->m_lblk < ee_block);




 split_flag |= ee_block + ee_len <= eof_block ? EXT4_EXT_MAY_ZEROOUT : 0;

 if (EXT4_EXT_MAY_ZEROOUT & split_flag)
  max_zeroout = sbi->s_extent_max_zeroout_kb >>
   (inode->i_sb->s_blocksize_bits - 10);

 if (IS_ENCRYPTED(inode))
  max_zeroout = 0;
 split_map.m_lblk = map->m_lblk;
 split_map.m_len = map->m_len;

 if (max_zeroout && (allocated > split_map.m_len)) {
  if (allocated <= max_zeroout) {

   zero_ex1.ee_block =
     cpu_to_le32(split_map.m_lblk +
          split_map.m_len);
   zero_ex1.ee_len =
    cpu_to_le16(allocated - split_map.m_len);
   ext4_ext_store_pblock(&zero_ex1,
    ext4_ext_pblock(ex) + split_map.m_lblk +
    split_map.m_len - ee_block);
   err = ext4_ext_zeroout(inode, &zero_ex1);
   if (err)
    goto out;
   split_map.m_len = allocated;
  }
  if (split_map.m_lblk - ee_block + split_map.m_len <
        max_zeroout) {

   if (split_map.m_lblk != ee_block) {
    zero_ex2.ee_block = ex->ee_block;
    zero_ex2.ee_len = cpu_to_le16(split_map.m_lblk -
       ee_block);
    ext4_ext_store_pblock(&zero_ex2,
            ext4_ext_pblock(ex));
    err = ext4_ext_zeroout(inode, &zero_ex2);
    if (err)
     goto out;
   }

   split_map.m_len += split_map.m_lblk - ee_block;
   split_map.m_lblk = ee_block;
   allocated = map->m_len;
  }
 }

 err = ext4_split_extent(handle, inode, ppath, &split_map, split_flag,
    flags);
 if (err > 0)
  err = 0;
out:

 if (!err) {
  err = ext4_zeroout_es(inode, &zero_ex1);
  if (!err)
   err = ext4_zeroout_es(inode, &zero_ex2);
 }
 return err ? err : allocated;
}

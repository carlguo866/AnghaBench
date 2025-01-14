
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_ext2fs {int e2fs_bsize; } ;
struct inode {struct m_ext2fs* i_e2fs; } ;
struct ext2fs_htree_tail {int ht_checksum; } ;
struct ext2fs_htree_entry {int dummy; } ;
struct ext2fs_htree_count {int h_entries_max; int h_entries_num; } ;
struct ext2fs_direct_2 {int dummy; } ;


 int EXT2F_ROCOMPAT_METADATA_CKSUM ;
 int EXT2_HAS_RO_COMPAT_FEATURE (struct m_ext2fs*,int ) ;
 int ext2_dx_csum (struct inode*,struct ext2fs_direct_2*,int,int,struct ext2fs_htree_tail*) ;
 struct ext2fs_htree_count* ext2_get_dx_count (struct inode*,struct ext2fs_direct_2*,int*) ;

void
ext2_dx_csum_set(struct inode *ip, struct ext2fs_direct_2 *ep)
{
 struct m_ext2fs *fs;
 struct ext2fs_htree_count *cp;
 struct ext2fs_htree_tail *tp;
 int count_offset, limit, count;

 fs = ip->i_e2fs;

 if (!EXT2_HAS_RO_COMPAT_FEATURE(fs, EXT2F_ROCOMPAT_METADATA_CKSUM))
  return;

 cp = ext2_get_dx_count(ip, ep, &count_offset);
 if (cp == ((void*)0))
  return;

 limit = cp->h_entries_max;
 count = cp->h_entries_num;
 if (count_offset + (limit * sizeof(struct ext2fs_htree_entry)) >
     ip->i_e2fs->e2fs_bsize - sizeof(struct ext2fs_htree_tail))
  return;

 tp = (struct ext2fs_htree_tail *)(((struct ext2fs_htree_entry *)cp) + limit);
 tp->ht_checksum = ext2_dx_csum(ip, ep, count_offset, count, tp);
}

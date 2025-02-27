
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize_bits; } ;
struct ocfs2_local_disk_dqblk {int dummy; } ;
typedef int loff_t ;


 int ol_quota_chunk_block (struct super_block*,int) ;
 int ol_quota_entries_per_block (struct super_block*) ;

__attribute__((used)) static int ol_dqblk_chunk_off(struct super_block *sb, int c, loff_t off)
{
 int epb = ol_quota_entries_per_block(sb);

 return ((off >> sb->s_blocksize_bits) -
   ol_quota_chunk_block(sb, c) - 1) * epb
        + ((unsigned int)(off & ((1 << sb->s_blocksize_bits) - 1))) /
   sizeof(struct ocfs2_local_disk_dqblk);
}

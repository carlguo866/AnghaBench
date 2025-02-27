
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef int u8 ;
struct sysv_sb_info {unsigned int s_ninodes; } ;
struct sysv_inode_info {int * i_data; scalar_t__ i_dir_start_lookup; } ;
struct sysv_inode {int * i_data; int i_ctime; int i_mtime; int i_atime; int i_size; int i_nlink; int i_gid; int i_uid; int i_mode; } ;
struct super_block {int s_id; } ;
struct TYPE_8__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_7__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct inode {int i_state; void* i_mode; scalar_t__ i_blocks; TYPE_4__ i_mtime; TYPE_3__ i_atime; TYPE_2__ i_ctime; void* i_size; void* i_nlink; scalar_t__ i_gid; scalar_t__ i_uid; TYPE_1__* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ gid_t ;
struct TYPE_5__ {int s_id; } ;


 int EIO ;
 int ENOMEM ;
 struct inode* ERR_PTR (int ) ;
 int I_NEW ;
 struct sysv_inode_info* SYSV_I (struct inode*) ;
 struct sysv_sb_info* SYSV_SB (struct super_block*) ;
 scalar_t__ S_ISBLK (void*) ;
 scalar_t__ S_ISCHR (void*) ;
 int brelse (struct buffer_head*) ;
 void* fs16_to_cpu (struct sysv_sb_info*,int ) ;
 void* fs32_to_cpu (struct sysv_sb_info*,int ) ;
 int iget_failed (struct inode*) ;
 struct inode* iget_locked (struct super_block*,unsigned int) ;
 int old_decode_dev (void*) ;
 int printk (char*,int ,...) ;
 int read3byte (struct sysv_sb_info*,int *,int *) ;
 struct sysv_inode* sysv_raw_inode (struct super_block*,unsigned int,struct buffer_head**) ;
 int sysv_set_inode (struct inode*,int ) ;
 int unlock_new_inode (struct inode*) ;

struct inode *sysv_iget(struct super_block *sb, unsigned int ino)
{
 struct sysv_sb_info * sbi = SYSV_SB(sb);
 struct buffer_head * bh;
 struct sysv_inode * raw_inode;
 struct sysv_inode_info * si;
 struct inode *inode;
 unsigned int block;

 if (!ino || ino > sbi->s_ninodes) {
  printk("Bad inode number on dev %s: %d is out of range\n",
         sb->s_id, ino);
  return ERR_PTR(-EIO);
 }

 inode = iget_locked(sb, ino);
 if (!inode)
  return ERR_PTR(-ENOMEM);
 if (!(inode->i_state & I_NEW))
  return inode;

 raw_inode = sysv_raw_inode(sb, ino, &bh);
 if (!raw_inode) {
  printk("Major problem: unable to read inode from dev %s\n",
         inode->i_sb->s_id);
  goto bad_inode;
 }

 inode->i_mode = fs16_to_cpu(sbi, raw_inode->i_mode);
 inode->i_uid = (uid_t)fs16_to_cpu(sbi, raw_inode->i_uid);
 inode->i_gid = (gid_t)fs16_to_cpu(sbi, raw_inode->i_gid);
 inode->i_nlink = fs16_to_cpu(sbi, raw_inode->i_nlink);
 inode->i_size = fs32_to_cpu(sbi, raw_inode->i_size);
 inode->i_atime.tv_sec = fs32_to_cpu(sbi, raw_inode->i_atime);
 inode->i_mtime.tv_sec = fs32_to_cpu(sbi, raw_inode->i_mtime);
 inode->i_ctime.tv_sec = fs32_to_cpu(sbi, raw_inode->i_ctime);
 inode->i_ctime.tv_nsec = 0;
 inode->i_atime.tv_nsec = 0;
 inode->i_mtime.tv_nsec = 0;
 inode->i_blocks = 0;

 si = SYSV_I(inode);
 for (block = 0; block < 10+1+1+1; block++)
  read3byte(sbi, &raw_inode->i_data[3*block],
    (u8 *)&si->i_data[block]);
 brelse(bh);
 si->i_dir_start_lookup = 0;
 if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode))
  sysv_set_inode(inode,
          old_decode_dev(fs32_to_cpu(sbi, si->i_data[0])));
 else
  sysv_set_inode(inode, 0);
 unlock_new_inode(inode);
 return inode;

bad_inode:
 iget_failed(inode);
 return ERR_PTR(-EIO);
}

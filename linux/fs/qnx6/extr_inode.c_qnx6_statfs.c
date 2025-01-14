
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct super_block {int s_blocksize; int s_magic; TYPE_1__* s_bdev; } ;
struct qnx6_sb_info {TYPE_2__* sb; } ;
struct TYPE_6__ {void** val; } ;
struct kstatfs {TYPE_3__ f_fsid; int f_namelen; void* f_bfree; void* f_bavail; void* f_ffree; void* f_files; void* f_blocks; int f_bsize; int f_type; } ;
struct dentry {struct super_block* d_sb; } ;
struct TYPE_5__ {int sb_free_inodes; int sb_num_inodes; int sb_free_blocks; int sb_num_blocks; } ;
struct TYPE_4__ {int bd_dev; } ;


 int QNX6_LONG_NAME_MAX ;
 struct qnx6_sb_info* QNX6_SB (struct super_block*) ;
 void* fs32_to_cpu (struct qnx6_sb_info*,int ) ;
 int huge_encode_dev (int ) ;

__attribute__((used)) static int qnx6_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct super_block *sb = dentry->d_sb;
 struct qnx6_sb_info *sbi = QNX6_SB(sb);
 u64 id = huge_encode_dev(sb->s_bdev->bd_dev);

 buf->f_type = sb->s_magic;
 buf->f_bsize = sb->s_blocksize;
 buf->f_blocks = fs32_to_cpu(sbi, sbi->sb->sb_num_blocks);
 buf->f_bfree = fs32_to_cpu(sbi, sbi->sb->sb_free_blocks);
 buf->f_files = fs32_to_cpu(sbi, sbi->sb->sb_num_inodes);
 buf->f_ffree = fs32_to_cpu(sbi, sbi->sb->sb_free_inodes);
 buf->f_bavail = buf->f_bfree;
 buf->f_namelen = QNX6_LONG_NAME_MAX;
 buf->f_fsid.val[0] = (u32)id;
 buf->f_fsid.val[1] = (u32)(id >> 32);

 return 0;
}

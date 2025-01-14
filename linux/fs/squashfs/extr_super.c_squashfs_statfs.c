
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct squashfs_sb_info {int bytes_used; int block_log; int inodes; int block_size; } ;
struct TYPE_6__ {void** val; } ;
struct kstatfs {int f_blocks; TYPE_3__ f_fsid; int f_namelen; scalar_t__ f_ffree; int f_files; scalar_t__ f_bavail; scalar_t__ f_bfree; int f_bsize; int f_type; } ;
struct dentry {TYPE_2__* d_sb; } ;
struct TYPE_5__ {TYPE_1__* s_bdev; struct squashfs_sb_info* s_fs_info; } ;
struct TYPE_4__ {int bd_dev; } ;


 int SQUASHFS_MAGIC ;
 int SQUASHFS_NAME_LEN ;
 int TRACE (char*) ;
 int huge_encode_dev (int ) ;

__attribute__((used)) static int squashfs_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct squashfs_sb_info *msblk = dentry->d_sb->s_fs_info;
 u64 id = huge_encode_dev(dentry->d_sb->s_bdev->bd_dev);

 TRACE("Entered squashfs_statfs\n");

 buf->f_type = SQUASHFS_MAGIC;
 buf->f_bsize = msblk->block_size;
 buf->f_blocks = ((msblk->bytes_used - 1) >> msblk->block_log) + 1;
 buf->f_bfree = buf->f_bavail = 0;
 buf->f_files = msblk->inodes;
 buf->f_ffree = 0;
 buf->f_namelen = SQUASHFS_NAME_LEN;
 buf->f_fsid.val[0] = (u32)id;
 buf->f_fsid.val[1] = (u32)(id >> 32);

 return 0;
}

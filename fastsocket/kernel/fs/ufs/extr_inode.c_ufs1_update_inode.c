
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_13__ {int * i_symlink; int * i_data; } ;
struct ufs_inode_info {TYPE_10__ i_u1; int i_oeftflag; int i_shadow; int i_flags; } ;
struct TYPE_14__ {int * ui_db; } ;
struct TYPE_24__ {TYPE_11__ ui_symlink; TYPE_11__ ui_addr; } ;
struct TYPE_22__ {void* ui_oeftflag; void* ui_shadow; } ;
struct TYPE_23__ {TYPE_7__ ui_sun; } ;
struct TYPE_21__ {scalar_t__ tv_usec; void* tv_sec; } ;
struct TYPE_19__ {scalar_t__ tv_usec; void* tv_sec; } ;
struct TYPE_17__ {scalar_t__ tv_usec; void* tv_sec; } ;
struct ufs_inode {TYPE_9__ ui_u2; TYPE_8__ ui_u3; void* ui_gen; void* ui_flags; void* ui_blocks; TYPE_6__ ui_mtime; TYPE_4__ ui_ctime; TYPE_2__ ui_atime; int ui_size; void* ui_nlink; void* ui_mode; } ;
struct super_block {int dummy; } ;
struct TYPE_20__ {int tv_sec; } ;
struct TYPE_18__ {int tv_sec; } ;
struct TYPE_16__ {int tv_sec; } ;
struct inode {int i_nlink; int i_blocks; int i_mode; int i_generation; TYPE_5__ i_mtime; TYPE_3__ i_ctime; TYPE_1__ i_atime; int i_size; int i_gid; int i_uid; struct super_block* i_sb; } ;
struct TYPE_15__ {int s_flags; } ;


 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 struct ufs_inode_info* UFS_I (struct inode*) ;
 TYPE_12__* UFS_SB (struct super_block*) ;
 int UFS_UID_EFT ;
 int UFS_UID_MASK ;
 void* cpu_to_fs16 (struct super_block*,int ) ;
 void* cpu_to_fs32 (struct super_block*,int ) ;
 int cpu_to_fs64 (struct super_block*,int ) ;
 int memcpy (TYPE_11__*,int *,int) ;
 int memset (struct ufs_inode*,int ,int) ;
 int ufs_set_inode_gid (struct super_block*,struct ufs_inode*,int ) ;
 int ufs_set_inode_uid (struct super_block*,struct ufs_inode*,int ) ;

__attribute__((used)) static void ufs1_update_inode(struct inode *inode, struct ufs_inode *ufs_inode)
{
 struct super_block *sb = inode->i_sb;
  struct ufs_inode_info *ufsi = UFS_I(inode);

 ufs_inode->ui_mode = cpu_to_fs16(sb, inode->i_mode);
 ufs_inode->ui_nlink = cpu_to_fs16(sb, inode->i_nlink);

 ufs_set_inode_uid(sb, ufs_inode, inode->i_uid);
 ufs_set_inode_gid(sb, ufs_inode, inode->i_gid);

 ufs_inode->ui_size = cpu_to_fs64(sb, inode->i_size);
 ufs_inode->ui_atime.tv_sec = cpu_to_fs32(sb, inode->i_atime.tv_sec);
 ufs_inode->ui_atime.tv_usec = 0;
 ufs_inode->ui_ctime.tv_sec = cpu_to_fs32(sb, inode->i_ctime.tv_sec);
 ufs_inode->ui_ctime.tv_usec = 0;
 ufs_inode->ui_mtime.tv_sec = cpu_to_fs32(sb, inode->i_mtime.tv_sec);
 ufs_inode->ui_mtime.tv_usec = 0;
 ufs_inode->ui_blocks = cpu_to_fs32(sb, inode->i_blocks);
 ufs_inode->ui_flags = cpu_to_fs32(sb, ufsi->i_flags);
 ufs_inode->ui_gen = cpu_to_fs32(sb, inode->i_generation);

 if ((UFS_SB(sb)->s_flags & UFS_UID_MASK) == UFS_UID_EFT) {
  ufs_inode->ui_u3.ui_sun.ui_shadow = cpu_to_fs32(sb, ufsi->i_shadow);
  ufs_inode->ui_u3.ui_sun.ui_oeftflag = cpu_to_fs32(sb, ufsi->i_oeftflag);
 }

 if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode)) {

  ufs_inode->ui_u2.ui_addr.ui_db[0] = ufsi->i_u1.i_data[0];
 } else if (inode->i_blocks) {
  memcpy(&ufs_inode->ui_u2.ui_addr, ufsi->i_u1.i_data,
         sizeof(ufs_inode->ui_u2.ui_addr));
 }
 else {
  memcpy(&ufs_inode->ui_u2.ui_symlink, ufsi->i_u1.i_symlink,
         sizeof(ufs_inode->ui_u2.ui_symlink));
 }

 if (!inode->i_nlink)
  memset (ufs_inode, 0, sizeof(struct ufs_inode));
}

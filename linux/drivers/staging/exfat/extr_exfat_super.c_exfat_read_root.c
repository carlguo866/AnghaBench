
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_blocks; int i_ctime; int i_atime; int i_mtime; int * i_fop; int * i_op; int i_mode; scalar_t__ i_generation; int i_gid; int i_uid; struct super_block* i_sb; } ;
struct fs_info_t {int cluster_size; scalar_t__ root_dir; } ;
struct TYPE_7__ {int fs_gid; int fs_uid; } ;
struct exfat_sb_info {TYPE_3__ options; struct fs_info_t fs_info; } ;
struct dir_entry_t {scalar_t__ NumSubdirs; int Size; } ;
typedef int loff_t ;
struct TYPE_5__ {int flags; scalar_t__ dir; } ;
struct TYPE_6__ {int entry; int flags; int hint_last_off; scalar_t__ rwoffset; int type; scalar_t__ start_clu; TYPE_1__ dir; } ;
struct TYPE_8__ {int i_pos; int mmu_private; int * target; TYPE_2__ fid; } ;


 int ATTR_SUBDIR ;
 TYPE_4__* EXFAT_I (struct inode*) ;
 struct exfat_sb_info* EXFAT_SB (struct super_block*) ;
 int INC_IVERSION (struct inode*) ;
 int TYPE_DIR ;
 int current_time (struct inode*) ;
 int exfat_dir_inode_operations ;
 int exfat_dir_operations ;
 int exfat_make_mode (struct exfat_sb_info*,int ,int) ;
 int exfat_save_attr (struct inode*,int ) ;
 int ffsReadStat (struct inode*,struct dir_entry_t*) ;
 int i_size_read (struct inode*) ;
 int i_size_write (struct inode*,int ) ;
 int set_nlink (struct inode*,scalar_t__) ;

__attribute__((used)) static int exfat_read_root(struct inode *inode)
{
 struct super_block *sb = inode->i_sb;
 struct exfat_sb_info *sbi = EXFAT_SB(sb);
 struct fs_info_t *p_fs = &(sbi->fs_info);
 struct dir_entry_t info;

 EXFAT_I(inode)->fid.dir.dir = p_fs->root_dir;
 EXFAT_I(inode)->fid.dir.flags = 0x01;
 EXFAT_I(inode)->fid.entry = -1;
 EXFAT_I(inode)->fid.start_clu = p_fs->root_dir;
 EXFAT_I(inode)->fid.flags = 0x01;
 EXFAT_I(inode)->fid.type = TYPE_DIR;
 EXFAT_I(inode)->fid.rwoffset = 0;
 EXFAT_I(inode)->fid.hint_last_off = -1;

 EXFAT_I(inode)->target = ((void*)0);

 ffsReadStat(inode, &info);

 inode->i_uid = sbi->options.fs_uid;
 inode->i_gid = sbi->options.fs_gid;
 INC_IVERSION(inode);
 inode->i_generation = 0;
 inode->i_mode = exfat_make_mode(sbi, ATTR_SUBDIR, 0777);
 inode->i_op = &exfat_dir_inode_operations;
 inode->i_fop = &exfat_dir_operations;

 i_size_write(inode, info.Size);
 inode->i_blocks = ((i_size_read(inode) + (p_fs->cluster_size - 1))
    & ~((loff_t)p_fs->cluster_size - 1)) >> 9;
 EXFAT_I(inode)->i_pos = ((loff_t)p_fs->root_dir << 32) | 0xffffffff;
 EXFAT_I(inode)->mmu_private = i_size_read(inode);

 exfat_save_attr(inode, ATTR_SUBDIR);
 inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
 set_nlink(inode, info.NumSubdirs + 2);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int * s_fs_info; } ;
struct hfsplus_vh {int attributes; int modify_date; } ;
struct hfsplus_sb_info {int nls; int * s_backup_vhdr_buf; int * s_vhdr_buf; int hidden_dir; int alloc_file; int ext_tree; int cat_tree; int attr_tree; struct hfsplus_vh* s_vhdr; int sync_work; } ;


 struct hfsplus_sb_info* HFSPLUS_SB (struct super_block*) ;
 int HFSPLUS_VOL_INCNSTNT ;
 int HFSPLUS_VOL_UNMNT ;
 int SUPER ;
 int cancel_delayed_work_sync (int *) ;
 int cpu_to_be32 (int ) ;
 int hfs_btree_close (int ) ;
 int hfs_dbg (int ,char*) ;
 int hfsp_now2mt () ;
 int hfsplus_sync_fs (struct super_block*,int) ;
 int iput (int ) ;
 int kfree (int *) ;
 int sb_rdonly (struct super_block*) ;
 int unload_nls (int ) ;

__attribute__((used)) static void hfsplus_put_super(struct super_block *sb)
{
 struct hfsplus_sb_info *sbi = HFSPLUS_SB(sb);

 hfs_dbg(SUPER, "hfsplus_put_super\n");

 cancel_delayed_work_sync(&sbi->sync_work);

 if (!sb_rdonly(sb) && sbi->s_vhdr) {
  struct hfsplus_vh *vhdr = sbi->s_vhdr;

  vhdr->modify_date = hfsp_now2mt();
  vhdr->attributes |= cpu_to_be32(HFSPLUS_VOL_UNMNT);
  vhdr->attributes &= cpu_to_be32(~HFSPLUS_VOL_INCNSTNT);

  hfsplus_sync_fs(sb, 1);
 }

 hfs_btree_close(sbi->attr_tree);
 hfs_btree_close(sbi->cat_tree);
 hfs_btree_close(sbi->ext_tree);
 iput(sbi->alloc_file);
 iput(sbi->hidden_dir);
 kfree(sbi->s_vhdr_buf);
 kfree(sbi->s_backup_vhdr_buf);
 unload_nls(sbi->nls);
 kfree(sb->s_fs_info);
 sb->s_fs_info = ((void*)0);
}

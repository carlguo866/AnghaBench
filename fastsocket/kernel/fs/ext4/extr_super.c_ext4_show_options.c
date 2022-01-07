
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {struct super_block* mnt_sb; } ;
struct super_block {int dummy; } ;
struct seq_file {int dummy; } ;
struct ext4_super_block {int s_def_resgid; int s_def_resuid; int s_errors; int s_default_mount_opts; } ;
struct ext4_sb_info {int s_sb_block; int s_resuid; int s_resgid; int s_commit_interval; scalar_t__ s_min_batch_time; scalar_t__ s_max_batch_time; int s_stripe; unsigned int s_inode_readahead_blks; scalar_t__ s_li_wait_mult; struct ext4_super_block* s_es; } ;


 int BARRIER ;
 int BLOCK_VALIDITY ;
 int DATA_ERR_ABORT ;
 int DATA_FLAGS ;
 int DEBUG ;
 int DELALLOC ;
 int DISCARD ;
 int ERRORS_CONT ;
 int ERRORS_PANIC ;
 int ERRORS_RO ;
 unsigned long EXT4_DEFM_ACL ;
 unsigned long EXT4_DEFM_BLOCK_VALIDITY ;
 unsigned long EXT4_DEFM_BSDGROUPS ;
 unsigned long EXT4_DEFM_DEBUG ;
 unsigned long EXT4_DEFM_DISCARD ;
 unsigned long EXT4_DEFM_NODELALLOC ;
 unsigned long EXT4_DEFM_UID16 ;
 unsigned long EXT4_DEFM_XATTR_USER ;
 unsigned int EXT4_DEF_INODE_READAHEAD_BLKS ;
 scalar_t__ EXT4_DEF_LI_WAIT_MULT ;
 scalar_t__ EXT4_DEF_MAX_BATCH_TIME ;
 scalar_t__ EXT4_DEF_MIN_BATCH_TIME ;
 int EXT4_DEF_RESGID ;
 int EXT4_DEF_RESUID ;
 int EXT4_ERRORS_CONTINUE ;
 int EXT4_ERRORS_PANIC ;
 scalar_t__ EXT4_MOUNT_JOURNAL_DATA ;
 scalar_t__ EXT4_MOUNT_ORDERED_DATA ;
 scalar_t__ EXT4_MOUNT_WRITEBACK_DATA ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int GRPID ;
 int HZ ;
 int INIT_INODE_TABLE ;
 int I_VERSION ;
 int JBD2_DEFAULT_MAX_COMMIT_AGE ;
 int JOURNAL_ASYNC_COMMIT ;
 int MINIX_DF ;
 int NOBH ;
 int NOLOAD ;
 int NO_AUTO_DA_ALLOC ;
 int NO_UID32 ;
 int OLDALLOC ;
 int POSIX_ACL ;
 int XATTR_USER ;
 int ext4_show_quota_options (struct seq_file*,struct super_block*) ;
 int le16_to_cpu (int ) ;
 unsigned long le32_to_cpu (int ) ;
 int seq_printf (struct seq_file*,char*,unsigned int) ;
 int seq_puts (struct seq_file*,char*) ;
 scalar_t__ test_opt (struct super_block*,int ) ;

__attribute__((used)) static int ext4_show_options(struct seq_file *seq, struct vfsmount *vfs)
{
 int def_errors;
 unsigned long def_mount_opts;
 struct super_block *sb = vfs->mnt_sb;
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 struct ext4_super_block *es = sbi->s_es;

 def_mount_opts = le32_to_cpu(es->s_default_mount_opts);
 def_errors = le16_to_cpu(es->s_errors);

 if (sbi->s_sb_block != 1)
  seq_printf(seq, ",sb=%llu", sbi->s_sb_block);
 if (test_opt(sb, MINIX_DF))
  seq_puts(seq, ",minixdf");
 if (test_opt(sb, GRPID) && !(def_mount_opts & EXT4_DEFM_BSDGROUPS))
  seq_puts(seq, ",grpid");
 if (!test_opt(sb, GRPID) && (def_mount_opts & EXT4_DEFM_BSDGROUPS))
  seq_puts(seq, ",nogrpid");
 if (sbi->s_resuid != EXT4_DEF_RESUID ||
     le16_to_cpu(es->s_def_resuid) != EXT4_DEF_RESUID) {
  seq_printf(seq, ",resuid=%u", sbi->s_resuid);
 }
 if (sbi->s_resgid != EXT4_DEF_RESGID ||
     le16_to_cpu(es->s_def_resgid) != EXT4_DEF_RESGID) {
  seq_printf(seq, ",resgid=%u", sbi->s_resgid);
 }
 if (test_opt(sb, ERRORS_RO)) {
  if (def_errors == EXT4_ERRORS_PANIC ||
      def_errors == EXT4_ERRORS_CONTINUE) {
   seq_puts(seq, ",errors=remount-ro");
  }
 }
 if (test_opt(sb, ERRORS_CONT) && def_errors != EXT4_ERRORS_CONTINUE)
  seq_puts(seq, ",errors=continue");
 if (test_opt(sb, ERRORS_PANIC) && def_errors != EXT4_ERRORS_PANIC)
  seq_puts(seq, ",errors=panic");
 if (test_opt(sb, NO_UID32) && !(def_mount_opts & EXT4_DEFM_UID16))
  seq_puts(seq, ",nouid32");
 if (test_opt(sb, DEBUG) && !(def_mount_opts & EXT4_DEFM_DEBUG))
  seq_puts(seq, ",debug");
 if (test_opt(sb, OLDALLOC))
  seq_puts(seq, ",oldalloc");
 if (sbi->s_commit_interval != JBD2_DEFAULT_MAX_COMMIT_AGE*HZ) {
  seq_printf(seq, ",commit=%u",
      (unsigned) (sbi->s_commit_interval / HZ));
 }
 if (sbi->s_min_batch_time != EXT4_DEF_MIN_BATCH_TIME) {
  seq_printf(seq, ",min_batch_time=%u",
      (unsigned) sbi->s_min_batch_time);
 }
 if (sbi->s_max_batch_time != EXT4_DEF_MAX_BATCH_TIME) {
  seq_printf(seq, ",max_batch_time=%u",
      (unsigned) sbi->s_min_batch_time);
 }






 seq_puts(seq, ",barrier=");
 seq_puts(seq, test_opt(sb, BARRIER) ? "1" : "0");
 if (test_opt(sb, JOURNAL_ASYNC_COMMIT))
  seq_puts(seq, ",journal_async_commit");
 if (test_opt(sb, NOBH))
  seq_puts(seq, ",nobh");
 if (test_opt(sb, I_VERSION))
  seq_puts(seq, ",i_version");
 if (!test_opt(sb, DELALLOC) &&
     !(def_mount_opts & EXT4_DEFM_NODELALLOC))
  seq_puts(seq, ",nodelalloc");

 if (sbi->s_stripe)
  seq_printf(seq, ",stripe=%lu", sbi->s_stripe);




 if (test_opt(sb, DATA_FLAGS) == EXT4_MOUNT_JOURNAL_DATA)
  seq_puts(seq, ",data=journal");
 else if (test_opt(sb, DATA_FLAGS) == EXT4_MOUNT_ORDERED_DATA)
  seq_puts(seq, ",data=ordered");
 else if (test_opt(sb, DATA_FLAGS) == EXT4_MOUNT_WRITEBACK_DATA)
  seq_puts(seq, ",data=writeback");

 if (sbi->s_inode_readahead_blks != EXT4_DEF_INODE_READAHEAD_BLKS)
  seq_printf(seq, ",inode_readahead_blks=%u",
      sbi->s_inode_readahead_blks);

 if (test_opt(sb, DATA_ERR_ABORT))
  seq_puts(seq, ",data_err=abort");

 if (test_opt(sb, NO_AUTO_DA_ALLOC))
  seq_puts(seq, ",noauto_da_alloc");

 if (test_opt(sb, DISCARD) && !(def_mount_opts & EXT4_DEFM_DISCARD))
  seq_puts(seq, ",discard");

 if (test_opt(sb, NOLOAD))
  seq_puts(seq, ",norecovery");

 if (test_opt(sb, BLOCK_VALIDITY) &&
     !(def_mount_opts & EXT4_DEFM_BLOCK_VALIDITY))
  seq_puts(seq, ",block_validity");

 if (!test_opt(sb, INIT_INODE_TABLE))
  seq_puts(seq, ",noinit_itable");
 else if (sbi->s_li_wait_mult != EXT4_DEF_LI_WAIT_MULT)
  seq_printf(seq, ",init_itable=%u",
      (unsigned) sbi->s_li_wait_mult);

 ext4_show_quota_options(seq, sb);

 return 0;
}

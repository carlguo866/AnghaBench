
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct exfat_mount_options {scalar_t__ errors; scalar_t__ discard; scalar_t__ casesensitive; scalar_t__ allow_utime; scalar_t__ fs_dmask; scalar_t__ fs_fmask; int fs_gid; int fs_uid; } ;
struct exfat_sb_info {TYPE_2__* nls_io; TYPE_1__* nls_disk; struct exfat_mount_options options; } ;
struct dentry {int d_sb; } ;
struct TYPE_4__ {scalar_t__ charset; } ;
struct TYPE_3__ {scalar_t__ charset; } ;


 scalar_t__ EXFAT_ERRORS_CONT ;
 scalar_t__ EXFAT_ERRORS_PANIC ;
 struct exfat_sb_info* EXFAT_SB (int ) ;
 scalar_t__ __kgid_val (int ) ;
 scalar_t__ __kuid_val (int ) ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int exfat_show_options(struct seq_file *m, struct dentry *root)
{
 struct exfat_sb_info *sbi = EXFAT_SB(root->d_sb);
 struct exfat_mount_options *opts = &sbi->options;

 if (__kuid_val(opts->fs_uid))
  seq_printf(m, ",uid=%u", __kuid_val(opts->fs_uid));
 if (__kgid_val(opts->fs_gid))
  seq_printf(m, ",gid=%u", __kgid_val(opts->fs_gid));
 seq_printf(m, ",fmask=%04o", opts->fs_fmask);
 seq_printf(m, ",dmask=%04o", opts->fs_dmask);
 if (opts->allow_utime)
  seq_printf(m, ",allow_utime=%04o", opts->allow_utime);
 if (sbi->nls_disk)
  seq_printf(m, ",codepage=%s", sbi->nls_disk->charset);
 if (sbi->nls_io)
  seq_printf(m, ",iocharset=%s", sbi->nls_io->charset);
 seq_printf(m, ",namecase=%u", opts->casesensitive);
 if (opts->errors == EXFAT_ERRORS_CONT)
  seq_puts(m, ",errors=continue");
 else if (opts->errors == EXFAT_ERRORS_PANIC)
  seq_puts(m, ",errors=panic");
 else
  seq_puts(m, ",errors=remount-ro");




 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {unsigned long s_flags; } ;
struct pohmelfs_sb {int dummy; } ;


 int MS_RDONLY ;
 struct pohmelfs_sb* POHMELFS_SB (struct super_block*) ;
 int pohmelfs_parse_options (char*,struct pohmelfs_sb*,int) ;

__attribute__((used)) static int pohmelfs_remount(struct super_block *sb, int *flags, char *data)
{
 int err;
 struct pohmelfs_sb *psb = POHMELFS_SB(sb);
 unsigned long old_sb_flags = sb->s_flags;

 err = pohmelfs_parse_options(data, psb, 1);
 if (err)
  goto err_out_restore;

 if (!(*flags & MS_RDONLY))
  sb->s_flags &= ~MS_RDONLY;
 return 0;

err_out_restore:
 sb->s_flags = old_sb_flags;
 return err;
}

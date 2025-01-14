
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct ovl_fs* s_fs_info; } ;
struct ovl_fs {int dummy; } ;


 int EROFS ;
 int SB_RDONLY ;
 scalar_t__ ovl_force_readonly (struct ovl_fs*) ;

__attribute__((used)) static int ovl_remount(struct super_block *sb, int *flags, char *data)
{
 struct ovl_fs *ofs = sb->s_fs_info;

 if (!(*flags & SB_RDONLY) && ovl_force_readonly(ofs))
  return -EROFS;

 return 0;
}

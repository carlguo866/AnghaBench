
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int SB_NOATIME ;
 int sync_filesystem (struct super_block*) ;

__attribute__((used)) static int openprom_remount(struct super_block *sb, int *flags, char *data)
{
 sync_filesystem(sb);
 *flags |= SB_NOATIME;
 return 0;
}

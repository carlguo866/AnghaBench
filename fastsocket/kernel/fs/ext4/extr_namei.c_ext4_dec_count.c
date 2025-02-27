
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_nlink; int i_mode; } ;
typedef int handle_t ;


 scalar_t__ S_ISDIR (int ) ;
 int drop_nlink (struct inode*) ;
 int inc_nlink (struct inode*) ;

__attribute__((used)) static void ext4_dec_count(handle_t *handle, struct inode *inode)
{
 drop_nlink(inode);
 if (S_ISDIR(inode->i_mode) && inode->i_nlink == 0)
  inc_nlink(inode);
}

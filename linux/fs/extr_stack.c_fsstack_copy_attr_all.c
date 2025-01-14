
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_nlink; int i_flags; int i_blkbits; int i_ctime; int i_mtime; int i_atime; int i_rdev; int i_gid; int i_uid; int i_mode; } ;


 int set_nlink (struct inode*,int ) ;

void fsstack_copy_attr_all(struct inode *dest, const struct inode *src)
{
 dest->i_mode = src->i_mode;
 dest->i_uid = src->i_uid;
 dest->i_gid = src->i_gid;
 dest->i_rdev = src->i_rdev;
 dest->i_atime = src->i_atime;
 dest->i_mtime = src->i_mtime;
 dest->i_ctime = src->i_ctime;
 dest->i_blkbits = src->i_blkbits;
 dest->i_flags = src->i_flags;
 set_nlink(dest, src->i_nlink);
}

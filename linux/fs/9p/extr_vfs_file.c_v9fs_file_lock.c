
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_data; int i_mapping; } ;
struct file_lock {scalar_t__ fl_type; } ;
struct file {int dummy; } ;


 int ENOLCK ;
 scalar_t__ F_UNLCK ;
 scalar_t__ IS_SETLK (int) ;
 scalar_t__ IS_SETLKW (int) ;
 int P9_DEBUG_VFS ;
 scalar_t__ __mandatory_lock (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 int filemap_write_and_wait (int ) ;
 int invalidate_mapping_pages (int *,int ,int) ;
 int p9_debug (int ,char*,struct file*,struct file_lock*) ;

__attribute__((used)) static int v9fs_file_lock(struct file *filp, int cmd, struct file_lock *fl)
{
 int res = 0;
 struct inode *inode = file_inode(filp);

 p9_debug(P9_DEBUG_VFS, "filp: %p lock: %p\n", filp, fl);


 if (__mandatory_lock(inode) && fl->fl_type != F_UNLCK)
  return -ENOLCK;

 if ((IS_SETLK(cmd) || IS_SETLKW(cmd)) && fl->fl_type != F_UNLCK) {
  filemap_write_and_wait(inode->i_mapping);
  invalidate_mapping_pages(&inode->i_data, 0, -1);
 }

 return res;
}

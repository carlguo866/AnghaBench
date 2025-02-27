
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mapping; } ;
struct fsg_lun {struct file* filp; } ;
struct file {int dummy; } ;


 int VLDBG (struct fsg_lun*,char*,unsigned long) ;
 struct inode* file_inode (struct file*) ;
 unsigned long invalidate_mapping_pages (int ,int ,int) ;

__attribute__((used)) static void invalidate_sub(struct fsg_lun *curlun)
{
 struct file *filp = curlun->filp;
 struct inode *inode = file_inode(filp);
 unsigned long rc;

 rc = invalidate_mapping_pages(inode->i_mapping, 0, -1);
 VLDBG(curlun, "invalidate_mapping_pages -> %ld\n", rc);
}

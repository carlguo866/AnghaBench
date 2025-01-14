
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {int ki_flags; int ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {struct inode* host; } ;
typedef scalar_t__ ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int * backing_dev_info; } ;


 int IOCB_DIRECT ;
 scalar_t__ IS_DAX (struct inode*) ;
 int PAGE_SHIFT ;
 TYPE_1__* current ;
 scalar_t__ file_remove_privs (struct file*) ;
 scalar_t__ file_update_time (struct file*) ;
 scalar_t__ filemap_write_and_wait_range (struct address_space*,int,int) ;
 scalar_t__ generic_file_direct_write (struct kiocb*,struct iov_iter*) ;
 scalar_t__ generic_perform_write (struct file*,struct iov_iter*,int) ;
 int * inode_to_bdi (struct inode*) ;
 int invalidate_mapping_pages (struct address_space*,int,int) ;
 int iov_iter_count (struct iov_iter*) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

ssize_t __generic_file_write_iter(struct kiocb *iocb, struct iov_iter *from)
{
 struct file *file = iocb->ki_filp;
 struct address_space * mapping = file->f_mapping;
 struct inode *inode = mapping->host;
 ssize_t written = 0;
 ssize_t err;
 ssize_t status;


 current->backing_dev_info = inode_to_bdi(inode);
 err = file_remove_privs(file);
 if (err)
  goto out;

 err = file_update_time(file);
 if (err)
  goto out;

 if (iocb->ki_flags & IOCB_DIRECT) {
  loff_t pos, endbyte;

  written = generic_file_direct_write(iocb, from);







  if (written < 0 || !iov_iter_count(from) || IS_DAX(inode))
   goto out;

  status = generic_perform_write(file, from, pos = iocb->ki_pos);







  if (unlikely(status < 0)) {
   err = status;
   goto out;
  }





  endbyte = pos + status - 1;
  err = filemap_write_and_wait_range(mapping, pos, endbyte);
  if (err == 0) {
   iocb->ki_pos = endbyte + 1;
   written += status;
   invalidate_mapping_pages(mapping,
       pos >> PAGE_SHIFT,
       endbyte >> PAGE_SHIFT);
  } else {




  }
 } else {
  written = generic_perform_write(file, from, iocb->ki_pos);
  if (likely(written > 0))
   iocb->ki_pos += written;
 }
out:
 current->backing_dev_info = ((void*)0);
 return written ? written : err;
}

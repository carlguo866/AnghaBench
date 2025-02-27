
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct path {TYPE_1__* dentry; } ;
struct file_operations {scalar_t__ write_iter; scalar_t__ write; scalar_t__ read_iter; scalar_t__ read; } ;
struct file {int f_mode; struct file_operations const* f_op; int f_mapping; int f_wb_err; TYPE_2__* f_inode; struct path f_path; } ;
struct TYPE_4__ {int i_mapping; } ;
struct TYPE_3__ {TYPE_2__* d_inode; } ;


 int FMODE_CAN_READ ;
 int FMODE_CAN_WRITE ;
 int FMODE_OPENED ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 scalar_t__ IS_ERR (struct file*) ;
 struct file* alloc_empty_file (int,int ) ;
 int current_cred () ;
 int filemap_sample_wb_err (int ) ;
 int i_readcount_inc (TYPE_2__*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static struct file *alloc_file(const struct path *path, int flags,
  const struct file_operations *fop)
{
 struct file *file;

 file = alloc_empty_file(flags, current_cred());
 if (IS_ERR(file))
  return file;

 file->f_path = *path;
 file->f_inode = path->dentry->d_inode;
 file->f_mapping = path->dentry->d_inode->i_mapping;
 file->f_wb_err = filemap_sample_wb_err(file->f_mapping);
 if ((file->f_mode & FMODE_READ) &&
      likely(fop->read || fop->read_iter))
  file->f_mode |= FMODE_CAN_READ;
 if ((file->f_mode & FMODE_WRITE) &&
      likely(fop->write || fop->write_iter))
  file->f_mode |= FMODE_CAN_WRITE;
 file->f_mode |= FMODE_OPENED;
 file->f_op = fop;
 if ((file->f_mode & (FMODE_READ | FMODE_WRITE)) == FMODE_READ)
  i_readcount_inc(path->dentry->d_inode);
 return file;
}

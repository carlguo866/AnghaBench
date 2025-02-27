
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; int vm_end; int vm_start; scalar_t__ vm_pgoff; struct file* vm_file; } ;
struct seq_file {int dummy; } ;
struct inode {unsigned long i_ino; TYPE_2__* i_sb; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct file {TYPE_3__ f_path; } ;
typedef unsigned long long loff_t ;
typedef int dev_t ;
struct TYPE_5__ {int s_dev; } ;
struct TYPE_4__ {struct inode* d_inode; } ;


 int MAJOR (int ) ;
 int MINOR (int ) ;
 unsigned long long PAGE_SHIFT ;
 int VM_EXEC ;
 int VM_MAYSHARE ;
 int VM_READ ;
 int VM_SHARED ;
 int VM_WRITE ;
 int seq_path (struct seq_file*,TYPE_3__*,char*) ;
 int seq_printf (struct seq_file*,char*,int,char,...) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static int nommu_vma_show(struct seq_file *m, struct vm_area_struct *vma)
{
 unsigned long ino = 0;
 struct file *file;
 dev_t dev = 0;
 int flags, len;
 unsigned long long pgoff = 0;

 flags = vma->vm_flags;
 file = vma->vm_file;

 if (file) {
  struct inode *inode = vma->vm_file->f_path.dentry->d_inode;
  dev = inode->i_sb->s_dev;
  ino = inode->i_ino;
  pgoff = (loff_t)vma->vm_pgoff << PAGE_SHIFT;
 }

 seq_printf(m,
     "%08lx-%08lx %c%c%c%c %08llx %02x:%02x %lu %n",
     vma->vm_start,
     vma->vm_end,
     flags & VM_READ ? 'r' : '-',
     flags & VM_WRITE ? 'w' : '-',
     flags & VM_EXEC ? 'x' : '-',
     flags & VM_MAYSHARE ? flags & VM_SHARED ? 'S' : 's' : 'p',
     pgoff,
     MAJOR(dev), MINOR(dev), ino, &len);

 if (file) {
  len = 25 + sizeof(void *) * 6 - len;
  if (len < 1)
   len = 1;
  seq_printf(m, "%*c", len, ' ');
  seq_path(m, &file->f_path, "");
 }

 seq_putc(m, '\n');
 return 0;
}

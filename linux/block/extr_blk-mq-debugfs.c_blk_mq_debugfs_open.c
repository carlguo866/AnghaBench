
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {void* private; } ;
struct inode {struct blk_mq_debugfs_attr* i_private; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {struct seq_file* private_data; TYPE_2__ f_path; } ;
struct blk_mq_debugfs_attr {int show; scalar_t__ seq_ops; } ;
struct TYPE_6__ {void* i_private; } ;
struct TYPE_4__ {int d_parent; } ;


 int EPERM ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int blk_mq_debugfs_show ;
 TYPE_3__* d_inode (int ) ;
 int seq_open (struct file*,scalar_t__) ;
 int single_open (struct file*,int ,struct blk_mq_debugfs_attr*) ;

__attribute__((used)) static int blk_mq_debugfs_open(struct inode *inode, struct file *file)
{
 const struct blk_mq_debugfs_attr *attr = inode->i_private;
 void *data = d_inode(file->f_path.dentry->d_parent)->i_private;
 struct seq_file *m;
 int ret;

 if (attr->seq_ops) {
  ret = seq_open(file, attr->seq_ops);
  if (!ret) {
   m = file->private_data;
   m->private = data;
  }
  return ret;
 }

 if (WARN_ON_ONCE(!attr->show))
  return -EPERM;

 return single_open(file, blk_mq_debugfs_show, inode->i_private);
}

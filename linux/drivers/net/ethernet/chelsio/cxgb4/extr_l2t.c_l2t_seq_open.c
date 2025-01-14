
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct inode {struct adapter* i_private; } ;
struct file {struct seq_file* private_data; } ;
struct adapter {int l2t; } ;


 int l2t_seq_ops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int l2t_seq_open(struct inode *inode, struct file *file)
{
 int rc = seq_open(file, &l2t_seq_ops);

 if (!rc) {
  struct adapter *adap = inode->i_private;
  struct seq_file *seq = file->private_data;

  seq->private = adap->l2t;
 }
 return rc;
}

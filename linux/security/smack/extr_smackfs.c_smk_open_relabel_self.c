
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int relabel_self_seq_ops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int smk_open_relabel_self(struct inode *inode, struct file *file)
{
 return seq_open(file, &relabel_self_seq_ops);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int cpuinfo_op ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int cpuinfo_open(struct inode *inode, struct file *file)
{
 return seq_open(file, &cpuinfo_op);
}

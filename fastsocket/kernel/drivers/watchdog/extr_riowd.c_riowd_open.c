
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int cycle_kernel_lock () ;
 int nonseekable_open (struct inode*,struct file*) ;

__attribute__((used)) static int riowd_open(struct inode *inode, struct file *filp)
{
 cycle_kernel_lock();
 nonseekable_open(inode, filp);
 return 0;
}

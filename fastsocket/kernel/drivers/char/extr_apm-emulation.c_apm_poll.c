
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct apm_user* private_data; } ;
struct apm_user {int queue; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int apm_waitqueue ;
 int poll_wait (struct file*,int *,int *) ;
 scalar_t__ queue_empty (int *) ;

__attribute__((used)) static unsigned int apm_poll(struct file *fp, poll_table * wait)
{
 struct apm_user *as = fp->private_data;

 poll_wait(fp, &apm_waitqueue, wait);
 return queue_empty(&as->queue) ? 0 : POLLIN | POLLRDNORM;
}

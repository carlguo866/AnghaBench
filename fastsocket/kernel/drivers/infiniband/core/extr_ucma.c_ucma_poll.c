
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucma_file {int event_list; int poll_wait; } ;
struct poll_table_struct {int dummy; } ;
struct file {struct ucma_file* private_data; } ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static unsigned int ucma_poll(struct file *filp, struct poll_table_struct *wait)
{
 struct ucma_file *file = filp->private_data;
 unsigned int mask = 0;

 poll_wait(filp, &file->poll_wait, wait);

 if (!list_empty(&file->event_list))
  mask = POLLIN | POLLRDNORM;

 return mask;
}

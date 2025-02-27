
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucma_file {struct file* filp; int mut; int poll_wait; int ctx_list; int event_list; int close_wq; } ;
struct inode {int dummy; } ;
struct file {struct ucma_file* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int WQ_MEM_RECLAIM ;
 int alloc_ordered_workqueue (char*,int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct ucma_file*) ;
 struct ucma_file* kmalloc (int,int ) ;
 int mutex_init (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;

__attribute__((used)) static int ucma_open(struct inode *inode, struct file *filp)
{
 struct ucma_file *file;

 file = kmalloc(sizeof *file, GFP_KERNEL);
 if (!file)
  return -ENOMEM;

 file->close_wq = alloc_ordered_workqueue("ucma_close_id",
       WQ_MEM_RECLAIM);
 if (!file->close_wq) {
  kfree(file);
  return -ENOMEM;
 }

 INIT_LIST_HEAD(&file->event_list);
 INIT_LIST_HEAD(&file->ctx_list);
 init_waitqueue_head(&file->poll_wait);
 mutex_init(&file->mut);

 filp->private_data = file;
 file->filp = filp;

 return nonseekable_open(inode, filp);
}

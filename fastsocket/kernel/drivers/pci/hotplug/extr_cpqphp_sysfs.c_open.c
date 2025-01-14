
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct controller* i_private; } ;
struct file {struct ctrl_dbg* private_data; } ;
struct ctrl_dbg {void* data; int size; } ;
struct controller {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_OUTPUT ;
 int kfree (struct ctrl_dbg*) ;
 void* kmalloc (int,int ) ;
 int lock_kernel () ;
 int spew_debug_info (struct controller*,void*,int) ;
 int unlock_kernel () ;

__attribute__((used)) static int open(struct inode *inode, struct file *file)
{
 struct controller *ctrl = inode->i_private;
 struct ctrl_dbg *dbg;
 int retval = -ENOMEM;

 lock_kernel();
 dbg = kmalloc(sizeof(*dbg), GFP_KERNEL);
 if (!dbg)
  goto exit;
 dbg->data = kmalloc(MAX_OUTPUT, GFP_KERNEL);
 if (!dbg->data) {
  kfree(dbg);
  goto exit;
 }
 dbg->size = spew_debug_info(ctrl, dbg->data, MAX_OUTPUT);
 file->private_data = dbg;
 retval = 0;
exit:
 unlock_kernel();
 return retval;
}

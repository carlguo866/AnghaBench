
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; struct usX2Ydev* vm_private_data; int * vm_ops; scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct usX2Ydev {int chip_status; TYPE_1__* us428ctls_sharedmem; int us428ctls_wait_queue_head; } ;
struct us428ctls_sharedmem {int dummy; } ;
struct snd_hwdep {struct usX2Ydev* private_data; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int CtlSnapShotLast; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long PAGE_ALIGN (int) ;
 int USX2Y_STAT_CHIP_INIT ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 TYPE_1__* alloc_pages_exact (int,int ) ;
 int init_waitqueue_head (int *) ;
 int memset (TYPE_1__*,int,int) ;
 int snd_printd (char*,unsigned long,unsigned long) ;
 int us428ctls_vm_ops ;

__attribute__((used)) static int snd_us428ctls_mmap(struct snd_hwdep * hw, struct file *filp, struct vm_area_struct *area)
{
 unsigned long size = (unsigned long)(area->vm_end - area->vm_start);
 struct usX2Ydev *us428 = hw->private_data;



  if (!(us428->chip_status & USX2Y_STAT_CHIP_INIT))
  return -EBUSY;


        if (size > PAGE_ALIGN(sizeof(struct us428ctls_sharedmem))) {
  snd_printd( "%lu > %lu\n", size, (unsigned long)sizeof(struct us428ctls_sharedmem));
                return -EINVAL;
 }

 if (!us428->us428ctls_sharedmem) {
  init_waitqueue_head(&us428->us428ctls_wait_queue_head);
  us428->us428ctls_sharedmem = alloc_pages_exact(sizeof(struct us428ctls_sharedmem), GFP_KERNEL);
  if (!us428->us428ctls_sharedmem)
   return -ENOMEM;
  memset(us428->us428ctls_sharedmem, -1, sizeof(struct us428ctls_sharedmem));
  us428->us428ctls_sharedmem->CtlSnapShotLast = -2;
 }
 area->vm_ops = &us428ctls_vm_ops;
 area->vm_flags |= VM_DONTEXPAND | VM_DONTDUMP;
 area->vm_private_data = hw->private_data;
 return 0;
}

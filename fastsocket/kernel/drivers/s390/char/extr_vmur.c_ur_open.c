
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct urfile {int file_reclen; int dev_reclen; } ;
struct urdev {scalar_t__ open_flag; scalar_t__ class; int open_lock; int reclen; int wait; } ;
struct inode {int dummy; } ;
struct file {unsigned short f_flags; struct urfile* private_data; TYPE_2__* f_dentry; } ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int i_rdev; } ;


 scalar_t__ DEV_CLASS_UR_I ;
 scalar_t__ DEV_CLASS_UR_O ;
 int EACCES ;
 int EBUSY ;
 int ENOMEM ;
 int ENXIO ;
 int ERESTARTSYS ;
 int MINOR (int ) ;
 unsigned short O_ACCMODE ;
 int O_NONBLOCK ;
 unsigned short O_RDONLY ;
 unsigned short O_RDWR ;
 unsigned short O_WRONLY ;
 int TRACE (char*,...) ;
 int get_file_reclen (struct urdev*) ;
 int lock_kernel () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlock_kernel () ;
 struct urdev* urdev_get_from_devno (int ) ;
 int urdev_put (struct urdev*) ;
 struct urfile* urfile_alloc (struct urdev*) ;
 int urfile_free (struct urfile*) ;
 int verify_device (struct urdev*) ;
 scalar_t__ wait_event_interruptible (int ,int) ;

__attribute__((used)) static int ur_open(struct inode *inode, struct file *file)
{
 u16 devno;
 struct urdev *urd;
 struct urfile *urf;
 unsigned short accmode;
 int rc;

 accmode = file->f_flags & O_ACCMODE;

 if (accmode == O_RDWR)
  return -EACCES;
 lock_kernel();




 devno = MINOR(file->f_dentry->d_inode->i_rdev);

 urd = urdev_get_from_devno(devno);
 if (!urd) {
  rc = -ENXIO;
  goto out;
 }

 spin_lock(&urd->open_lock);
 while (urd->open_flag) {
  spin_unlock(&urd->open_lock);
  if (file->f_flags & O_NONBLOCK) {
   rc = -EBUSY;
   goto fail_put;
  }
  if (wait_event_interruptible(urd->wait, urd->open_flag == 0)) {
   rc = -ERESTARTSYS;
   goto fail_put;
  }
  spin_lock(&urd->open_lock);
 }
 urd->open_flag++;
 spin_unlock(&urd->open_lock);

 TRACE("ur_open\n");

 if (((accmode == O_RDONLY) && (urd->class != DEV_CLASS_UR_I)) ||
     ((accmode == O_WRONLY) && (urd->class != DEV_CLASS_UR_O))) {
  TRACE("ur_open: unsupported dev class (%d)\n", urd->class);
  rc = -EACCES;
  goto fail_unlock;
 }

 rc = verify_device(urd);
 if (rc)
  goto fail_unlock;

 urf = urfile_alloc(urd);
 if (!urf) {
  rc = -ENOMEM;
  goto fail_unlock;
 }

 urf->dev_reclen = urd->reclen;
 rc = get_file_reclen(urd);
 if (rc < 0)
  goto fail_urfile_free;
 urf->file_reclen = rc;
 file->private_data = urf;
 unlock_kernel();
 return 0;

fail_urfile_free:
 urfile_free(urf);
fail_unlock:
 spin_lock(&urd->open_lock);
 urd->open_flag--;
 spin_unlock(&urd->open_lock);
fail_put:
 urdev_put(urd);
out:
 unlock_kernel();
 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct kqueue {int dummy; } ;
struct kevent {int dummy; } ;
struct file {int dummy; } ;
typedef int cap_rights_t ;


 int CAP_KQUEUE_CHANGE ;
 int cap_rights_init (int *,int ) ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int,int ,struct file**) ;
 int kqueue_acquire (struct file*,struct kqueue**) ;
 int kqueue_register (struct kqueue*,struct kevent*,struct thread*,int) ;
 int kqueue_release (struct kqueue*,int ) ;

int
kqfd_register(int fd, struct kevent *kev, struct thread *td, int mflag)
{
 struct kqueue *kq;
 struct file *fp;
 cap_rights_t rights;
 int error;

 error = fget(td, fd, cap_rights_init(&rights, CAP_KQUEUE_CHANGE), &fp);
 if (error != 0)
  return (error);
 if ((error = kqueue_acquire(fp, &kq)) != 0)
  goto noacquire;

 error = kqueue_register(kq, kev, td, mflag);
 kqueue_release(kq, 0);

noacquire:
 fdrop(fp, td);
 return (error);
}

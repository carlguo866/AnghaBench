
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct fileproc {scalar_t__ f_iocount; int f_flags; } ;
struct filedesc {int fd_nfiles; int* fd_ofileflags; struct fileproc** fd_ofiles; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_5__ {scalar_t__ p_fpdrainwait; struct filedesc* p_fd; } ;


 int EBADF ;
 struct fileproc* FILEPROC_NULL ;
 int FP_SELCONFLICT ;
 int UF_CLOSING ;
 int UF_RESERVED ;
 int proc_fdlock_spin (TYPE_1__*) ;
 int proc_fdunlock (TYPE_1__*) ;
 int wakeup (scalar_t__*) ;

int
fp_drop(proc_t p, int fd, struct fileproc *fp, int locked)
{
 struct filedesc *fdp = p->p_fd;
 int needwakeup = 0;

 if (!locked)
  proc_fdlock_spin(p);
  if ((fp == FILEPROC_NULL) && (fd < 0 || fd >= fdp->fd_nfiles ||
   (fp = fdp->fd_ofiles[fd]) == ((void*)0) ||
   ((fdp->fd_ofileflags[fd] & UF_RESERVED) &&
    !(fdp->fd_ofileflags[fd] & UF_CLOSING)))) {
  if (!locked)
   proc_fdunlock(p);
  return (EBADF);
 }
 fp->f_iocount--;

 if (fp->f_iocount == 0) {
  if (fp->f_flags & FP_SELCONFLICT)
   fp->f_flags &= ~FP_SELCONFLICT;

  if (p->p_fpdrainwait) {
   p->p_fpdrainwait = 0;
   needwakeup = 1;
  }
 }
 if (!locked)
  proc_fdunlock(p);
 if (needwakeup)
         wakeup(&p->p_fpdrainwait);

 return (0);
}

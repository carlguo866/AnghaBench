
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct psemnode {int dummy; } ;
struct fileproc {scalar_t__ f_type; scalar_t__ f_data; int f_iocount; } ;
struct filedesc {int fd_nfiles; int* fd_ofileflags; struct fileproc** fd_ofiles; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_5__ {struct filedesc* p_fd; } ;


 scalar_t__ DTYPE_PSXSEM ;
 int EBADF ;
 int UF_RESERVED ;
 int proc_fdlock_spin (TYPE_1__*) ;
 int proc_fdunlock (TYPE_1__*) ;

int
fp_getfpsem(proc_t p, int fd, struct fileproc **resultfp,
     struct psemnode **resultpsem)
{
 struct filedesc *fdp = p->p_fd;
 struct fileproc *fp;

 proc_fdlock_spin(p);
 if (fd < 0 || fd >= fdp->fd_nfiles ||
   (fp = fdp->fd_ofiles[fd]) == ((void*)0) ||
   (fdp->fd_ofileflags[fd] & UF_RESERVED)) {
  proc_fdunlock(p);
  return (EBADF);
 }
 if (fp->f_type != DTYPE_PSXSEM) {
  proc_fdunlock(p);
  return(EBADF);
 }
 fp->f_iocount++;

 if (resultfp)
  *resultfp = fp;
 if (resultpsem)
  *resultpsem = (struct psemnode *)fp->f_data;
 proc_fdunlock(p);

 return (0);
}

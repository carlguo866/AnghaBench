
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ vnode_t ;
typedef int vfs_context_t ;
typedef TYPE_1__* uthread_t ;
typedef scalar_t__ thread_t ;
struct nameidata {scalar_t__ ni_vp; } ;
struct filedesc {scalar_t__ fd_cdir; } ;
struct chdir_args {int path; } ;
typedef TYPE_2__* proc_t ;
struct TYPE_8__ {int p_flag; struct filedesc* p_fd; } ;
struct TYPE_7__ {scalar_t__ uu_cdir; } ;


 int AUDITVNPATH1 ;
 int ENOENT ;
 int FOLLOW ;
 int LOOKUP ;
 int NDINIT (struct nameidata*,int ,int ,int,int ,int ,int ) ;
 int OP_CHDIR ;
 int OSBitOrAtomic (int ,int *) ;
 int P_THCWD ;
 int UIO_USERSPACE ;
 int change_dir (struct nameidata*,int ) ;
 TYPE_1__* get_bsdthread_info (scalar_t__) ;
 int proc_fdlock (TYPE_2__*) ;
 int proc_fdunlock (TYPE_2__*) ;
 int vfs_context_current () ;
 scalar_t__ vfs_context_thread (int ) ;
 int vnode_put (scalar_t__) ;
 int vnode_ref (scalar_t__) ;
 int vnode_rele (scalar_t__) ;

__attribute__((used)) static int
common_chdir(proc_t p, struct chdir_args *uap, int per_thread)
{
 struct filedesc *fdp = p->p_fd;
 int error;
 struct nameidata nd;
 vnode_t tvp;
 vfs_context_t ctx = vfs_context_current();

 NDINIT(&nd, LOOKUP, OP_CHDIR, FOLLOW | AUDITVNPATH1,
  UIO_USERSPACE, uap->path, ctx);
 error = change_dir(&nd, ctx);
 if (error)
  return (error);
 if ( (error = vnode_ref(nd.ni_vp)) ) {
         vnode_put(nd.ni_vp);
  return (error);
 }



 vnode_put(nd.ni_vp);

 if (per_thread) {
  thread_t th = vfs_context_thread(ctx);
  if (th) {
   uthread_t uth = get_bsdthread_info(th);
   tvp = uth->uu_cdir;
   uth->uu_cdir = nd.ni_vp;
   OSBitOrAtomic(P_THCWD, &p->p_flag);
  } else {
   vnode_rele(nd.ni_vp);
   return (ENOENT);
  }
 } else {
  proc_fdlock(p);
  tvp = fdp->fd_cdir;
  fdp->fd_cdir = nd.ni_vp;
  proc_fdunlock(p);
 }

 if (tvp)
         vnode_rele(tvp);

 return (0);
}

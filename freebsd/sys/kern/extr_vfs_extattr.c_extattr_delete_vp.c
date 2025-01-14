
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int td_ucred; } ;
struct mount {int dummy; } ;


 int EOPNOTSUPP ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int PCATCH ;
 int VOP_DELETEEXTATTR (struct vnode*,int,char const*,int ,struct thread*) ;
 int VOP_SETEXTATTR (struct vnode*,int,char const*,int *,int ,struct thread*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int V_WAIT ;
 int mac_vnode_check_deleteextattr (int ,struct vnode*,int,char const*) ;
 int vn_finished_write (struct mount*) ;
 int vn_lock (struct vnode*,int) ;
 int vn_start_write (struct vnode*,struct mount**,int) ;

__attribute__((used)) static int
extattr_delete_vp(struct vnode *vp, int attrnamespace, const char *attrname,
    struct thread *td)
{
 struct mount *mp;
 int error;

 error = vn_start_write(vp, &mp, V_WAIT | PCATCH);
 if (error)
  return (error);
 vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
 error = VOP_DELETEEXTATTR(vp, attrnamespace, attrname, td->td_ucred,
     td);
 if (error == EOPNOTSUPP)
  error = VOP_SETEXTATTR(vp, attrnamespace, attrname, ((void*)0),
      td->td_ucred, td);



 VOP_UNLOCK(vp, 0);
 vn_finished_write(mp);
 return (error);
}

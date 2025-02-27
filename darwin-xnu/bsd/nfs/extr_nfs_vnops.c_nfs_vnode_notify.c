
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct vnode_attr {int va_flags; } ;
struct timeval {scalar_t__ tv_sec; } ;
struct nfsmount {int nm_vers; int nm_mountp; } ;
struct nfs_vattr {int nva_nlink; int nva_gid; int nva_uid; int nva_mode; int nva_fileid; } ;
typedef TYPE_2__* nfsnode_t ;
struct TYPE_8__ {int * val; } ;
struct TYPE_10__ {TYPE_1__ f_fsid; } ;
struct TYPE_9__ {scalar_t__ n_evtstamp; int n_events; } ;


 struct nfsmount* NFSTONMP (TYPE_2__*) ;
 int NFSTOV (TYPE_2__*) ;
 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_RETURN (struct vnode_attr*,int ,int ) ;
 int VA_64BITOBJIDS ;
 int microuptime (struct timeval*) ;
 int nfs_getattrcache (TYPE_2__*,struct nfs_vattr*,int ) ;
 int va_fileid ;
 int va_fsid ;
 int va_gid ;
 int va_mode ;
 int va_nlink ;
 int va_uid ;
 int vfs_get_notify_attributes (struct vnode_attr*) ;
 TYPE_3__* vfs_statfs (int ) ;
 int vnode_notify (int ,int ,struct vnode_attr*) ;

void
nfs_vnode_notify(nfsnode_t np, uint32_t events)
{
 struct nfsmount *nmp = NFSTONMP(np);
 struct nfs_vattr nvattr;
 struct vnode_attr vattr, *vap = ((void*)0);
 struct timeval now;

 microuptime(&now);
 if ((np->n_evtstamp == now.tv_sec) || !nmp) {

  np->n_events |= events;
  return;
 }
 events |= np->n_events;
 np->n_events = 0;
 np->n_evtstamp = now.tv_sec;

 vfs_get_notify_attributes(&vattr);
 if (!nfs_getattrcache(np, &nvattr, 0)) {
  vap = &vattr;
  VATTR_INIT(vap);

  vap->va_flags |= nmp->nm_vers > 2 ? VA_64BITOBJIDS : 0;
  VATTR_RETURN(vap, va_fsid, vfs_statfs(nmp->nm_mountp)->f_fsid.val[0]);
  VATTR_RETURN(vap, va_fileid, nvattr.nva_fileid);
  VATTR_RETURN(vap, va_mode, nvattr.nva_mode);
  VATTR_RETURN(vap, va_uid, nvattr.nva_uid);
  VATTR_RETURN(vap, va_gid, nvattr.nva_gid);
  VATTR_RETURN(vap, va_nlink, nvattr.nva_nlink);
 }
 vnode_notify(NFSTOV(np), events, vap);
}

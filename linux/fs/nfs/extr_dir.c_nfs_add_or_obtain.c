
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfs_server {TYPE_2__* nfs_client; } ;
struct nfs_fh {scalar_t__ size; } ;
struct nfs_fattr {int valid; } ;
struct nfs4_label {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int d_sb; int d_name; } ;
struct TYPE_6__ {int (* lookup ) (struct inode*,int *,struct nfs_fh*,struct nfs_fattr*,int *) ;} ;
struct TYPE_5__ {TYPE_1__* rpc_ops; } ;
struct TYPE_4__ {int (* getattr ) (struct nfs_server*,struct nfs_fh*,struct nfs_fattr*,int *,int *) ;} ;


 struct dentry* ERR_PTR (int) ;
 int NFS_ATTR_FATTR ;
 TYPE_3__* NFS_PROTO (struct inode*) ;
 struct nfs_server* NFS_SB (int ) ;
 int d_drop (struct dentry*) ;
 struct inode* d_inode (struct dentry*) ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 struct inode* nfs_fhget (int ,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*) ;
 int nfs_mark_for_revalidate (struct inode*) ;
 int nfs_save_change_attribute (struct inode*) ;
 int nfs_set_verifier (struct dentry*,int ) ;
 int stub1 (struct inode*,int *,struct nfs_fh*,struct nfs_fattr*,int *) ;
 int stub2 (struct nfs_server*,struct nfs_fh*,struct nfs_fattr*,int *,int *) ;

struct dentry *
nfs_add_or_obtain(struct dentry *dentry, struct nfs_fh *fhandle,
    struct nfs_fattr *fattr,
    struct nfs4_label *label)
{
 struct dentry *parent = dget_parent(dentry);
 struct inode *dir = d_inode(parent);
 struct inode *inode;
 struct dentry *d;
 int error;

 d_drop(dentry);

 if (fhandle->size == 0) {
  error = NFS_PROTO(dir)->lookup(dir, &dentry->d_name, fhandle, fattr, ((void*)0));
  if (error)
   goto out_error;
 }
 nfs_set_verifier(dentry, nfs_save_change_attribute(dir));
 if (!(fattr->valid & NFS_ATTR_FATTR)) {
  struct nfs_server *server = NFS_SB(dentry->d_sb);
  error = server->nfs_client->rpc_ops->getattr(server, fhandle,
    fattr, ((void*)0), ((void*)0));
  if (error < 0)
   goto out_error;
 }
 inode = nfs_fhget(dentry->d_sb, fhandle, fattr, label);
 d = d_splice_alias(inode, dentry);
out:
 dput(parent);
 return d;
out_error:
 nfs_mark_for_revalidate(dir);
 d = ERR_PTR(error);
 goto out;
}

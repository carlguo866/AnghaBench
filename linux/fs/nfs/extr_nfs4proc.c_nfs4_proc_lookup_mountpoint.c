
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int dummy; } ;
struct qstr {int dummy; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct inode {int dummy; } ;


 struct rpc_clnt* ERR_PTR (int) ;
 struct rpc_clnt* NFS_CLIENT (struct inode*) ;
 int nfs4_proc_lookup_common (struct rpc_clnt**,struct inode*,struct qstr const*,struct nfs_fh*,struct nfs_fattr*,int *) ;
 struct rpc_clnt* rpc_clone_client (struct rpc_clnt*) ;

struct rpc_clnt *
nfs4_proc_lookup_mountpoint(struct inode *dir, const struct qstr *name,
       struct nfs_fh *fhandle, struct nfs_fattr *fattr)
{
 struct rpc_clnt *client = NFS_CLIENT(dir);
 int status;

 status = nfs4_proc_lookup_common(&client, dir, name, fhandle, fattr, ((void*)0));
 if (status < 0)
  return ERR_PTR(status);
 return (client == NFS_CLIENT(dir)) ? rpc_clone_client(client) : client;
}

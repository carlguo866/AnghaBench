
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {int * rpc_proc; struct nfs_removeres* rpc_resp; struct nfs_removeargs* rpc_argp; } ;
struct nfs_server {int dummy; } ;
struct nfs_removeres {int seq_res; struct nfs_server* server; } ;
struct nfs_removeargs {int seq_args; } ;
struct inode {int dummy; } ;


 size_t NFSPROC4_CLNT_REMOVE ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int nfs41_init_sequence (int *,int *,int) ;
 int * nfs4_procedures ;

__attribute__((used)) static void nfs4_proc_unlink_setup(struct rpc_message *msg, struct inode *dir)
{
 struct nfs_server *server = NFS_SERVER(dir);
 struct nfs_removeargs *args = msg->rpc_argp;
 struct nfs_removeres *res = msg->rpc_resp;

 res->server = server;
 msg->rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_REMOVE];
 nfs41_init_sequence(&args->seq_args, &res->seq_res, 1);
}

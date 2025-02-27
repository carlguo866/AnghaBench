
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct TYPE_5__ {int seq_res; } ;
struct TYPE_4__ {int seq_args; } ;
struct nfs_commit_data {TYPE_2__ res; TYPE_1__ args; int inode; } ;
struct TYPE_6__ {int nfs_client; } ;


 TYPE_3__* NFS_SERVER (int ) ;
 int nfs4_setup_sequence (int ,int *,int *,struct rpc_task*) ;

__attribute__((used)) static void nfs4_proc_commit_rpc_prepare(struct rpc_task *task, struct nfs_commit_data *data)
{
 nfs4_setup_sequence(NFS_SERVER(data->inode)->nfs_client,
   &data->args.seq_args,
   &data->res.seq_res,
   task);
}

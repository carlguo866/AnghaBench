
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;
struct nfs4_sequence_res {int dummy; } ;


 int nfs40_sequence_done (struct rpc_task*,struct nfs4_sequence_res*) ;

int nfs4_sequence_done(struct rpc_task *task,
         struct nfs4_sequence_res *res)
{
 return nfs40_sequence_done(task, res);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int id; } ;
struct ipc_params {int flg; } ;
struct ipc_ops {int (* associate ) (struct kern_ipc_perm*,int ) ;} ;


 int EACCES ;
 scalar_t__ ipcperms (struct kern_ipc_perm*,int ) ;
 int stub1 (struct kern_ipc_perm*,int ) ;

__attribute__((used)) static int ipc_check_perms(struct kern_ipc_perm *ipcp, struct ipc_ops *ops,
   struct ipc_params *params)
{
 int err;

 if (ipcperms(ipcp, params->flg))
  err = -EACCES;
 else {
  err = ops->associate(ipcp, params->flg);
  if (!err)
   err = ipcp->id;
 }

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_vf_info {struct qlcnic_adapter* adapter; } ;
struct TYPE_2__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ rsp; } ;
struct qlcnic_bc_trans {struct qlcnic_vf_info* vf; } ;
struct qlcnic_adapter {int dummy; } ;


 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 int qlcnic_sriov_validate_cfg_rss (struct qlcnic_vf_info*,struct qlcnic_cmd_args*) ;

__attribute__((used)) static int qlcnic_sriov_pf_cfg_rss_cmd(struct qlcnic_bc_trans *trans,
           struct qlcnic_cmd_args *cmd)
{
 struct qlcnic_vf_info *vf = trans->vf;
 struct qlcnic_adapter *adapter = vf->adapter;
 int err;

 err = qlcnic_sriov_validate_cfg_rss(vf, cmd);
 if (err)
  cmd->rsp.arg[0] |= (0x6 << 25);
 else
  err = qlcnic_issue_cmd(adapter, cmd);

 return err;
}

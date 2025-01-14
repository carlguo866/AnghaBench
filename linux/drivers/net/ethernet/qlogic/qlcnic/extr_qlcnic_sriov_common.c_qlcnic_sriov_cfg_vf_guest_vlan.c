
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct qlcnic_vf_info {int dummy; } ;
struct qlcnic_sriov {int bc; struct qlcnic_vf_info* vf_info; } ;
struct TYPE_5__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ req; } ;
struct qlcnic_adapter {TYPE_3__* pdev; TYPE_1__* ahw; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
typedef int cmd ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {struct qlcnic_sriov* sriov; } ;


 int QLCNIC_BC_CMD_CFG_GUEST_VLAN ;
 int QLC_VLAN_ADD ;
 int QLC_VLAN_DELETE ;
 int dev_err (int *,char*,int) ;
 int memset (struct qlcnic_cmd_args*,int ,int) ;
 int netif_addr_lock_bh (struct net_device*) ;
 int netif_addr_unlock_bh (struct net_device*) ;
 int qlcnic_free_mac_list (struct qlcnic_adapter*) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 int qlcnic_set_multi (struct net_device*) ;
 int qlcnic_sriov_alloc_bc_mbx_args (struct qlcnic_cmd_args*,int ) ;
 int qlcnic_sriov_cleanup_async_list (int *) ;
 int qlcnic_sriov_validate_vlan_cfg (struct qlcnic_adapter*,int,int) ;
 int qlcnic_sriov_vlan_operation (struct qlcnic_vf_info*,int,int ) ;

int qlcnic_sriov_cfg_vf_guest_vlan(struct qlcnic_adapter *adapter,
       u16 vid, u8 enable)
{
 struct qlcnic_sriov *sriov = adapter->ahw->sriov;
 struct net_device *netdev = adapter->netdev;
 struct qlcnic_vf_info *vf;
 struct qlcnic_cmd_args cmd;
 int ret;

 memset(&cmd, 0, sizeof(cmd));
 if (vid == 0)
  return 0;

 vf = &adapter->ahw->sriov->vf_info[0];
 ret = qlcnic_sriov_validate_vlan_cfg(adapter, vid, enable);
 if (ret)
  return ret;

 ret = qlcnic_sriov_alloc_bc_mbx_args(&cmd,
          QLCNIC_BC_CMD_CFG_GUEST_VLAN);
 if (ret)
  return ret;

 cmd.req.arg[1] = (enable & 1) | vid << 16;

 qlcnic_sriov_cleanup_async_list(&sriov->bc);
 ret = qlcnic_issue_cmd(adapter, &cmd);
 if (ret) {
  dev_err(&adapter->pdev->dev,
   "Failed to configure guest VLAN, err=%d\n", ret);
 } else {
  netif_addr_lock_bh(netdev);
  qlcnic_free_mac_list(adapter);
  netif_addr_unlock_bh(netdev);

  if (enable)
   qlcnic_sriov_vlan_operation(vf, vid, QLC_VLAN_ADD);
  else
   qlcnic_sriov_vlan_operation(vf, vid, QLC_VLAN_DELETE);

  netif_addr_lock_bh(netdev);
  qlcnic_set_multi(netdev);
  netif_addr_unlock_bh(netdev);
 }

 qlcnic_free_mbx_args(&cmd);
 return ret;
}

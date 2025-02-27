
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct qlcnic_hardware_context {scalar_t__ diag_cnt; TYPE_1__* intr_tbl; } ;
struct TYPE_7__ {int * arg; } ;
struct TYPE_6__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_3__ rsp; TYPE_2__ req; } ;
struct qlcnic_adapter {int max_sds_rings; int flags; TYPE_4__* pdev; struct qlcnic_hardware_context* ahw; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_5__ {int id; } ;


 int BIT_0 ;
 int EBUSY ;
 scalar_t__ LSB (int ) ;
 int LSW (int ) ;
 int MSW (int ) ;
 int QLCNIC_CMD_INTRPT_TEST ;
 int QLCNIC_DEF_INT_ID ;
 int QLCNIC_INTERRUPT_TEST ;
 int QLCNIC_MSIX_ENABLED ;
 int QLCRDX (struct qlcnic_hardware_context*,int ) ;
 int dev_err (int *,char*,scalar_t__) ;
 int dev_info (int *,char*,int,int) ;
 int msleep (int) ;
 int netdev_info (struct net_device*,char*) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int qlcnic_83xx_diag_alloc_res (struct net_device*,int ,int) ;
 int qlcnic_83xx_diag_free_res (struct net_device*,int) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 scalar_t__ qlcnic_get_diag_lock (struct qlcnic_adapter*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 int qlcnic_release_diag_lock (struct qlcnic_adapter*) ;

int qlcnic_83xx_interrupt_test(struct net_device *netdev)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 struct qlcnic_cmd_args cmd;
 u32 data;
 u16 intrpt_id, id;
 u8 val;
 int ret, max_sds_rings = adapter->max_sds_rings;

 if (qlcnic_get_diag_lock(adapter)) {
  netdev_info(netdev, "Device in diagnostics mode\n");
  return -EBUSY;
 }

 ret = qlcnic_83xx_diag_alloc_res(netdev, QLCNIC_INTERRUPT_TEST,
      max_sds_rings);
 if (ret)
  goto fail_diag_irq;

 ahw->diag_cnt = 0;
 qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_INTRPT_TEST);

 if (adapter->flags & QLCNIC_MSIX_ENABLED)
  intrpt_id = ahw->intr_tbl[0].id;
 else
  intrpt_id = QLCRDX(ahw, QLCNIC_DEF_INT_ID);

 cmd.req.arg[1] = 1;
 cmd.req.arg[2] = intrpt_id;
 cmd.req.arg[3] = BIT_0;

 ret = qlcnic_issue_cmd(adapter, &cmd);
 data = cmd.rsp.arg[2];
 id = LSW(data);
 val = LSB(MSW(data));
 if (id != intrpt_id)
  dev_info(&adapter->pdev->dev,
    "Interrupt generated: 0x%x, requested:0x%x\n",
    id, intrpt_id);
 if (val)
  dev_err(&adapter->pdev->dev,
    "Interrupt test error: 0x%x\n", val);
 if (ret)
  goto done;

 msleep(20);
 ret = !ahw->diag_cnt;

done:
 qlcnic_free_mbx_args(&cmd);
 qlcnic_83xx_diag_free_res(netdev, max_sds_rings);

fail_diag_irq:
 adapter->max_sds_rings = max_sds_rings;
 qlcnic_release_diag_lock(adapter);
 return ret;
}

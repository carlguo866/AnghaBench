
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_7__ {int param1; int param2; int cmd; } ;
struct TYPE_8__ {TYPE_1__ s; scalar_t__ u64; } ;
struct octnic_ctrl_pkt {int cb_fn; scalar_t__ netpndev; int iq_no; TYPE_2__ ncmd; } ;
struct octeon_device {TYPE_6__* pci_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_11__ {TYPE_4__* txpciq; } ;
struct lio {struct octeon_device* oct_dev; TYPE_5__ linfo; } ;
struct TYPE_12__ {int dev; } ;
struct TYPE_9__ {int q_no; } ;
struct TYPE_10__ {TYPE_3__ s; } ;


 int EINVAL ;
 struct lio* GET_LIO (struct net_device*) ;
 int OCTNET_CMD_GPIO_ACCESS ;
 int dev_err (int *,char*,int) ;
 int liquidio_link_ctrl_cmd_completion ;
 int memset (struct octnic_ctrl_pkt*,int ,int) ;
 int octnet_send_nic_ctrl_pkt (struct octeon_device*,struct octnic_ctrl_pkt*) ;

__attribute__((used)) static int octnet_gpio_access(struct net_device *netdev, int addr, int val)
{
 struct lio *lio = GET_LIO(netdev);
 struct octeon_device *oct = lio->oct_dev;
 struct octnic_ctrl_pkt nctrl;
 int ret = 0;

 memset(&nctrl, 0, sizeof(struct octnic_ctrl_pkt));

 nctrl.ncmd.u64 = 0;
 nctrl.ncmd.s.cmd = OCTNET_CMD_GPIO_ACCESS;
 nctrl.ncmd.s.param1 = addr;
 nctrl.ncmd.s.param2 = val;
 nctrl.iq_no = lio->linfo.txpciq[0].s.q_no;
 nctrl.netpndev = (u64)netdev;
 nctrl.cb_fn = liquidio_link_ctrl_cmd_completion;

 ret = octnet_send_nic_ctrl_pkt(lio->oct_dev, &nctrl);
 if (ret) {
  dev_err(&oct->pci_dev->dev,
   "Failed to configure gpio value, ret=%d\n", ret);
  return -EINVAL;
 }

 return 0;
}

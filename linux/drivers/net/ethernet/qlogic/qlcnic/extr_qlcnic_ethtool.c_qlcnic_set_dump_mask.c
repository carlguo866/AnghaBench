
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_fw_dump {int tmpl_hdr; int cap_mask; } ;
struct qlcnic_adapter {struct net_device* netdev; TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct qlcnic_fw_dump fw_dump; } ;


 int EOPNOTSUPP ;
 int netdev_info (struct net_device*,char*,int ) ;
 int qlcnic_check_fw_dump_state (struct qlcnic_adapter*) ;
 int qlcnic_store_cap_mask (struct qlcnic_adapter*,int ,int ) ;

__attribute__((used)) static int qlcnic_set_dump_mask(struct qlcnic_adapter *adapter, u32 mask)
{
 struct qlcnic_fw_dump *fw_dump = &adapter->ahw->fw_dump;
 struct net_device *netdev = adapter->netdev;

 if (!qlcnic_check_fw_dump_state(adapter)) {
  netdev_info(netdev,
       "Can not change driver mask to 0x%x. FW dump not enabled\n",
       mask);
  return -EOPNOTSUPP;
 }

 fw_dump->cap_mask = mask;


 qlcnic_store_cap_mask(adapter, fw_dump->tmpl_hdr, mask);

 netdev_info(netdev, "Driver mask changed to: 0x%x\n", mask);
 return 0;
}

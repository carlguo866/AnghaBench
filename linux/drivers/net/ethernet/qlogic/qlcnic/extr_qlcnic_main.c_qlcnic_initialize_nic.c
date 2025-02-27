
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct qlcnic_info {int capabilities; int max_mtu; int max_mac_filters; int max_rx_ques; int max_tx_ques; int switch_mode; scalar_t__ phys_port; } ;
struct qlcnic_adapter {int flags; int max_sds_rings; int max_tx_rings; TYPE_2__* ahw; TYPE_1__* pdev; } ;
struct TYPE_4__ {int capabilities; int nic_mode; int max_mtu; int max_mac_filters; scalar_t__* extra_capability; int max_rx_ques; int max_tx_ques; int switch_mode; scalar_t__ physical_port; int pci_func; } ;
struct TYPE_3__ {int dev; } ;


 int BIT_6 ;
 int CRB_FW_CAPABILITIES_2 ;
 int EIO ;
 int QLCNIC_DEFAULT_MODE ;
 int QLCNIC_ESWITCH_ENABLED ;
 int QLCNIC_FW_CAPABILITY_MORE_CAPS ;
 int QLCNIC_MAX_HW_TX_RINGS ;
 int QLCNIC_MAX_HW_VNIC_TX_RINGS ;
 int QLCNIC_MAX_SDS_RINGS ;
 int QLCNIC_MAX_VNIC_SDS_RINGS ;
 int QLCNIC_VNIC_MODE ;
 scalar_t__ QLCRD32 (struct qlcnic_adapter*,int ,int*) ;
 int dev_info (int *,char*) ;
 int memset (struct qlcnic_info*,int ,int) ;
 int qlcnic_get_nic_info (struct qlcnic_adapter*,struct qlcnic_info*,int ) ;

__attribute__((used)) static int
qlcnic_initialize_nic(struct qlcnic_adapter *adapter)
{
 struct qlcnic_info nic_info;
 int err = 0;

 memset(&nic_info, 0, sizeof(struct qlcnic_info));
 err = qlcnic_get_nic_info(adapter, &nic_info, adapter->ahw->pci_func);
 if (err)
  return err;

 adapter->ahw->physical_port = (u8)nic_info.phys_port;
 adapter->ahw->switch_mode = nic_info.switch_mode;
 adapter->ahw->max_tx_ques = nic_info.max_tx_ques;
 adapter->ahw->max_rx_ques = nic_info.max_rx_ques;
 adapter->ahw->capabilities = nic_info.capabilities;

 if (adapter->ahw->capabilities & QLCNIC_FW_CAPABILITY_MORE_CAPS) {
  u32 temp;
  temp = QLCRD32(adapter, CRB_FW_CAPABILITIES_2, &err);
  if (err == -EIO)
   return err;
  adapter->ahw->extra_capability[0] = temp;
 } else {
  adapter->ahw->extra_capability[0] = 0;
 }

 adapter->ahw->max_mac_filters = nic_info.max_mac_filters;
 adapter->ahw->max_mtu = nic_info.max_mtu;

 if (adapter->ahw->capabilities & BIT_6) {
  adapter->flags |= QLCNIC_ESWITCH_ENABLED;
  adapter->ahw->nic_mode = QLCNIC_VNIC_MODE;
  adapter->max_tx_rings = QLCNIC_MAX_HW_VNIC_TX_RINGS;
  adapter->max_sds_rings = QLCNIC_MAX_VNIC_SDS_RINGS;

  dev_info(&adapter->pdev->dev, "vNIC mode enabled.\n");
 } else {
  adapter->ahw->nic_mode = QLCNIC_DEFAULT_MODE;
  adapter->max_tx_rings = QLCNIC_MAX_HW_TX_RINGS;
  adapter->max_sds_rings = QLCNIC_MAX_SDS_RINGS;
  adapter->flags &= ~QLCNIC_ESWITCH_ENABLED;
 }

 return err;
}

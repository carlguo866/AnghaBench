
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_2__* ahw; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int num_msix; TYPE_1__* intr_tbl; } ;
struct TYPE_3__ {int id; scalar_t__ src; scalar_t__ enabled; } ;


 int netif_device_detach (struct net_device*) ;
 int qlcnic_83xx_disable_mbx_intr (struct qlcnic_adapter*) ;
 int qlcnic_down (struct qlcnic_adapter*,struct net_device*) ;
 scalar_t__ qlcnic_sriov_pf_check (struct qlcnic_adapter*) ;
 int qlcnic_sriov_pf_reset (struct qlcnic_adapter*) ;

__attribute__((used)) static void qlcnic_83xx_idc_detach_driver(struct qlcnic_adapter *adapter)
{
 int i;
 struct net_device *netdev = adapter->netdev;

 netif_device_detach(netdev);


 qlcnic_83xx_disable_mbx_intr(adapter);
 qlcnic_down(adapter, netdev);
 for (i = 0; i < adapter->ahw->num_msix; i++) {
  adapter->ahw->intr_tbl[i].id = i;
  adapter->ahw->intr_tbl[i].enabled = 0;
  adapter->ahw->intr_tbl[i].src = 0;
 }

 if (qlcnic_sriov_pf_check(adapter))
  qlcnic_sriov_pf_reset(adapter);
}

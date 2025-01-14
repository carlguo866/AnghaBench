
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_host_sds_ring {int dummy; } ;
struct qlcnic_host_rds_ring {int dummy; } ;
struct qlcnic_adapter {int max_sds_rings; int max_rds_rings; int state; TYPE_2__* ahw; TYPE_1__* recv_ctx; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int diag_test; scalar_t__ loopback_state; scalar_t__ linkup; } ;
struct TYPE_3__ {struct qlcnic_host_sds_ring* sds_rings; struct qlcnic_host_rds_ring* rds_rings; } ;


 int QLCNIC_INTERRUPT_TEST ;
 int QLCNIC_LOOPBACK_TEST ;
 int __QLCNIC_DEV_UP ;
 int __qlcnic_down (struct qlcnic_adapter*,struct net_device*) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int qlcnic_attach (struct qlcnic_adapter*) ;
 int qlcnic_detach (struct qlcnic_adapter*) ;
 int qlcnic_enable_int (struct qlcnic_host_sds_ring*) ;
 int qlcnic_fw_create_ctx (struct qlcnic_adapter*) ;
 int qlcnic_linkevent_request (struct qlcnic_adapter*,int) ;
 int qlcnic_post_rx_buffers (struct qlcnic_adapter*,struct qlcnic_host_rds_ring*,int) ;
 int set_bit (int ,int *) ;

int qlcnic_diag_alloc_res(struct net_device *netdev, int test)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_host_sds_ring *sds_ring;
 struct qlcnic_host_rds_ring *rds_ring;
 int ring;
 int ret;

 netif_device_detach(netdev);

 if (netif_running(netdev))
  __qlcnic_down(adapter, netdev);

 qlcnic_detach(adapter);

 adapter->max_sds_rings = 1;
 adapter->ahw->diag_test = test;
 adapter->ahw->linkup = 0;

 ret = qlcnic_attach(adapter);
 if (ret) {
  netif_device_attach(netdev);
  return ret;
 }

 ret = qlcnic_fw_create_ctx(adapter);
 if (ret) {
  qlcnic_detach(adapter);
  netif_device_attach(netdev);
  return ret;
 }

 for (ring = 0; ring < adapter->max_rds_rings; ring++) {
  rds_ring = &adapter->recv_ctx->rds_rings[ring];
  qlcnic_post_rx_buffers(adapter, rds_ring, ring);
 }

 if (adapter->ahw->diag_test == QLCNIC_INTERRUPT_TEST) {
  for (ring = 0; ring < adapter->max_sds_rings; ring++) {
   sds_ring = &adapter->recv_ctx->sds_rings[ring];
   qlcnic_enable_int(sds_ring);
  }
 }

 if (adapter->ahw->diag_test == QLCNIC_LOOPBACK_TEST) {
  adapter->ahw->loopback_state = 0;
  qlcnic_linkevent_request(adapter, 1);
 }

 set_bit(__QLCNIC_DEV_UP, &adapter->state);

 return 0;
}

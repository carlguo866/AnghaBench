
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int mac_addr; int tci; } ;
struct siena_vf {int tx_filter_id; scalar_t__ tx_filter_mode; int pci_name; TYPE_1__ addr; struct efx_nic* efx; } ;
struct efx_nic {int net_dev; } ;
struct efx_filter_spec {int dummy; } ;


 int BUG_ON (int) ;
 int EFX_FILTER_PRI_REQUIRED ;
 int EFX_FILTER_VID_UNSPEC ;
 scalar_t__ VF_TX_FILTER_AUTO ;
 scalar_t__ VF_TX_FILTER_ON ;
 int VLAN_VID_MASK ;
 int abs_index (struct siena_vf*,int ) ;
 int efx_filter_init_tx (struct efx_filter_spec*,int ) ;
 int efx_filter_insert_filter (struct efx_nic*,struct efx_filter_spec*,int) ;
 int efx_filter_remove_id_safe (struct efx_nic*,int ,int) ;
 int efx_filter_set_eth_local (struct efx_filter_spec*,int,int ) ;
 int hw ;
 scalar_t__ is_zero_ether_addr (int ) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int ,int) ;
 int netif_warn (struct efx_nic*,int ,int ,char*,int ) ;
 int ntohs (int ) ;
 int vf_max_tx_channels ;

__attribute__((used)) static void efx_siena_sriov_reset_tx_filter(struct siena_vf *vf)
{
 struct efx_nic *efx = vf->efx;
 struct efx_filter_spec filter;
 u16 vlan;
 int rc;

 if (vf->tx_filter_id != -1) {
  efx_filter_remove_id_safe(efx, EFX_FILTER_PRI_REQUIRED,
       vf->tx_filter_id);
  netif_dbg(efx, hw, efx->net_dev, "Removed vf %s tx filter %d\n",
     vf->pci_name, vf->tx_filter_id);
  vf->tx_filter_id = -1;
 }

 if (is_zero_ether_addr(vf->addr.mac_addr))
  return;




 if (vf->tx_filter_mode == VF_TX_FILTER_AUTO && vf_max_tx_channels <= 2)
  vf->tx_filter_mode = VF_TX_FILTER_ON;

 vlan = ntohs(vf->addr.tci) & VLAN_VID_MASK;
 efx_filter_init_tx(&filter, abs_index(vf, 0));
 rc = efx_filter_set_eth_local(&filter,
          vlan ? vlan : EFX_FILTER_VID_UNSPEC,
          vf->addr.mac_addr);
 BUG_ON(rc);

 rc = efx_filter_insert_filter(efx, &filter, 1);
 if (rc < 0) {
  netif_warn(efx, hw, efx->net_dev,
      "Unable to migrate tx filter for vf %s\n",
      vf->pci_name);
 } else {
  netif_dbg(efx, hw, efx->net_dev, "Inserted vf %s tx filter %d\n",
     vf->pci_name, rc);
  vf->tx_filter_id = rc;
 }
}

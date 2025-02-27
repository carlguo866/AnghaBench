
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct efx_nic {int vf_count; int net_dev; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {struct ef10_vf* vf; } ;
struct ef10_vf {scalar_t__ vlan; int vport_assigned; TYPE_2__* efx; scalar_t__ vport_id; int mac; } ;
struct TYPE_10__ {int mac_lock; int filter_sem; int net_dev; TYPE_1__* type; } ;
struct TYPE_9__ {int (* filter_table_probe ) (TYPE_2__*) ;int (* filter_table_remove ) (TYPE_2__*) ;} ;


 scalar_t__ EFX_EF10_NO_VLAN ;
 int EINVAL ;
 int EVB_PORT_ID_ASSIGNED ;
 scalar_t__ EVB_PORT_ID_NULL ;
 int MC_CMD_VPORT_ALLOC_IN_VPORT_TYPE_NORMAL ;
 int RESET_TYPE_DATAPATH ;
 int down_write (int *) ;
 int drv ;
 int efx_device_attach_if_not_resetting (TYPE_2__*) ;
 int efx_device_detach_sync (TYPE_2__*) ;
 int efx_ef10_evb_port_assign (struct efx_nic*,scalar_t__,int) ;
 int efx_ef10_vadaptor_alloc (TYPE_2__*,int ) ;
 int efx_ef10_vadaptor_free (TYPE_2__*,int ) ;
 int efx_ef10_vport_add_mac (struct efx_nic*,scalar_t__,int ) ;
 int efx_ef10_vport_alloc (struct efx_nic*,int ,int ,scalar_t__,scalar_t__*) ;
 int efx_ef10_vport_del_mac (struct efx_nic*,scalar_t__,int ) ;
 int efx_ef10_vport_free (struct efx_nic*,scalar_t__) ;
 int efx_net_open (int ) ;
 int efx_net_stop (int ) ;
 int efx_schedule_reset (TYPE_2__*,int ) ;
 int eth_zero_addr (int ) ;
 int is_zero_ether_addr (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_err (struct efx_nic*,int ,int ,char*) ;
 int netif_warn (struct efx_nic*,int ,int ,char*,...) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 int up_write (int *) ;

int efx_ef10_sriov_set_vf_vlan(struct efx_nic *efx, int vf_i, u16 vlan,
          u8 qos)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 struct ef10_vf *vf;
 u16 new_vlan;
 int rc = 0, rc2 = 0;

 if (vf_i >= efx->vf_count)
  return -EINVAL;
 if (qos != 0)
  return -EINVAL;

 vf = nic_data->vf + vf_i;

 new_vlan = (vlan == 0) ? EFX_EF10_NO_VLAN : vlan;
 if (new_vlan == vf->vlan)
  return 0;

 if (vf->efx) {
  efx_device_detach_sync(vf->efx);
  efx_net_stop(vf->efx->net_dev);

  mutex_lock(&vf->efx->mac_lock);
  down_write(&vf->efx->filter_sem);
  vf->efx->type->filter_table_remove(vf->efx);

  rc = efx_ef10_vadaptor_free(vf->efx, EVB_PORT_ID_ASSIGNED);
  if (rc)
   goto restore_filters;
 }

 if (vf->vport_assigned) {
  rc = efx_ef10_evb_port_assign(efx, EVB_PORT_ID_NULL, vf_i);
  if (rc) {
   netif_warn(efx, drv, efx->net_dev,
       "Failed to change vlan on VF %d.\n", vf_i);
   netif_warn(efx, drv, efx->net_dev,
       "This is likely because the VF is bound to a driver in a VM.\n");
   netif_warn(efx, drv, efx->net_dev,
       "Please unload the driver in the VM.\n");
   goto restore_vadaptor;
  }
  vf->vport_assigned = 0;
 }

 if (!is_zero_ether_addr(vf->mac)) {
  rc = efx_ef10_vport_del_mac(efx, vf->vport_id, vf->mac);
  if (rc)
   goto restore_evb_port;
 }

 if (vf->vport_id) {
  rc = efx_ef10_vport_free(efx, vf->vport_id);
  if (rc)
   goto restore_mac;
  vf->vport_id = 0;
 }


 vf->vlan = new_vlan;


 rc = efx_ef10_vport_alloc(efx, EVB_PORT_ID_ASSIGNED,
      MC_CMD_VPORT_ALLOC_IN_VPORT_TYPE_NORMAL,
      vf->vlan, &vf->vport_id);
 if (rc)
  goto reset_nic_up_write;

restore_mac:
 if (!is_zero_ether_addr(vf->mac)) {
  rc2 = efx_ef10_vport_add_mac(efx, vf->vport_id, vf->mac);
  if (rc2) {
   eth_zero_addr(vf->mac);
   goto reset_nic_up_write;
  }
 }

restore_evb_port:
 rc2 = efx_ef10_evb_port_assign(efx, vf->vport_id, vf_i);
 if (rc2)
  goto reset_nic_up_write;
 else
  vf->vport_assigned = 1;

restore_vadaptor:
 if (vf->efx) {
  rc2 = efx_ef10_vadaptor_alloc(vf->efx, EVB_PORT_ID_ASSIGNED);
  if (rc2)
   goto reset_nic_up_write;
 }

restore_filters:
 if (vf->efx) {
  rc2 = vf->efx->type->filter_table_probe(vf->efx);
  if (rc2)
   goto reset_nic_up_write;

  up_write(&vf->efx->filter_sem);
  mutex_unlock(&vf->efx->mac_lock);

  rc2 = efx_net_open(vf->efx->net_dev);
  if (rc2)
   goto reset_nic;

  efx_device_attach_if_not_resetting(vf->efx);
 }
 return rc;

reset_nic_up_write:
 if (vf->efx) {
  up_write(&vf->efx->filter_sem);
  mutex_unlock(&vf->efx->mac_lock);
 }
reset_nic:
 if (vf->efx) {
  netif_err(efx, drv, efx->net_dev,
     "Failed to restore VF - scheduling reset.\n");
  efx_schedule_reset(vf->efx, RESET_TYPE_DATAPATH);
 } else {
  netif_err(efx, drv, efx->net_dev,
     "Failed to restore the VF and cannot reset the VF "
     "- VF is not functional.\n");
  netif_err(efx, drv, efx->net_dev,
     "Please reload the driver attached to the VF.\n");
 }

 return rc ? rc : rc2;
}

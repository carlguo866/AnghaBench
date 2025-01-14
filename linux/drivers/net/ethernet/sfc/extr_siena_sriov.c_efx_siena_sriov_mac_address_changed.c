
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfdi_status {TYPE_2__* peers; } ;
struct TYPE_4__ {struct vfdi_status* addr; } ;
struct siena_nic_data {int peer_work; TYPE_1__ vfdi_status; } ;
struct efx_nic {TYPE_3__* net_dev; int vf_init_count; struct siena_nic_data* nic_data; } ;
struct TYPE_6__ {int dev_addr; } ;
struct TYPE_5__ {int mac_addr; } ;


 int ether_addr_copy (int ,int ) ;
 int queue_work (int ,int *) ;
 int vfdi_workqueue ;

int efx_siena_sriov_mac_address_changed(struct efx_nic *efx)
{
 struct siena_nic_data *nic_data = efx->nic_data;
 struct vfdi_status *vfdi_status = nic_data->vfdi_status.addr;

 if (!efx->vf_init_count)
  return 0;
 ether_addr_copy(vfdi_status->peers[0].mac_addr,
   efx->net_dev->dev_addr);
 queue_work(vfdi_workqueue, &nic_data->peer_work);

 return 0;
}

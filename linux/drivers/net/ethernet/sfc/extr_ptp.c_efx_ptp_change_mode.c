
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* ptp_data; int net_dev; } ;
struct TYPE_2__ {int enabled; unsigned int mode; } ;


 int PTP_SYNC_ATTEMPTS ;
 int efx_ptp_start (struct efx_nic*) ;
 int efx_ptp_stop (struct efx_nic*) ;
 int efx_ptp_synchronize (struct efx_nic*,int) ;
 scalar_t__ netif_running (int ) ;

int efx_ptp_change_mode(struct efx_nic *efx, bool enable_wanted,
   unsigned int new_mode)
{
 if ((enable_wanted != efx->ptp_data->enabled) ||
     (enable_wanted && (efx->ptp_data->mode != new_mode))) {
  int rc = 0;

  if (enable_wanted) {

   if (efx->ptp_data->enabled &&
       (efx->ptp_data->mode != new_mode)) {
    efx->ptp_data->enabled = 0;
    rc = efx_ptp_stop(efx);
    if (rc != 0)
     return rc;
   }





   efx->ptp_data->mode = new_mode;
   if (netif_running(efx->net_dev))
    rc = efx_ptp_start(efx);
   if (rc == 0) {
    rc = efx_ptp_synchronize(efx,
        PTP_SYNC_ATTEMPTS * 2);
    if (rc != 0)
     efx_ptp_stop(efx);
   }
  } else {
   rc = efx_ptp_stop(efx);
  }

  if (rc != 0)
   return rc;

  efx->ptp_data->enabled = enable_wanted;
 }

 return 0;
}

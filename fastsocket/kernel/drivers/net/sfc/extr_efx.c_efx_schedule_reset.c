
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {scalar_t__ state; int reset_work; int reset_pending; int net_dev; TYPE_1__* type; } ;
typedef enum reset_type { ____Placeholder_reset_type } reset_type ;
struct TYPE_2__ {int (* map_reset_reason ) (int) ;} ;


 scalar_t__ ACCESS_ONCE (scalar_t__) ;
 int RESET_TYPE (int) ;






 scalar_t__ STATE_READY ;
 scalar_t__ STATE_RECOVERY ;
 int drv ;
 int efx_mcdi_mode_poll (struct efx_nic*) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int ,...) ;
 int queue_work (int ,int *) ;
 int reset_workqueue ;
 int set_bit (int,int *) ;
 int smp_mb () ;
 int stub1 (int) ;

void efx_schedule_reset(struct efx_nic *efx, enum reset_type type)
{
 enum reset_type method;

 if (efx->state == STATE_RECOVERY) {
  netif_dbg(efx, drv, efx->net_dev,
     "recovering: skip scheduling %s reset\n",
     RESET_TYPE(type));
  return;
 }

 switch (type) {
 case 131:
 case 133:
 case 130:
 case 128:
 case 132:
 case 129:
  method = type;
  netif_dbg(efx, drv, efx->net_dev, "scheduling %s reset\n",
     RESET_TYPE(method));
  break;
 default:
  method = efx->type->map_reset_reason(type);
  netif_dbg(efx, drv, efx->net_dev,
     "scheduling %s reset for %s\n",
     RESET_TYPE(method), RESET_TYPE(type));
  break;
 }

 set_bit(method, &efx->reset_pending);
 smp_mb();




 if (ACCESS_ONCE(efx->state) != STATE_READY)
  return;



 efx_mcdi_mode_poll(efx);

 queue_work(reset_workqueue, &efx->reset_work);
}

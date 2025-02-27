
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {int irq_prepare_beacon_tasklet; int irq_tx_tasklet; int irq_rx_tasklet; TYPE_1__* rtllib; int qos_activate; int update_beacon_wq; int rfpath_check_wq; int txpower_tracking_wq; int watch_dog_wq; int reset_wq; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int hw_sleep_wq; int hw_wakeup_wq; int ips_leave_wq; } ;


 int INIT_DELAYED_WORK_RSL (int *,void*,struct net_device*) ;
 int INIT_WORK_RSL (int *,void*,struct net_device*) ;
 scalar_t__ _rtl92e_irq_rx_tasklet ;
 scalar_t__ _rtl92e_irq_tx_tasklet ;
 scalar_t__ _rtl92e_prepare_beacon ;
 scalar_t__ _rtl92e_qos_activate ;
 scalar_t__ _rtl92e_restart ;
 scalar_t__ _rtl92e_update_beacon ;
 scalar_t__ _rtl92e_watchdog_wq_cb ;
 scalar_t__ rtl92e_dm_rf_pathcheck_wq ;
 scalar_t__ rtl92e_dm_txpower_tracking_wq ;
 scalar_t__ rtl92e_hw_sleep_wq ;
 scalar_t__ rtl92e_hw_wakeup_wq ;
 scalar_t__ rtl92e_ips_leave_wq ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int tasklet_init (int *,void (*) (unsigned long),unsigned long) ;

__attribute__((used)) static void _rtl92e_init_priv_task(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);

 INIT_WORK_RSL(&priv->reset_wq, (void *)_rtl92e_restart, dev);
 INIT_WORK_RSL(&priv->rtllib->ips_leave_wq, (void *)rtl92e_ips_leave_wq,
        dev);
 INIT_DELAYED_WORK_RSL(&priv->watch_dog_wq,
         (void *)_rtl92e_watchdog_wq_cb, dev);
 INIT_DELAYED_WORK_RSL(&priv->txpower_tracking_wq,
         (void *)rtl92e_dm_txpower_tracking_wq, dev);
 INIT_DELAYED_WORK_RSL(&priv->rfpath_check_wq,
         (void *)rtl92e_dm_rf_pathcheck_wq, dev);
 INIT_DELAYED_WORK_RSL(&priv->update_beacon_wq,
         (void *)_rtl92e_update_beacon, dev);
 INIT_WORK_RSL(&priv->qos_activate, (void *)_rtl92e_qos_activate, dev);
 INIT_DELAYED_WORK_RSL(&priv->rtllib->hw_wakeup_wq,
         (void *)rtl92e_hw_wakeup_wq, dev);
 INIT_DELAYED_WORK_RSL(&priv->rtllib->hw_sleep_wq,
         (void *)rtl92e_hw_sleep_wq, dev);
 tasklet_init(&priv->irq_rx_tasklet,
       (void(*)(unsigned long))_rtl92e_irq_rx_tasklet,
       (unsigned long)priv);
 tasklet_init(&priv->irq_tx_tasklet,
       (void(*)(unsigned long))_rtl92e_irq_tx_tasklet,
       (unsigned long)priv);
 tasklet_init(&priv->irq_prepare_beacon_tasklet,
       (void(*)(unsigned long))_rtl92e_prepare_beacon,
       (unsigned long)priv);
}

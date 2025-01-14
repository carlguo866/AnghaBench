
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ethtool_eee {scalar_t__ eee_enabled; } ;
struct aq_nic_s {int fwreq_mutex; int aq_hw; TYPE_1__* aq_fw_ops; } ;
struct aq_nic_cfg_s {scalar_t__ eee_speeds; } ;
struct TYPE_2__ {int (* get_eee_rate ) (int ,scalar_t__*,scalar_t__*) ;int (* set_eee_rate ) (int ,scalar_t__) ;} ;


 int EOPNOTSUPP ;
 struct aq_nic_cfg_s* aq_nic_get_cfg (struct aq_nic_s*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;
 int stub1 (int ,scalar_t__*,scalar_t__*) ;
 int stub2 (int ,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int aq_ethtool_set_eee(struct net_device *ndev, struct ethtool_eee *eee)
{
 struct aq_nic_s *aq_nic = netdev_priv(ndev);
 u32 rate, supported_rates;
 struct aq_nic_cfg_s *cfg;
 int err = 0;

 cfg = aq_nic_get_cfg(aq_nic);

 if (unlikely(!aq_nic->aq_fw_ops->get_eee_rate ||
       !aq_nic->aq_fw_ops->set_eee_rate))
  return -EOPNOTSUPP;

 mutex_lock(&aq_nic->fwreq_mutex);
 err = aq_nic->aq_fw_ops->get_eee_rate(aq_nic->aq_hw, &rate,
           &supported_rates);
 mutex_unlock(&aq_nic->fwreq_mutex);
 if (err < 0)
  return err;

 if (eee->eee_enabled) {
  rate = supported_rates;
  cfg->eee_speeds = rate;
 } else {
  rate = 0;
  cfg->eee_speeds = 0;
 }

 mutex_lock(&aq_nic->fwreq_mutex);
 err = aq_nic->aq_fw_ops->set_eee_rate(aq_nic->aq_hw, rate);
 mutex_unlock(&aq_nic->fwreq_mutex);

 return err;
}

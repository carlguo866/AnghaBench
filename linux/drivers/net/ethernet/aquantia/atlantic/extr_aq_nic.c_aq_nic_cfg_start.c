
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base_cpu_number; } ;
struct aq_nic_cfg_s {unsigned int is_rss; unsigned int vecs; scalar_t__ irq_type; int link_irq_vec; int features; int is_vlan_rx_strip; int is_vlan_tx_insert; int is_vlan_force_promisc; TYPE_2__* aq_hw_caps; int link_speed_msk; void* num_rss_queues; void* txds; void* rxds; int is_lro; int is_autoneg; int mtu; int flow_control; TYPE_1__ aq_rss; int rxpageorder; int rx_itr; int tx_itr; int itr; int is_polling; int tcs; } ;
struct aq_nic_s {scalar_t__ irqvecs; struct aq_nic_cfg_s aq_nic_cfg; } ;
struct TYPE_4__ {unsigned int rxds_max; unsigned int txds_max; unsigned int vecs; int hw_features; int link_speed_msk; } ;


 int AQ_CFG_FC_MODE ;
 int AQ_CFG_IS_AUTONEG_DEF ;
 int AQ_CFG_IS_LRO_DEF ;
 int AQ_CFG_IS_POLLING_DEF ;
 unsigned int AQ_CFG_IS_RSS_DEF ;
 int AQ_CFG_MTU_DEF ;
 scalar_t__ AQ_CFG_NUM_RSS_QUEUES_DEF ;
 int AQ_CFG_RSS_BASE_CPU_NUM_DEF ;
 scalar_t__ AQ_CFG_RXDS_DEF ;
 int AQ_CFG_RX_PAGEORDER ;
 int AQ_CFG_SPEED_MSK ;
 int AQ_CFG_TCS_DEF ;
 scalar_t__ AQ_CFG_TXDS_DEF ;
 scalar_t__ AQ_CFG_VECS_DEF ;
 scalar_t__ AQ_HW_IRQ_LEGACY ;
 scalar_t__ AQ_HW_SERVICE_IRQS ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int aq_itr ;
 int aq_itr_rx ;
 int aq_itr_tx ;
 int aq_nic_rss_init (struct aq_nic_s*,void*) ;
 scalar_t__ aq_pci_func_get_irq_type (struct aq_nic_s*) ;
 void* min (unsigned int,scalar_t__) ;
 scalar_t__ num_online_cpus () ;

void aq_nic_cfg_start(struct aq_nic_s *self)
{
 struct aq_nic_cfg_s *cfg = &self->aq_nic_cfg;

 cfg->tcs = AQ_CFG_TCS_DEF;

 cfg->is_polling = AQ_CFG_IS_POLLING_DEF;

 cfg->itr = aq_itr;
 cfg->tx_itr = aq_itr_tx;
 cfg->rx_itr = aq_itr_rx;

 cfg->rxpageorder = AQ_CFG_RX_PAGEORDER;
 cfg->is_rss = AQ_CFG_IS_RSS_DEF;
 cfg->num_rss_queues = AQ_CFG_NUM_RSS_QUEUES_DEF;
 cfg->aq_rss.base_cpu_number = AQ_CFG_RSS_BASE_CPU_NUM_DEF;
 cfg->flow_control = AQ_CFG_FC_MODE;

 cfg->mtu = AQ_CFG_MTU_DEF;
 cfg->link_speed_msk = AQ_CFG_SPEED_MSK;
 cfg->is_autoneg = AQ_CFG_IS_AUTONEG_DEF;

 cfg->is_lro = AQ_CFG_IS_LRO_DEF;


 cfg->rxds = min(cfg->aq_hw_caps->rxds_max, AQ_CFG_RXDS_DEF);
 cfg->txds = min(cfg->aq_hw_caps->txds_max, AQ_CFG_TXDS_DEF);


 cfg->vecs = min(cfg->aq_hw_caps->vecs, AQ_CFG_VECS_DEF);
 cfg->vecs = min(cfg->vecs, num_online_cpus());
 if (self->irqvecs > AQ_HW_SERVICE_IRQS)
  cfg->vecs = min(cfg->vecs, self->irqvecs - AQ_HW_SERVICE_IRQS);

 if (cfg->vecs >= 8U)
  cfg->vecs = 8U;
 else if (cfg->vecs >= 4U)
  cfg->vecs = 4U;
 else if (cfg->vecs >= 2U)
  cfg->vecs = 2U;
 else
  cfg->vecs = 1U;

 cfg->num_rss_queues = min(cfg->vecs, AQ_CFG_NUM_RSS_QUEUES_DEF);

 aq_nic_rss_init(self, cfg->num_rss_queues);

 cfg->irq_type = aq_pci_func_get_irq_type(self);

 if ((cfg->irq_type == AQ_HW_IRQ_LEGACY) ||
     (cfg->aq_hw_caps->vecs == 1U) ||
     (cfg->vecs == 1U)) {
  cfg->is_rss = 0U;
  cfg->vecs = 1U;
 }





 if (AQ_HW_SERVICE_IRQS > 0 && cfg->vecs + 1 <= self->irqvecs)
  cfg->link_irq_vec = cfg->vecs;
 else
  cfg->link_irq_vec = 0;

 cfg->link_speed_msk &= cfg->aq_hw_caps->link_speed_msk;
 cfg->features = cfg->aq_hw_caps->hw_features;
 cfg->is_vlan_rx_strip = !!(cfg->features & NETIF_F_HW_VLAN_CTAG_RX);
 cfg->is_vlan_tx_insert = !!(cfg->features & NETIF_F_HW_VLAN_CTAG_TX);
 cfg->is_vlan_force_promisc = 1;
}

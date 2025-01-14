
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwl8k_priv {int irq; int poll_rx_task; int poll_tx_task; TYPE_1__* pdev; scalar_t__ regs; int ap_fw; } ;
struct ieee80211_hw {int wiphy; struct mwl8k_priv* priv; } ;
struct TYPE_2__ {int irq; } ;


 int EIO ;
 int IRQF_SHARED ;
 int MWL8K_A2H_EVENTS ;
 scalar_t__ MWL8K_HIU_A2H_INTERRUPT_MASK ;
 scalar_t__ MWL8K_HIU_A2H_INTERRUPT_STATUS_MASK ;
 int MWL8K_NAME ;
 int free_irq (int,struct ieee80211_hw*) ;
 int ieee80211_wake_queues (struct ieee80211_hw*) ;
 int iowrite32 (int ,scalar_t__) ;
 int mwl8k_cmd_enable_sniffer (struct ieee80211_hw*,int ) ;
 int mwl8k_cmd_radio_enable (struct ieee80211_hw*) ;
 int mwl8k_cmd_set_post_scan (struct ieee80211_hw*,char*) ;
 int mwl8k_cmd_set_pre_scan (struct ieee80211_hw*) ;
 int mwl8k_cmd_set_rateadapt_mode (struct ieee80211_hw*,int ) ;
 int mwl8k_cmd_set_wmm_mode (struct ieee80211_hw*,int ) ;
 int mwl8k_fw_lock (struct ieee80211_hw*) ;
 int mwl8k_fw_unlock (struct ieee80211_hw*) ;
 int mwl8k_interrupt ;
 int request_irq (int,int ,int ,int ,struct ieee80211_hw*) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;
 int wiphy_err (int ,char*) ;

__attribute__((used)) static int mwl8k_start(struct ieee80211_hw *hw)
{
 struct mwl8k_priv *priv = hw->priv;
 int rc;

 rc = request_irq(priv->pdev->irq, mwl8k_interrupt,
    IRQF_SHARED, MWL8K_NAME, hw);
 if (rc) {
  priv->irq = -1;
  wiphy_err(hw->wiphy, "failed to register IRQ handler\n");
  return -EIO;
 }
 priv->irq = priv->pdev->irq;


 tasklet_enable(&priv->poll_tx_task);
 tasklet_enable(&priv->poll_rx_task);


 iowrite32(MWL8K_A2H_EVENTS, priv->regs + MWL8K_HIU_A2H_INTERRUPT_MASK);
 iowrite32(MWL8K_A2H_EVENTS,
    priv->regs + MWL8K_HIU_A2H_INTERRUPT_STATUS_MASK);

 rc = mwl8k_fw_lock(hw);
 if (!rc) {
  rc = mwl8k_cmd_radio_enable(hw);

  if (!priv->ap_fw) {
   if (!rc)
    rc = mwl8k_cmd_enable_sniffer(hw, 0);

   if (!rc)
    rc = mwl8k_cmd_set_pre_scan(hw);

   if (!rc)
    rc = mwl8k_cmd_set_post_scan(hw,
      "\x00\x00\x00\x00\x00\x00");
  }

  if (!rc)
   rc = mwl8k_cmd_set_rateadapt_mode(hw, 0);

  if (!rc)
   rc = mwl8k_cmd_set_wmm_mode(hw, 0);

  mwl8k_fw_unlock(hw);
 }

 if (rc) {
  iowrite32(0, priv->regs + MWL8K_HIU_A2H_INTERRUPT_MASK);
  free_irq(priv->pdev->irq, hw);
  priv->irq = -1;
  tasklet_disable(&priv->poll_tx_task);
  tasklet_disable(&priv->poll_rx_task);
 } else {
  ieee80211_wake_queues(hw);
 }

 return rc;
}

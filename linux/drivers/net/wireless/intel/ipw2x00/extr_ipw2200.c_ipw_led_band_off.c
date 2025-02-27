
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw_priv {int config; scalar_t__ nic_type; int lock; int led_association_off; int led_ofdm_off; } ;


 int CFG_NO_LED ;
 scalar_t__ EEPROM_NIC_TYPE_1 ;
 int IPW_DEBUG_LED (char*,int ) ;
 int IPW_EVENT_REG ;
 int ipw_read_reg32 (struct ipw_priv*,int ) ;
 int ipw_register_toggle (int ) ;
 int ipw_write_reg32 (struct ipw_priv*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ipw_led_band_off(struct ipw_priv *priv)
{
 unsigned long flags;
 u32 led;


 if (priv->config & CFG_NO_LED || priv->nic_type != EEPROM_NIC_TYPE_1)
  return;

 spin_lock_irqsave(&priv->lock, flags);

 led = ipw_read_reg32(priv, IPW_EVENT_REG);
 led &= priv->led_ofdm_off;
 led &= priv->led_association_off;

 led = ipw_register_toggle(led);

 IPW_DEBUG_LED("Reg: 0x%08X\n", led);
 ipw_write_reg32(priv, IPW_EVENT_REG, led);

 spin_unlock_irqrestore(&priv->lock, flags);
}

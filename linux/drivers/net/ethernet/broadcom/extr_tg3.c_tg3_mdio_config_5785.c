
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tg3 {int phy_addr; int mdio_bus; } ;
struct phy_device {scalar_t__ interface; TYPE_1__* drv; } ;
struct TYPE_2__ {int phy_id; int phy_id_mask; } ;


 int MAC_EXT_RGMII_MODE ;
 int MAC_PHYCFG1 ;
 int MAC_PHYCFG1_RGMII_EXT_RX_DEC ;
 int MAC_PHYCFG1_RGMII_INT ;
 int MAC_PHYCFG1_RGMII_SND_STAT_EN ;
 int MAC_PHYCFG1_RXCLK_TIMEOUT ;
 int MAC_PHYCFG1_RXCLK_TO_MASK ;
 int MAC_PHYCFG1_TXCLK_TIMEOUT ;
 int MAC_PHYCFG1_TXCLK_TO_MASK ;
 int MAC_PHYCFG1_TXC_DRV ;
 int MAC_PHYCFG2 ;
 int MAC_PHYCFG2_50610_LED_MODES ;
 int MAC_PHYCFG2_AC131_LED_MODES ;
 int MAC_PHYCFG2_ACT_MASK_MASK ;
 int MAC_PHYCFG2_EMODE_MASK_MASK ;
 int MAC_PHYCFG2_FMODE_MASK_MASK ;
 int MAC_PHYCFG2_GMODE_MASK_MASK ;
 int MAC_PHYCFG2_INBAND_ENABLE ;
 int MAC_PHYCFG2_QUAL_MASK_MASK ;
 int MAC_PHYCFG2_RTL8201E_LED_MODES ;
 int MAC_PHYCFG2_RTL8211C_LED_MODES ;
 int MAC_RGMII_MODE_RX_ACTIVITY ;
 int MAC_RGMII_MODE_RX_ENG_DET ;
 int MAC_RGMII_MODE_RX_INT_B ;
 int MAC_RGMII_MODE_RX_QUALITY ;
 int MAC_RGMII_MODE_TX_ENABLE ;
 int MAC_RGMII_MODE_TX_LOWPWR ;
 int MAC_RGMII_MODE_TX_RESET ;





 scalar_t__ PHY_INTERFACE_MODE_RGMII ;
 int RGMII_EXT_IBND_RX_EN ;
 int RGMII_EXT_IBND_TX_EN ;
 int RGMII_INBAND_DISABLE ;
 struct phy_device* mdiobus_get_phy (int ,int ) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tr32 (int ) ;
 int tw32 (int ,int) ;

__attribute__((used)) static void tg3_mdio_config_5785(struct tg3 *tp)
{
 u32 val;
 struct phy_device *phydev;

 phydev = mdiobus_get_phy(tp->mdio_bus, tp->phy_addr);
 switch (phydev->drv->phy_id & phydev->drv->phy_id_mask) {
 case 132:
 case 131:
  val = MAC_PHYCFG2_50610_LED_MODES;
  break;
 case 130:
  val = MAC_PHYCFG2_AC131_LED_MODES;
  break;
 case 128:
  val = MAC_PHYCFG2_RTL8211C_LED_MODES;
  break;
 case 129:
  val = MAC_PHYCFG2_RTL8201E_LED_MODES;
  break;
 default:
  return;
 }

 if (phydev->interface != PHY_INTERFACE_MODE_RGMII) {
  tw32(MAC_PHYCFG2, val);

  val = tr32(MAC_PHYCFG1);
  val &= ~(MAC_PHYCFG1_RGMII_INT |
    MAC_PHYCFG1_RXCLK_TO_MASK | MAC_PHYCFG1_TXCLK_TO_MASK);
  val |= MAC_PHYCFG1_RXCLK_TIMEOUT | MAC_PHYCFG1_TXCLK_TIMEOUT;
  tw32(MAC_PHYCFG1, val);

  return;
 }

 if (!tg3_flag(tp, RGMII_INBAND_DISABLE))
  val |= MAC_PHYCFG2_EMODE_MASK_MASK |
         MAC_PHYCFG2_FMODE_MASK_MASK |
         MAC_PHYCFG2_GMODE_MASK_MASK |
         MAC_PHYCFG2_ACT_MASK_MASK |
         MAC_PHYCFG2_QUAL_MASK_MASK |
         MAC_PHYCFG2_INBAND_ENABLE;

 tw32(MAC_PHYCFG2, val);

 val = tr32(MAC_PHYCFG1);
 val &= ~(MAC_PHYCFG1_RXCLK_TO_MASK | MAC_PHYCFG1_TXCLK_TO_MASK |
   MAC_PHYCFG1_RGMII_EXT_RX_DEC | MAC_PHYCFG1_RGMII_SND_STAT_EN);
 if (!tg3_flag(tp, RGMII_INBAND_DISABLE)) {
  if (tg3_flag(tp, RGMII_EXT_IBND_RX_EN))
   val |= MAC_PHYCFG1_RGMII_EXT_RX_DEC;
  if (tg3_flag(tp, RGMII_EXT_IBND_TX_EN))
   val |= MAC_PHYCFG1_RGMII_SND_STAT_EN;
 }
 val |= MAC_PHYCFG1_RXCLK_TIMEOUT | MAC_PHYCFG1_TXCLK_TIMEOUT |
        MAC_PHYCFG1_RGMII_INT | MAC_PHYCFG1_TXC_DRV;
 tw32(MAC_PHYCFG1, val);

 val = tr32(MAC_EXT_RGMII_MODE);
 val &= ~(MAC_RGMII_MODE_RX_INT_B |
   MAC_RGMII_MODE_RX_QUALITY |
   MAC_RGMII_MODE_RX_ACTIVITY |
   MAC_RGMII_MODE_RX_ENG_DET |
   MAC_RGMII_MODE_TX_ENABLE |
   MAC_RGMII_MODE_TX_LOWPWR |
   MAC_RGMII_MODE_TX_RESET);
 if (!tg3_flag(tp, RGMII_INBAND_DISABLE)) {
  if (tg3_flag(tp, RGMII_EXT_IBND_RX_EN))
   val |= MAC_RGMII_MODE_RX_INT_B |
          MAC_RGMII_MODE_RX_QUALITY |
          MAC_RGMII_MODE_RX_ACTIVITY |
          MAC_RGMII_MODE_RX_ENG_DET;
  if (tg3_flag(tp, RGMII_EXT_IBND_TX_EN))
   val |= MAC_RGMII_MODE_TX_ENABLE |
          MAC_RGMII_MODE_TX_LOWPWR |
          MAC_RGMII_MODE_TX_RESET;
 }
 tw32(MAC_EXT_RGMII_MODE, val);
}

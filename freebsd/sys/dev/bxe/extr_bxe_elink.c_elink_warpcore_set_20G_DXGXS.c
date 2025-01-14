
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct elink_phy {int dummy; } ;
struct bxe_softc {int dummy; } ;


 int MDIO_WC_DEVAD ;
 scalar_t__ MDIO_WC_REG_DIGITAL4_MISC3 ;
 scalar_t__ MDIO_WC_REG_RX0_ANARXCONTROL1G ;
 scalar_t__ MDIO_WC_REG_RX2_ANARXCONTROL1G ;
 scalar_t__ MDIO_WC_REG_RX66_SCW0 ;
 scalar_t__ MDIO_WC_REG_RX66_SCW0_MASK ;
 scalar_t__ MDIO_WC_REG_RX66_SCW1 ;
 scalar_t__ MDIO_WC_REG_RX66_SCW1_MASK ;
 scalar_t__ MDIO_WC_REG_RX66_SCW2 ;
 scalar_t__ MDIO_WC_REG_RX66_SCW2_MASK ;
 scalar_t__ MDIO_WC_REG_RX66_SCW3 ;
 scalar_t__ MDIO_WC_REG_RX66_SCW3_MASK ;
 scalar_t__ MDIO_WC_REG_SERDESDIGITAL_MISC1 ;
 scalar_t__ MDIO_WC_REG_TX0_TX_DRIVER ;
 scalar_t__ MDIO_WC_REG_TX_FIR_TAP ;
 int MDIO_WC_REG_TX_FIR_TAP_ENABLE ;
 int WC_TX_DRIVER (int,int,int,int ) ;
 int WC_TX_FIR (int,int,int) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,scalar_t__,int) ;

__attribute__((used)) static void elink_warpcore_set_20G_DXGXS(struct bxe_softc *sc,
      struct elink_phy *phy,
      uint16_t lane)
{

 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_RX0_ANARXCONTROL1G, 0x90);


 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_RX2_ANARXCONTROL1G, 0x90);

 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_RX66_SCW0, 0xE070);

 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_RX66_SCW1, 0xC0D0);

 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_RX66_SCW2, 0xA0B0);

 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_RX66_SCW3, 0x8090);

 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_RX66_SCW0_MASK, 0xF0F0);

 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_RX66_SCW1_MASK, 0xF0F0);

 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_RX66_SCW2_MASK, 0xF0F0);

 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_RX66_SCW3_MASK, 0xF0F0);


 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_SERDESDIGITAL_MISC1, 0x6008);


 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_DIGITAL4_MISC3, 0x8088);


 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_TX_FIR_TAP,
    (WC_TX_FIR(0x12, 0x2d, 0x00) |
     MDIO_WC_REG_TX_FIR_TAP_ENABLE));
 elink_cl45_write(sc, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_TX0_TX_DRIVER + 0x10*lane,
    WC_TX_DRIVER(0x02, 0x02, 0x02, 0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int flags; } ;
struct bnx2x {int dummy; } ;


 int CL22_WR_OVER_CL45 (struct bnx2x*,struct bnx2x_phy*,int ,int ,int ) ;
 int FLAGS_WC_DUAL_MODE ;
 int MDIO_AER_BLOCK_AER_REG ;
 int MDIO_REG_BANK_AER_BLOCK ;
 int MDIO_WC_DEVAD ;
 int MDIO_WC_REG_COMBO_IEEE0_MIICTRL ;
 int MDIO_WC_REG_IEEE0BLK_MIICNTL ;
 int MDIO_WC_REG_XGXSBLK0_XGXSCONTROL ;
 int MDIO_WC_REG_XGXSBLK1_LANECTRL0 ;
 int MDIO_WC_REG_XGXSBLK1_LANECTRL1 ;
 int MDIO_WC_REG_XGXSBLK1_LANECTRL2 ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int bnx2x_cl45_read_and_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int bnx2x_get_warpcore_lane (struct bnx2x_phy*,struct link_params*) ;
 int bnx2x_set_aer_mmd (struct link_params*,struct bnx2x_phy*) ;
 int bnx2x_set_mdio_emac_per_phy (struct bnx2x*,struct link_params*) ;
 int bnx2x_sfp_e3_set_transmitter (struct link_params*,struct bnx2x_phy*,int ) ;
 int bnx2x_warpcore_reset_lane (struct bnx2x*,struct bnx2x_phy*,int) ;

__attribute__((used)) static void bnx2x_warpcore_link_reset(struct bnx2x_phy *phy,
          struct link_params *params)
{
 struct bnx2x *bp = params->bp;
 u16 val16, lane;
 bnx2x_sfp_e3_set_transmitter(params, phy, 0);
 bnx2x_set_mdio_emac_per_phy(bp, params);
 bnx2x_set_aer_mmd(params, phy);

 bnx2x_warpcore_reset_lane(bp, phy, 1);



 bnx2x_cl45_read_and_write(bp, phy, MDIO_WC_DEVAD,
      MDIO_WC_REG_COMBO_IEEE0_MIICTRL, 0xBFFF);

 bnx2x_cl45_read_and_write(bp, phy, MDIO_WC_DEVAD,
      MDIO_WC_REG_IEEE0BLK_MIICNTL, 0xfffe);


 CL22_WR_OVER_CL45(bp, phy, MDIO_REG_BANK_AER_BLOCK,
     MDIO_AER_BLOCK_AER_REG, 0);

 bnx2x_cl45_read_and_write(bp, phy, MDIO_WC_DEVAD,
      MDIO_WC_REG_XGXSBLK0_XGXSCONTROL,
      ~0x10);

 bnx2x_cl45_read_and_write(bp, phy, MDIO_WC_DEVAD,
      MDIO_WC_REG_XGXSBLK1_LANECTRL2, 0xff00);
 lane = bnx2x_get_warpcore_lane(phy, params);

 bnx2x_cl45_read(bp, phy, MDIO_WC_DEVAD,
   MDIO_WC_REG_XGXSBLK1_LANECTRL0, &val16);
 val16 |= (0x11 << lane);
 if (phy->flags & FLAGS_WC_DUAL_MODE)
  val16 |= (0x22 << lane);
 bnx2x_cl45_write(bp, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_XGXSBLK1_LANECTRL0, val16);

 bnx2x_cl45_read(bp, phy, MDIO_WC_DEVAD,
   MDIO_WC_REG_XGXSBLK1_LANECTRL1, &val16);
 val16 &= ~(0x0303 << (lane << 1));
 val16 |= (0x0101 << (lane << 1));
 if (phy->flags & FLAGS_WC_DUAL_MODE) {
  val16 &= ~(0x0c0c << (lane << 1));
  val16 |= (0x0404 << (lane << 1));
 }

 bnx2x_cl45_write(bp, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_XGXSBLK1_LANECTRL1, val16);

 bnx2x_set_aer_mmd(params, phy);

}

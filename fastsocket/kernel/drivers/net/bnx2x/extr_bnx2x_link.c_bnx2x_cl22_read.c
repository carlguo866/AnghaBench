
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bnx2x_phy {int addr; scalar_t__ mdio_ctrl; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*) ;
 int EFAULT ;
 int EMAC_MDIO_COMM_COMMAND_READ_22 ;
 int EMAC_MDIO_COMM_DATA ;
 int EMAC_MDIO_COMM_START_BUSY ;
 int EMAC_MDIO_MODE_CLAUSE_45 ;
 scalar_t__ EMAC_REG_EMAC_MDIO_COMM ;
 scalar_t__ EMAC_REG_EMAC_MDIO_MODE ;
 int NETIF_MSG_LINK ;
 int REG_RD (struct bnx2x*,scalar_t__) ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 int udelay (int) ;

__attribute__((used)) static int bnx2x_cl22_read(struct bnx2x *bp,
          struct bnx2x_phy *phy,
          u16 reg, u16 *ret_val)
{
 u32 val, mode;
 u16 i;
 int rc = 0;


 mode = REG_RD(bp, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_MODE);
 REG_WR(bp, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_MODE,
        mode & ~EMAC_MDIO_MODE_CLAUSE_45);


 val = ((phy->addr << 21) | (reg << 16) |
        EMAC_MDIO_COMM_COMMAND_READ_22 |
        EMAC_MDIO_COMM_START_BUSY);
 REG_WR(bp, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_COMM, val);

 for (i = 0; i < 50; i++) {
  udelay(10);

  val = REG_RD(bp, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_COMM);
  if (!(val & EMAC_MDIO_COMM_START_BUSY)) {
   *ret_val = (u16)(val & EMAC_MDIO_COMM_DATA);
   udelay(5);
   break;
  }
 }
 if (val & EMAC_MDIO_COMM_START_BUSY) {
  DP(NETIF_MSG_LINK, "read phy register failed\n");

  *ret_val = 0;
  rc = -EFAULT;
 }
 REG_WR(bp, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_MODE, mode);
 return rc;
}

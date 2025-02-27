
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct bnx2x_phy {int addr; scalar_t__ mdio_ctrl; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*) ;
 int EFAULT ;
 int EMAC_MDIO_COMM_COMMAND_WRITE_22 ;
 int EMAC_MDIO_COMM_START_BUSY ;
 int EMAC_MDIO_MODE_CLAUSE_45 ;
 scalar_t__ EMAC_REG_EMAC_MDIO_COMM ;
 scalar_t__ EMAC_REG_EMAC_MDIO_MODE ;
 int NETIF_MSG_LINK ;
 int REG_RD (struct bnx2x*,scalar_t__) ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 int udelay (int) ;

__attribute__((used)) static int bnx2x_cl22_write(struct bnx2x *bp,
           struct bnx2x_phy *phy,
           u16 reg, u16 val)
{
 u32 tmp, mode;
 u8 i;
 int rc = 0;

 mode = REG_RD(bp, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_MODE);
 REG_WR(bp, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_MODE,
        mode & ~EMAC_MDIO_MODE_CLAUSE_45);


 tmp = ((phy->addr << 21) | (reg << 16) | val |
        EMAC_MDIO_COMM_COMMAND_WRITE_22 |
        EMAC_MDIO_COMM_START_BUSY);
 REG_WR(bp, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_COMM, tmp);

 for (i = 0; i < 50; i++) {
  udelay(10);

  tmp = REG_RD(bp, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_COMM);
  if (!(tmp & EMAC_MDIO_COMM_START_BUSY)) {
   udelay(5);
   break;
  }
 }
 if (tmp & EMAC_MDIO_COMM_START_BUSY) {
  DP(NETIF_MSG_LINK, "write phy register failed\n");
  rc = -EFAULT;
 }
 REG_WR(bp, phy->mdio_ctrl + EMAC_REG_EMAC_MDIO_MODE, mode);
 return rc;
}

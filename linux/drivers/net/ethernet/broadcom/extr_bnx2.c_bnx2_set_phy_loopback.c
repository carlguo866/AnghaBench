
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int link_up; int phy_lock; int mii_bmcr; } ;


 int BMCR_FULLDPLX ;
 int BMCR_LOOPBACK ;
 int BMCR_SPEED1000 ;
 int BNX2_EMAC_MODE ;
 int BNX2_EMAC_MODE_25G_MODE ;
 int BNX2_EMAC_MODE_FORCE_LINK ;
 int BNX2_EMAC_MODE_HALF_DUPLEX ;
 int BNX2_EMAC_MODE_MAC_LOOP ;
 int BNX2_EMAC_MODE_PORT ;
 int BNX2_EMAC_MODE_PORT_GMII ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_WR (struct bnx2*,int ,int) ;
 scalar_t__ bnx2_test_link (struct bnx2*) ;
 int bnx2_write_phy (struct bnx2*,int ,int) ;
 int msleep (int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
bnx2_set_phy_loopback(struct bnx2 *bp)
{
 u32 mac_mode;
 int rc, i;

 spin_lock_bh(&bp->phy_lock);
 rc = bnx2_write_phy(bp, bp->mii_bmcr, BMCR_LOOPBACK | BMCR_FULLDPLX |
       BMCR_SPEED1000);
 spin_unlock_bh(&bp->phy_lock);
 if (rc)
  return rc;

 for (i = 0; i < 10; i++) {
  if (bnx2_test_link(bp) == 0)
   break;
  msleep(100);
 }

 mac_mode = BNX2_RD(bp, BNX2_EMAC_MODE);
 mac_mode &= ~(BNX2_EMAC_MODE_PORT | BNX2_EMAC_MODE_HALF_DUPLEX |
        BNX2_EMAC_MODE_MAC_LOOP | BNX2_EMAC_MODE_FORCE_LINK |
        BNX2_EMAC_MODE_25G_MODE);

 mac_mode |= BNX2_EMAC_MODE_PORT_GMII;
 BNX2_WR(bp, BNX2_EMAC_MODE, mac_mode);
 bp->link_up = 1;
 return 0;
}

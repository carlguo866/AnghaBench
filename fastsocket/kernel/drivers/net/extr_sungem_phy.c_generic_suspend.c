
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_phy {int dummy; } ;


 int BMCR_PDOWN ;
 int MII_BMCR ;
 int phy_write (struct mii_phy*,int ,int ) ;

__attribute__((used)) static int generic_suspend(struct mii_phy* phy)
{
 phy_write(phy, MII_BMCR, BMCR_PDOWN);

 return 0;
}

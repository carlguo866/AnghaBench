
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {struct b43_phy_lcn* lcn; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_lcn {int dummy; } ;


 int kfree (struct b43_phy_lcn*) ;

__attribute__((used)) static void b43_phy_lcn_op_free(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_lcn *phy_lcn = phy->lcn;

 kfree(phy_lcn);
 phy->lcn = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct b43_wldev {TYPE_2__ phy; } ;
struct TYPE_3__ {int (* phy_read ) (struct b43_wldev*,int ) ;int (* phy_write ) (struct b43_wldev*,int ,int ) ;} ;


 int assert_mac_suspended (struct b43_wldev*) ;
 int stub1 (struct b43_wldev*,int ,int ) ;
 int stub2 (struct b43_wldev*,int ) ;

void b43_phy_copy(struct b43_wldev *dev, u16 destreg, u16 srcreg)
{
 assert_mac_suspended(dev);
 dev->phy.ops->phy_write(dev, destreg,
  dev->phy.ops->phy_read(dev, srcreg));
}

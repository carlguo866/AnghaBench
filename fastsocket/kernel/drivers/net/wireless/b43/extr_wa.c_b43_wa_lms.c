
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int b43_phy_maskset (struct b43_wldev*,int,int,int) ;

__attribute__((used)) static void b43_wa_lms(struct b43_wldev *dev)
{
 b43_phy_maskset(dev, 0x0055, 0xFFC0, 0x0004);
}

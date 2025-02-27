
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_phy {scalar_t__ platform_data; } ;
struct device_node {int dummy; } ;


 int MII_PHYSID1 ;
 int MII_PHYSID2 ;
 struct device_node* of_get_parent (scalar_t__) ;
 scalar_t__ of_get_property (struct device_node*,char*,int *) ;
 int phy_read (struct mii_phy*,int) ;
 int phy_write (struct mii_phy*,int,int) ;

__attribute__((used)) static int bcm5421_init(struct mii_phy* phy)
{
 u16 data;
 unsigned int id;

 id = (phy_read(phy, MII_PHYSID1) << 16 | phy_read(phy, MII_PHYSID2));


 if (id == 0x002060e0) {


  phy_write(phy, 0x18, 0x1007);
  data = phy_read(phy, 0x18);
  phy_write(phy, 0x18, data | 0x0400);
  phy_write(phy, 0x18, 0x0007);
  data = phy_read(phy, 0x18);
  phy_write(phy, 0x18, data | 0x0800);
  phy_write(phy, 0x17, 0x000a);
  data = phy_read(phy, 0x15);
  phy_write(phy, 0x15, data | 0x0200);
 }


 if ((id & 0xfffffff0) == 0x002062e0) {
  phy_write(phy, 4, 0x01e1);
  phy_write(phy, 9, 0x0300);
 }
 return 0;
}

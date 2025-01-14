
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct expander_device {int num_phys; struct ex_phy* ex_phy; } ;
struct ex_phy {scalar_t__ phy_state; scalar_t__ routing_attr; int attached_sas_addr; int attached_dev_type; } ;
struct domain_device {struct expander_device ex_dev; } ;


 scalar_t__ PHY_NOT_PRESENT ;
 scalar_t__ PHY_VACANT ;
 int SAS_ADDR_SIZE ;
 scalar_t__ SUBTRACTIVE_ROUTING ;
 scalar_t__ dev_is_expander (int ) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static int sas_find_sub_addr(struct domain_device *dev, u8 *sub_addr)
{
 struct expander_device *ex = &dev->ex_dev;
 int i;

 for (i = 0; i < ex->num_phys; i++) {
  struct ex_phy *phy = &ex->ex_phy[i];

  if (phy->phy_state == PHY_VACANT ||
      phy->phy_state == PHY_NOT_PRESENT)
   continue;

  if (dev_is_expander(phy->attached_dev_type) &&
      phy->routing_attr == SUBTRACTIVE_ROUTING) {

   memcpy(sub_addr, phy->attached_sas_addr, SAS_ADDR_SIZE);

   return 1;
  }
 }
 return 0;
}

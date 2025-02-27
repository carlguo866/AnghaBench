
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct expander_device {scalar_t__ conf_route_table; int num_phys; struct ex_phy* ex_phy; } ;
struct ex_phy {scalar_t__ routing_attr; int attached_sas_addr; } ;
struct domain_device {int sas_addr; struct domain_device* parent; struct expander_device ex_dev; } ;


 scalar_t__ SAS_ADDR (int ) ;
 int SAS_DPRINTK (char*,scalar_t__) ;
 scalar_t__ TABLE_ROUTING ;
 int sas_configure_phy (struct domain_device*,int,int *,int) ;

__attribute__((used)) static int sas_configure_parent(struct domain_device *parent,
    struct domain_device *child,
    u8 *sas_addr, int include)
{
 struct expander_device *ex_parent = &parent->ex_dev;
 int res = 0;
 int i;

 if (parent->parent) {
  res = sas_configure_parent(parent->parent, parent, sas_addr,
        include);
  if (res)
   return res;
 }

 if (ex_parent->conf_route_table == 0) {
  SAS_DPRINTK("ex %016llx has self-configuring routing table\n",
       SAS_ADDR(parent->sas_addr));
  return 0;
 }

 for (i = 0; i < ex_parent->num_phys; i++) {
  struct ex_phy *phy = &ex_parent->ex_phy[i];

  if ((phy->routing_attr == TABLE_ROUTING) &&
      (SAS_ADDR(phy->attached_sas_addr) ==
       SAS_ADDR(child->sas_addr))) {
   res = sas_configure_phy(parent, i, sas_addr, include);
   if (res)
    return res;
  }
 }

 return res;
}

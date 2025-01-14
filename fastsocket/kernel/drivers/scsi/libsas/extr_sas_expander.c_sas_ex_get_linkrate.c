
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_port {int dummy; } ;
struct expander_device {int num_phys; struct ex_phy* ex_phy; } ;
struct ex_phy {scalar_t__ phy_state; void* linkrate; int phy; int attached_sas_addr; struct sas_port* port; } ;
struct domain_device {void* pathways; void* max_linkrate; void* linkrate; void* min_linkrate; int sas_addr; struct expander_device ex_dev; } ;


 scalar_t__ PHY_NOT_PRESENT ;
 scalar_t__ PHY_VACANT ;
 scalar_t__ SAS_ADDR (int ) ;
 void* max (void*,void*) ;
 void* min (void*,void*) ;
 int sas_port_add_phy (struct sas_port*,int ) ;

__attribute__((used)) static void sas_ex_get_linkrate(struct domain_device *parent,
           struct domain_device *child,
           struct ex_phy *parent_phy)
{
 struct expander_device *parent_ex = &parent->ex_dev;
 struct sas_port *port;
 int i;

 child->pathways = 0;

 port = parent_phy->port;

 for (i = 0; i < parent_ex->num_phys; i++) {
  struct ex_phy *phy = &parent_ex->ex_phy[i];

  if (phy->phy_state == PHY_VACANT ||
      phy->phy_state == PHY_NOT_PRESENT)
   continue;

  if (SAS_ADDR(phy->attached_sas_addr) ==
      SAS_ADDR(child->sas_addr)) {

   child->min_linkrate = min(parent->min_linkrate,
        phy->linkrate);
   child->max_linkrate = max(parent->max_linkrate,
        phy->linkrate);
   child->pathways++;
   sas_port_add_phy(port, phy->phy);
  }
 }
 child->linkrate = min(parent_phy->linkrate, child->max_linkrate);
 child->pathways = min(child->pathways, parent->pathways);
}

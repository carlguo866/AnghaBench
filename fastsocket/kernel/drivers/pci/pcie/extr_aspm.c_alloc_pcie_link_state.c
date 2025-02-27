
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pcie_link_state {int sibling; struct pcie_link_state* root; struct pcie_link_state* parent; int children; int link; struct pci_dev* pdev; } ;
struct pci_dev {struct pcie_link_state* link_state; TYPE_3__* bus; } ;
struct TYPE_6__ {TYPE_2__* parent; } ;
struct TYPE_5__ {TYPE_1__* self; } ;
struct TYPE_4__ {struct pcie_link_state* link_state; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ PCI_EXP_TYPE_DOWNSTREAM ;
 int kfree (struct pcie_link_state*) ;
 struct pcie_link_state* kzalloc (int,int ) ;
 int link_list ;
 int list_add (int *,int *) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;

__attribute__((used)) static struct pcie_link_state *alloc_pcie_link_state(struct pci_dev *pdev)
{
 struct pcie_link_state *link;

 link = kzalloc(sizeof(*link), GFP_KERNEL);
 if (!link)
  return ((void*)0);
 INIT_LIST_HEAD(&link->sibling);
 INIT_LIST_HEAD(&link->children);
 INIT_LIST_HEAD(&link->link);
 link->pdev = pdev;
 if (pci_pcie_type(pdev) == PCI_EXP_TYPE_DOWNSTREAM) {
  struct pcie_link_state *parent;
  parent = pdev->bus->parent->self->link_state;
  if (!parent) {
   kfree(link);
   return ((void*)0);
  }
  link->parent = parent;
  list_add(&link->link, &parent->children);
 }

 if (!link->parent)
  link->root = link;
 else
  link->root = link->parent->root;

 list_add(&link->sibling, &link_list);
 pdev->link_state = link;
 return link;
}

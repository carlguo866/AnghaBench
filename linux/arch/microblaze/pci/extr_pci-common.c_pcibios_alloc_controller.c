
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {int is_dynamic; struct device_node* dn; int list_node; scalar_t__ global_number; } ;
struct device_node {int dummy; } ;


 int GFP_KERNEL ;
 int global_phb_number ;
 int hose_list ;
 int hose_spinlock ;
 int list_add_tail (int *,int *) ;
 int mem_init_done ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct pci_controller* zalloc_maybe_bootmem (int,int ) ;

struct pci_controller *pcibios_alloc_controller(struct device_node *dev)
{
 struct pci_controller *phb;

 phb = zalloc_maybe_bootmem(sizeof(struct pci_controller), GFP_KERNEL);
 if (!phb)
  return ((void*)0);
 spin_lock(&hose_spinlock);
 phb->global_number = global_phb_number++;
 list_add_tail(&phb->list_node, &hose_list);
 spin_unlock(&hose_spinlock);
 phb->dn = dev;
 phb->is_dynamic = mem_init_done;
 return phb;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net {struct msix_entry* irq_entries; } ;
struct msix_entry {int entry; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 size_t NFP_NET_IRQ_LSC_IDX ;
 int nfp_net_irq_unmask (struct nfp_net*,int ) ;
 int nfp_net_read_link_status (struct nfp_net*) ;

__attribute__((used)) static irqreturn_t nfp_net_irq_lsc(int irq, void *data)
{
 struct nfp_net *nn = data;
 struct msix_entry *entry;

 entry = &nn->irq_entries[NFP_NET_IRQ_LSC_IDX];

 nfp_net_read_link_status(nn);

 nfp_net_irq_unmask(nn, entry->entry);

 return IRQ_HANDLED;
}

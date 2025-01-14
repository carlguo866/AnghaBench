
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; } ;
struct pci_dev {int dummy; } ;
struct TxDesc {int addr; } ;


 unsigned int ETH_ZLEN ;
 int PCI_DMA_TODEVICE ;
 int le32_to_cpu (int ) ;
 int memset (struct TxDesc*,int,int) ;
 int pci_unmap_single (struct pci_dev*,int ,unsigned int,int ) ;

__attribute__((used)) static void sis190_unmap_tx_skb(struct pci_dev *pdev, struct sk_buff *skb,
    struct TxDesc *desc)
{
 unsigned int len;

 len = skb->len < ETH_ZLEN ? ETH_ZLEN : skb->len;

 pci_unmap_single(pdev, le32_to_cpu(desc->addr), len, PCI_DMA_TODEVICE);

 memset(desc, 0x00, sizeof(*desc));
}

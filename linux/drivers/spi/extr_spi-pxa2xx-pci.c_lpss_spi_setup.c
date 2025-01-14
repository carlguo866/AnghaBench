
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_spi_info {int num_chipselect; int max_clk_rate; int dma_filter; struct dw_dma_slave* rx_param; struct dw_dma_slave* tx_param; } ;
struct pci_dev {int dev; int devfn; int bus; } ;
struct dw_dma_slave {int p_master; scalar_t__ m_master; int * dma_dev; } ;


 int PCI_DEVFN (int ,int ) ;
 int PCI_SLOT (int ) ;
 int lpss_dma_filter ;
 struct pci_dev* pci_get_slot (int ,int ) ;

__attribute__((used)) static int lpss_spi_setup(struct pci_dev *dev, struct pxa_spi_info *c)
{
 struct pci_dev *dma_dev;

 c->num_chipselect = 1;
 c->max_clk_rate = 50000000;

 dma_dev = pci_get_slot(dev->bus, PCI_DEVFN(PCI_SLOT(dev->devfn), 0));

 if (c->tx_param) {
  struct dw_dma_slave *slave = c->tx_param;

  slave->dma_dev = &dma_dev->dev;
  slave->m_master = 0;
  slave->p_master = 1;
 }

 if (c->rx_param) {
  struct dw_dma_slave *slave = c->rx_param;

  slave->dma_dev = &dma_dev->dev;
  slave->m_master = 0;
  slave->p_master = 1;
 }

 c->dma_filter = lpss_dma_filter;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int irq; } ;
struct TYPE_2__ {int name; } ;
struct cobalt {int device_id; int pci_dev; TYPE_1__ v4l2_dev; int * bar1; void* bar0; int card_rev; } ;


 int COBALT_SYS_CTRL_BASE ;
 int DMA_BIT_MASK (int) ;
 int EIO ;
 int IRQF_SHARED ;
 int PCI_CLASS_REVISION ;
 int PCI_DEVICE_ID ;

 int PCI_IRQ_MSI ;
 int cobalt_dbg (int,char*) ;
 int cobalt_err (char*,...) ;
 int cobalt_info (char*) ;
 int cobalt_irq_handler ;
 int cobalt_pci_iounmap (struct cobalt*,struct pci_dev*) ;
 int cobalt_pcie_status_show (struct cobalt*) ;
 int cobalt_read_bar1 (struct cobalt*,int ) ;
 int cobalt_set_interrupt (struct cobalt*,int) ;
 int cobalt_warn (char*,int) ;
 int cobalt_write_bar1 (struct cobalt*,int ,int) ;
 int msi_config_show (struct cobalt*,struct pci_dev*) ;
 int omni_sg_dma_init (struct cobalt*) ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int,int ) ;
 int pci_disable_device (int ) ;
 int pci_disable_msi (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 void* pci_iomap (struct pci_dev*,int,int ) ;
 int pci_read_config_byte (struct pci_dev*,int ,int *) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,char*) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 int pcie_bus_link_get_lanes (struct cobalt*) ;
 int pcie_link_get_lanes (struct cobalt*) ;
 scalar_t__ request_irq (int ,int ,int ,int ,void*) ;

__attribute__((used)) static int cobalt_setup_pci(struct cobalt *cobalt, struct pci_dev *pci_dev,
       const struct pci_device_id *pci_id)
{
 u32 ctrl;
 int ret;

 cobalt_dbg(1, "enabling pci device\n");

 ret = pci_enable_device(pci_dev);
 if (ret) {
  cobalt_err("can't enable device\n");
  return ret;
 }
 pci_set_master(pci_dev);
 pci_read_config_byte(pci_dev, PCI_CLASS_REVISION, &cobalt->card_rev);
 pci_read_config_word(pci_dev, PCI_DEVICE_ID, &cobalt->device_id);

 switch (cobalt->device_id) {
 case 128:
  cobalt_info("PCI Express interface from Omnitek\n");
  break;
 default:
  cobalt_info("PCI Express interface provider is unknown!\n");
  break;
 }

 if (pcie_link_get_lanes(cobalt) != 8) {
  cobalt_warn("PCI Express link width is %d lanes.\n",
    pcie_link_get_lanes(cobalt));
  if (pcie_bus_link_get_lanes(cobalt) < 8)
   cobalt_warn("The current slot only supports %d lanes, for best performance 8 are needed\n",
     pcie_bus_link_get_lanes(cobalt));
  if (pcie_link_get_lanes(cobalt) != pcie_bus_link_get_lanes(cobalt)) {
   cobalt_err("The card is most likely not seated correctly in the PCIe slot\n");
   ret = -EIO;
   goto err_disable;
  }
 }

 if (pci_set_dma_mask(pci_dev, DMA_BIT_MASK(64))) {
  ret = pci_set_dma_mask(pci_dev, DMA_BIT_MASK(32));
  if (ret) {
   cobalt_err("no suitable DMA available\n");
   goto err_disable;
  }
 }

 ret = pci_request_regions(pci_dev, "cobalt");
 if (ret) {
  cobalt_err("error requesting regions\n");
  goto err_disable;
 }

 cobalt_pcie_status_show(cobalt);

 cobalt->bar0 = pci_iomap(pci_dev, 0, 0);
 cobalt->bar1 = pci_iomap(pci_dev, 1, 0);
 if (cobalt->bar1 == ((void*)0)) {
  cobalt->bar1 = pci_iomap(pci_dev, 2, 0);
  cobalt_info("64-bit BAR\n");
 }
 if (!cobalt->bar0 || !cobalt->bar1) {
  ret = -EIO;
  goto err_release;
 }


 ctrl = cobalt_read_bar1(cobalt, COBALT_SYS_CTRL_BASE);
 cobalt_write_bar1(cobalt, COBALT_SYS_CTRL_BASE, ctrl & ~0xf00);



 cobalt_set_interrupt(cobalt, 0);

 if (pci_alloc_irq_vectors(pci_dev, 1, 1, PCI_IRQ_MSI) < 1) {
  cobalt_err("Could not enable MSI\n");
  ret = -EIO;
  goto err_release;
 }
 msi_config_show(cobalt, pci_dev);


 if (request_irq(pci_dev->irq, cobalt_irq_handler, IRQF_SHARED,
   cobalt->v4l2_dev.name, (void *)cobalt)) {
  cobalt_err("Failed to register irq %d\n", pci_dev->irq);
  ret = -EIO;
  goto err_msi;
 }

 omni_sg_dma_init(cobalt);
 return 0;

err_msi:
 pci_disable_msi(pci_dev);

err_release:
 cobalt_pci_iounmap(cobalt, pci_dev);
 pci_release_regions(pci_dev);

err_disable:
 pci_disable_device(cobalt->pci_dev);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct pci_dev {int dummy; } ;
struct drm_psb_private {int core_freq; } ;
struct drm_device {struct drm_psb_private* dev_private; TYPE_1__* pdev; } ;
struct TYPE_2__ {int bus; } ;


 int pci_dev_put (struct pci_dev*) ;
 int pci_domain_nr (int ) ;
 struct pci_dev* pci_get_domain_bus_and_slot (int ,int ,int ) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;

void gma_get_core_freq(struct drm_device *dev)
{
 uint32_t clock;
 struct pci_dev *pci_root =
  pci_get_domain_bus_and_slot(pci_domain_nr(dev->pdev->bus),
         0, 0);
 struct drm_psb_private *dev_priv = dev->dev_private;




 pci_write_config_dword(pci_root, 0xD0, 0xD0050300);
 pci_read_config_dword(pci_root, 0xD4, &clock);
 pci_dev_put(pci_root);

 switch (clock & 0x07) {
 case 0:
  dev_priv->core_freq = 100;
  break;
 case 1:
  dev_priv->core_freq = 133;
  break;
 case 2:
  dev_priv->core_freq = 150;
  break;
 case 3:
  dev_priv->core_freq = 178;
  break;
 case 4:
  dev_priv->core_freq = 200;
  break;
 case 5:
 case 6:
 case 7:
  dev_priv->core_freq = 266;
  break;
 default:
  dev_priv->core_freq = 0;
 }
}

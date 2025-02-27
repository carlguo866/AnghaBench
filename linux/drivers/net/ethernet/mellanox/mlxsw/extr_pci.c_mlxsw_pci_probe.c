
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; TYPE_1__* driver; } ;
struct TYPE_4__ {char const* device_kind; int read_frc_capable; int * dev; int device_name; } ;
struct mlxsw_pci {int hw_addr; TYPE_2__ bus_info; struct pci_device_id const* id; struct pci_dev* pdev; } ;
struct TYPE_3__ {char* name; } ;


 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MLXSW_PCI_BAR0_SIZE ;
 int dev_err (int *,char*) ;
 int ioremap (int ,scalar_t__) ;
 int iounmap (int ) ;
 int kfree (struct mlxsw_pci*) ;
 struct mlxsw_pci* kzalloc (int,int ) ;
 int mlxsw_core_bus_device_register (TYPE_2__*,int *,struct mlxsw_pci*,int,int *) ;
 int mlxsw_pci_bus ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,char const*) ;
 scalar_t__ pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct mlxsw_pci*) ;
 int pci_set_master (struct pci_dev*) ;

__attribute__((used)) static int mlxsw_pci_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 const char *driver_name = pdev->driver->name;
 struct mlxsw_pci *mlxsw_pci;
 int err;

 mlxsw_pci = kzalloc(sizeof(*mlxsw_pci), GFP_KERNEL);
 if (!mlxsw_pci)
  return -ENOMEM;

 err = pci_enable_device(pdev);
 if (err) {
  dev_err(&pdev->dev, "pci_enable_device failed\n");
  goto err_pci_enable_device;
 }

 err = pci_request_regions(pdev, driver_name);
 if (err) {
  dev_err(&pdev->dev, "pci_request_regions failed\n");
  goto err_pci_request_regions;
 }

 err = pci_set_dma_mask(pdev, DMA_BIT_MASK(64));
 if (!err) {
  err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64));
  if (err) {
   dev_err(&pdev->dev, "pci_set_consistent_dma_mask failed\n");
   goto err_pci_set_dma_mask;
  }
 } else {
  err = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
  if (err) {
   dev_err(&pdev->dev, "pci_set_dma_mask failed\n");
   goto err_pci_set_dma_mask;
  }
 }

 if (pci_resource_len(pdev, 0) < MLXSW_PCI_BAR0_SIZE) {
  dev_err(&pdev->dev, "invalid PCI region size\n");
  err = -EINVAL;
  goto err_pci_resource_len_check;
 }

 mlxsw_pci->hw_addr = ioremap(pci_resource_start(pdev, 0),
         pci_resource_len(pdev, 0));
 if (!mlxsw_pci->hw_addr) {
  dev_err(&pdev->dev, "ioremap failed\n");
  err = -EIO;
  goto err_ioremap;
 }
 pci_set_master(pdev);

 mlxsw_pci->pdev = pdev;
 pci_set_drvdata(pdev, mlxsw_pci);

 mlxsw_pci->bus_info.device_kind = driver_name;
 mlxsw_pci->bus_info.device_name = pci_name(mlxsw_pci->pdev);
 mlxsw_pci->bus_info.dev = &pdev->dev;
 mlxsw_pci->bus_info.read_frc_capable = 1;
 mlxsw_pci->id = id;

 err = mlxsw_core_bus_device_register(&mlxsw_pci->bus_info,
          &mlxsw_pci_bus, mlxsw_pci, 0,
          ((void*)0));
 if (err) {
  dev_err(&pdev->dev, "cannot register bus device\n");
  goto err_bus_device_register;
 }

 return 0;

err_bus_device_register:
 iounmap(mlxsw_pci->hw_addr);
err_ioremap:
err_pci_resource_len_check:
err_pci_set_dma_mask:
 pci_release_regions(pdev);
err_pci_request_regions:
 pci_disable_device(pdev);
err_pci_enable_device:
 kfree(mlxsw_pci);
 return err;
}

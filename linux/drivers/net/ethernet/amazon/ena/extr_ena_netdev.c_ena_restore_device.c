
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct ena_com_dev_get_features_ctx {int dummy; } ;
struct ena_com_dev {int dummy; } ;
struct ena_adapter {int wd_state; int flags; int timer_service; int netdev; scalar_t__ dev_up_before_reset; int num_queues; struct pci_dev* pdev; struct ena_com_dev* ena_dev; } ;


 int ENA_FLAG_DEVICE_RUNNING ;
 int ENA_FLAG_LINK_UP ;
 int ENA_FLAG_ONGOING_RESET ;
 int ENA_REGS_RESET_DRIVER_INVALID_STATE ;
 scalar_t__ HZ ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*,...) ;
 int ena_com_abort_admin_commands (struct ena_com_dev*) ;
 int ena_com_admin_destroy (struct ena_com_dev*) ;
 int ena_com_dev_reset (struct ena_com_dev*,int ) ;
 int ena_com_mmio_reg_read_request_destroy (struct ena_com_dev*) ;
 int ena_com_wait_for_abort_completion (struct ena_com_dev*) ;
 int ena_device_init (struct ena_com_dev*,struct pci_dev*,struct ena_com_dev_get_features_ctx*,int*) ;
 int ena_device_validate_params (struct ena_adapter*,struct ena_com_dev_get_features_ctx*) ;
 int ena_disable_msix (struct ena_adapter*) ;
 int ena_enable_msix_and_set_admin_interrupts (struct ena_adapter*,int ) ;
 int ena_free_mgmnt_irq (struct ena_adapter*) ;
 int ena_up (struct ena_adapter*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int netif_carrier_on (int ) ;
 int round_jiffies (scalar_t__) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int version ;

__attribute__((used)) static int ena_restore_device(struct ena_adapter *adapter)
{
 struct ena_com_dev_get_features_ctx get_feat_ctx;
 struct ena_com_dev *ena_dev = adapter->ena_dev;
 struct pci_dev *pdev = adapter->pdev;
 bool wd_state;
 int rc;

 set_bit(ENA_FLAG_ONGOING_RESET, &adapter->flags);
 rc = ena_device_init(ena_dev, adapter->pdev, &get_feat_ctx, &wd_state);
 if (rc) {
  dev_err(&pdev->dev, "Can not initialize device\n");
  goto err;
 }
 adapter->wd_state = wd_state;

 rc = ena_device_validate_params(adapter, &get_feat_ctx);
 if (rc) {
  dev_err(&pdev->dev, "Validation of device parameters failed\n");
  goto err_device_destroy;
 }

 rc = ena_enable_msix_and_set_admin_interrupts(adapter,
            adapter->num_queues);
 if (rc) {
  dev_err(&pdev->dev, "Enable MSI-X failed\n");
  goto err_device_destroy;
 }

 if (adapter->dev_up_before_reset) {
  rc = ena_up(adapter);
  if (rc) {
   dev_err(&pdev->dev, "Failed to create I/O queues\n");
   goto err_disable_msix;
  }
 }

 set_bit(ENA_FLAG_DEVICE_RUNNING, &adapter->flags);

 clear_bit(ENA_FLAG_ONGOING_RESET, &adapter->flags);
 if (test_bit(ENA_FLAG_LINK_UP, &adapter->flags))
  netif_carrier_on(adapter->netdev);

 mod_timer(&adapter->timer_service, round_jiffies(jiffies + HZ));
 dev_err(&pdev->dev,
  "Device reset completed successfully, Driver info: %s\n",
  version);

 return rc;
err_disable_msix:
 ena_free_mgmnt_irq(adapter);
 ena_disable_msix(adapter);
err_device_destroy:
 ena_com_abort_admin_commands(ena_dev);
 ena_com_wait_for_abort_completion(ena_dev);
 ena_com_admin_destroy(ena_dev);
 ena_com_dev_reset(ena_dev, ENA_REGS_RESET_DRIVER_INVALID_STATE);
 ena_com_mmio_reg_read_request_destroy(ena_dev);
err:
 clear_bit(ENA_FLAG_DEVICE_RUNNING, &adapter->flags);
 clear_bit(ENA_FLAG_ONGOING_RESET, &adapter->flags);
 dev_err(&pdev->dev,
  "Reset attempt failed. Can not reset the device\n");

 return rc;
}

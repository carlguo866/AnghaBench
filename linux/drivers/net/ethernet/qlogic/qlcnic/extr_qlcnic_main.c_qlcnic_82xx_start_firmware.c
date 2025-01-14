
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_2__* pdev; scalar_t__ need_fw_reset; TYPE_1__* ahw; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int fw_type; } ;


 int CRB_DRIVER_VERSION ;
 int QLCNIC_CRB_DEV_STATE ;
 int QLCNIC_DEV_FAILED ;
 int QLCNIC_DEV_READY ;
 int QLCNIC_DRIVER_VERSION ;
 int QLCNIC_FLASH_ROMIMAGE ;
 int QLCWR32 (struct qlcnic_adapter*,int ,int ) ;
 int QLC_SHARED_REG_WR32 (struct qlcnic_adapter*,int ,int ) ;
 int dev_err (int *,char*) ;
 int qlcnic_can_start_firmware (struct qlcnic_adapter*) ;
 int qlcnic_check_eswitch_mode (struct qlcnic_adapter*) ;
 int qlcnic_check_flash_fw_ver (struct qlcnic_adapter*) ;
 int qlcnic_check_fw_status (struct qlcnic_adapter*) ;
 int qlcnic_check_options (struct qlcnic_adapter*) ;
 int qlcnic_idc_debug_info (struct qlcnic_adapter*,int) ;
 int qlcnic_load_firmware (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_load_fw_file ;
 int qlcnic_need_fw_reset (struct qlcnic_adapter*) ;
 int qlcnic_pinit_from_rom (struct qlcnic_adapter*) ;
 int qlcnic_release_firmware (struct qlcnic_adapter*) ;
 int qlcnic_request_firmware (struct qlcnic_adapter*) ;
 int qlcnic_set_mgmt_operations (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_82xx_start_firmware(struct qlcnic_adapter *adapter)
{
 int err;

 err = qlcnic_can_start_firmware(adapter);
 if (err < 0)
  return err;
 else if (!err)
  goto check_fw_status;

 if (qlcnic_load_fw_file)
  qlcnic_request_firmware(adapter);
 else {
  err = qlcnic_check_flash_fw_ver(adapter);
  if (err)
   goto err_out;

  adapter->ahw->fw_type = QLCNIC_FLASH_ROMIMAGE;
 }

 err = qlcnic_need_fw_reset(adapter);
 if (err == 0)
  goto check_fw_status;

 err = qlcnic_pinit_from_rom(adapter);
 if (err)
  goto err_out;

 err = qlcnic_load_firmware(adapter);
 if (err)
  goto err_out;

 qlcnic_release_firmware(adapter);
 QLCWR32(adapter, CRB_DRIVER_VERSION, QLCNIC_DRIVER_VERSION);

check_fw_status:
 err = qlcnic_check_fw_status(adapter);
 if (err)
  goto err_out;

 QLC_SHARED_REG_WR32(adapter, QLCNIC_CRB_DEV_STATE, QLCNIC_DEV_READY);
 qlcnic_idc_debug_info(adapter, 1);
 err = qlcnic_check_eswitch_mode(adapter);
 if (err) {
  dev_err(&adapter->pdev->dev,
   "Memory allocation failed for eswitch\n");
  goto err_out;
 }
 err = qlcnic_set_mgmt_operations(adapter);
 if (err)
  goto err_out;

 qlcnic_check_options(adapter);
 adapter->need_fw_reset = 0;

 qlcnic_release_firmware(adapter);
 return 0;

err_out:
 QLC_SHARED_REG_WR32(adapter, QLCNIC_CRB_DEV_STATE, QLCNIC_DEV_FAILED);
 dev_err(&adapter->pdev->dev, "Device state set to failed\n");

 qlcnic_release_firmware(adapter);
 return err;
}

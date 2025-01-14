
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct qlcnic_adapter {TYPE_4__* ahw; TYPE_1__* pdev; } ;
struct TYPE_6__ {TYPE_3__* fw; } ;
struct TYPE_8__ {TYPE_2__ fw_info; } ;
struct TYPE_7__ {int size; scalar_t__* data; } ;
struct TYPE_5__ {int dev; } ;


 int EIO ;
 int QLCNIC_FW_IMAGE_ADDR ;
 scalar_t__ QLCRDX (TYPE_4__*,int ) ;
 int dev_err (int *,char*) ;
 int qlcnic_83xx_ms_mem_write128 (struct qlcnic_adapter*,scalar_t__,scalar_t__*,int) ;
 int release_firmware (TYPE_3__*) ;

__attribute__((used)) static int qlcnic_83xx_copy_fw_file(struct qlcnic_adapter *adapter)
{
 u32 dest, *p_cache;
 u64 addr;
 u8 data[16];
 size_t size;
 int i, ret = -EIO;

 dest = QLCRDX(adapter->ahw, QLCNIC_FW_IMAGE_ADDR);
 size = (adapter->ahw->fw_info.fw->size & ~0xF);
 p_cache = (u32 *)adapter->ahw->fw_info.fw->data;
 addr = (u64)dest;

 ret = qlcnic_83xx_ms_mem_write128(adapter, addr,
       (u32 *)p_cache, size / 16);
 if (ret) {
  dev_err(&adapter->pdev->dev, "MS memory write failed\n");
  release_firmware(adapter->ahw->fw_info.fw);
  adapter->ahw->fw_info.fw = ((void*)0);
  return -EIO;
 }


 if (adapter->ahw->fw_info.fw->size & 0xF) {
  addr = dest + size;
  for (i = 0; i < (adapter->ahw->fw_info.fw->size & 0xF); i++)
   data[i] = adapter->ahw->fw_info.fw->data[size + i];
  for (; i < 16; i++)
   data[i] = 0;
  ret = qlcnic_83xx_ms_mem_write128(adapter, addr,
        (u32 *)data, 1);
  if (ret) {
   dev_err(&adapter->pdev->dev,
    "MS memory write failed\n");
   release_firmware(adapter->ahw->fw_info.fw);
   adapter->ahw->fw_info.fw = ((void*)0);
   return -EIO;
  }
 }
 release_firmware(adapter->ahw->fw_info.fw);
 adapter->ahw->fw_info.fw = ((void*)0);

 return 0;
}

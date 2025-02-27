
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
typedef int u32 ;
struct rome_config {int fwname; int type; int user_baud_rate; } ;
struct hci_dev {int dummy; } ;
typedef enum qca_btsoc_type { ____Placeholder_qca_btsoc_type } qca_btsoc_type ;


 int TLV_TYPE_NVM ;
 int TLV_TYPE_PATCH ;
 int bt_dev_dbg (struct hci_dev*,char*) ;
 int bt_dev_err (struct hci_dev*,char*,int) ;
 int bt_dev_info (struct hci_dev*,char*) ;
 int msleep (int) ;
 int qca_download_firmware (struct hci_dev*,struct rome_config*) ;
 scalar_t__ qca_is_wcn399x (int) ;
 int qca_send_reset (struct hci_dev*) ;
 int snprintf (int ,int,char*,...) ;

int qca_uart_setup(struct hci_dev *hdev, uint8_t baudrate,
     enum qca_btsoc_type soc_type, u32 soc_ver,
     const char *firmware_name)
{
 struct rome_config config;
 int err;
 u8 rom_ver = 0;

 bt_dev_dbg(hdev, "QCA setup on UART");

 config.user_baud_rate = baudrate;


 config.type = TLV_TYPE_PATCH;
 if (qca_is_wcn399x(soc_type)) {



  rom_ver = ((soc_ver & 0x00000f00) >> 0x04) |
       (soc_ver & 0x0000000f);
  snprintf(config.fwname, sizeof(config.fwname),
    "qca/crbtfw%02x.tlv", rom_ver);
 } else {
  snprintf(config.fwname, sizeof(config.fwname),
    "qca/rampatch_%08x.bin", soc_ver);
 }

 err = qca_download_firmware(hdev, &config);
 if (err < 0) {
  bt_dev_err(hdev, "QCA Failed to download patch (%d)", err);
  return err;
 }


 msleep(10);


 config.type = TLV_TYPE_NVM;
 if (firmware_name)
  snprintf(config.fwname, sizeof(config.fwname),
    "qca/%s", firmware_name);
 else if (qca_is_wcn399x(soc_type))
  snprintf(config.fwname, sizeof(config.fwname),
    "qca/crnv%02x.bin", rom_ver);
 else
  snprintf(config.fwname, sizeof(config.fwname),
    "qca/nvm_%08x.bin", soc_ver);

 err = qca_download_firmware(hdev, &config);
 if (err < 0) {
  bt_dev_err(hdev, "QCA Failed to download NVM (%d)", err);
  return err;
 }


 err = qca_send_reset(hdev);
 if (err < 0) {
  bt_dev_err(hdev, "QCA Failed to run HCI_RESET (%d)", err);
  return err;
 }

 bt_dev_info(hdev, "QCA setup on UART is completed");

 return 0;
}

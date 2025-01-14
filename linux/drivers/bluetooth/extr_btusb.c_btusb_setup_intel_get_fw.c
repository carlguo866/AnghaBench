
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_version {int hw_platform; int hw_variant; int hw_revision; int fw_variant; int fw_revision; int fw_build_num; int fw_build_ww; int fw_build_yy; } ;
struct hci_dev {int dev; } ;
struct firmware {int dummy; } ;
typedef int fwname ;


 int EINVAL ;
 int bt_dev_err (struct hci_dev*,char*,...) ;
 int bt_dev_info (struct hci_dev*,char*,char*) ;
 int request_firmware (struct firmware const**,char*,int *) ;
 int snprintf (char*,int,char*,int,int,...) ;

__attribute__((used)) static const struct firmware *btusb_setup_intel_get_fw(struct hci_dev *hdev,
             struct intel_version *ver)
{
 const struct firmware *fw;
 char fwname[64];
 int ret;

 snprintf(fwname, sizeof(fwname),
   "intel/ibt-hw-%x.%x.%x-fw-%x.%x.%x.%x.%x.bseq",
   ver->hw_platform, ver->hw_variant, ver->hw_revision,
   ver->fw_variant, ver->fw_revision, ver->fw_build_num,
   ver->fw_build_ww, ver->fw_build_yy);

 ret = request_firmware(&fw, fwname, &hdev->dev);
 if (ret < 0) {
  if (ret == -EINVAL) {
   bt_dev_err(hdev, "Intel firmware file request failed (%d)",
       ret);
   return ((void*)0);
  }

  bt_dev_err(hdev, "failed to open Intel firmware file: %s (%d)",
      fwname, ret);




  snprintf(fwname, sizeof(fwname), "intel/ibt-hw-%x.%x.bseq",
    ver->hw_platform, ver->hw_variant);
  if (request_firmware(&fw, fwname, &hdev->dev) < 0) {
   bt_dev_err(hdev, "failed to open default fw file: %s",
       fwname);
   return ((void*)0);
  }
 }

 bt_dev_info(hdev, "Intel Bluetooth firmware file: %s", fwname);

 return fw;
}

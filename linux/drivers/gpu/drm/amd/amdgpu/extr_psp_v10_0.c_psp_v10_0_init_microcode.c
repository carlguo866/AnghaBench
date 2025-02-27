
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int ucode_array_offset_bytes; int ucode_size_bytes; int ucode_version; } ;
struct psp_firmware_header_v1_0 {TYPE_2__ header; int ucode_feature_version; } ;
struct psp_context {struct amdgpu_device* adev; } ;
struct TYPE_9__ {int asd_fw_version; int asd_feature_version; int asd_ucode_size; TYPE_4__* asd_fw; int * asd_start_addr; } ;
struct amdgpu_device {int asic_type; int rev_id; TYPE_3__ psp; int dev; TYPE_1__* pdev; } ;
typedef int fw_name ;
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_7__ {int device; } ;


 int BUG () ;

 int DRM_DEBUG (char*) ;
 int amdgpu_ucode_validate (TYPE_4__*) ;
 int dev_err (int ,char*,char*) ;
 int le32_to_cpu (int ) ;
 int release_firmware (TYPE_4__*) ;
 int request_firmware (TYPE_4__**,char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int psp_v10_0_init_microcode(struct psp_context *psp)
{
 struct amdgpu_device *adev = psp->adev;
 const char *chip_name;
 char fw_name[30];
 int err = 0;
 const struct psp_firmware_header_v1_0 *hdr;

 DRM_DEBUG("\n");

 switch (adev->asic_type) {
 case 128:
  if (adev->rev_id >= 0x8)
   chip_name = "raven2";
  else if (adev->pdev->device == 0x15d8)
   chip_name = "picasso";
  else
   chip_name = "raven";
  break;
 default: BUG();
 }

 snprintf(fw_name, sizeof(fw_name), "amdgpu/%s_asd.bin", chip_name);
 err = request_firmware(&adev->psp.asd_fw, fw_name, adev->dev);
 if (err)
  goto out;

 err = amdgpu_ucode_validate(adev->psp.asd_fw);
 if (err)
  goto out;

 hdr = (const struct psp_firmware_header_v1_0 *)adev->psp.asd_fw->data;
 adev->psp.asd_fw_version = le32_to_cpu(hdr->header.ucode_version);
 adev->psp.asd_feature_version = le32_to_cpu(hdr->ucode_feature_version);
 adev->psp.asd_ucode_size = le32_to_cpu(hdr->header.ucode_size_bytes);
 adev->psp.asd_start_addr = (uint8_t *)hdr +
    le32_to_cpu(hdr->header.ucode_array_offset_bytes);

 return 0;
out:
 if (err) {
  dev_err(adev->dev,
   "psp v10.0: Failed to load firmware \"%s\"\n",
   fw_name);
  release_firmware(adev->psp.asd_fw);
  adev->psp.asd_fw = ((void*)0);
 }

 return err;
}

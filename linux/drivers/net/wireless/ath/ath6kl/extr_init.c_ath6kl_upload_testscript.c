
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ target_ver; } ;
struct TYPE_4__ {int testscript_addr; } ;
struct ath6kl {int testmode; TYPE_1__ version; int fw_testscript_len; int * fw_testscript; TYPE_2__ hw; } ;


 scalar_t__ AR6004_HW_1_3_VERSION ;
 scalar_t__ AR6004_HW_3_0_VERSION ;
 int ATH6KL_DBG_BOOT ;
 int ath6kl_bmi_write (struct ath6kl*,int,int *,int ) ;
 int ath6kl_bmi_write_hi32 (struct ath6kl*,int ,int) ;
 int ath6kl_dbg (int ,char*,int,int ) ;
 int ath6kl_err (char*,int) ;
 int hi_end_ram_reserve_sz ;
 int hi_ota_testscript ;
 int hi_test_apps_related ;

__attribute__((used)) static int ath6kl_upload_testscript(struct ath6kl *ar)
{
 u32 address;
 int ret;

 if (ar->testmode != 2)
  return 0;

 if (ar->fw_testscript == ((void*)0))
  return 0;

 address = ar->hw.testscript_addr;

 ath6kl_dbg(ATH6KL_DBG_BOOT, "writing testscript to 0x%x (%zd B)\n",
     address, ar->fw_testscript_len);

 ret = ath6kl_bmi_write(ar, address, ar->fw_testscript,
  ar->fw_testscript_len);
 if (ret) {
  ath6kl_err("Failed to write testscript file: %d\n", ret);
  return ret;
 }

 ath6kl_bmi_write_hi32(ar, hi_ota_testscript, address);

 if ((ar->version.target_ver != AR6004_HW_1_3_VERSION) &&
     (ar->version.target_ver != AR6004_HW_3_0_VERSION))
  ath6kl_bmi_write_hi32(ar, hi_end_ram_reserve_sz, 4096);

 ath6kl_bmi_write_hi32(ar, hi_test_apps_related, 1);

 return 0;
}

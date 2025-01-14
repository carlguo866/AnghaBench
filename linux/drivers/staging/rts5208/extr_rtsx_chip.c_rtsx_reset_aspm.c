
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_chip {int aspm_enabled; int aspm_l0s_l1_en; int * aspm_level; scalar_t__ dynamic_aspm; } ;


 int ASPM_FORCE_CTL ;
 scalar_t__ CHECK_PID (struct rtsx_chip*,int) ;
 scalar_t__ CHK_SDIO_EXIST (struct rtsx_chip*) ;
 int LCTLR ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int rtsx_write_cfg_dw (struct rtsx_chip*,int,int,int,int ) ;
 int rtsx_write_config_byte (struct rtsx_chip*,int ,int ) ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;

__attribute__((used)) static int rtsx_reset_aspm(struct rtsx_chip *chip)
{
 int ret;

 if (chip->dynamic_aspm) {
  if (!CHK_SDIO_EXIST(chip) || !CHECK_PID(chip, 0x5288))
   return STATUS_SUCCESS;

  ret = rtsx_write_cfg_dw(chip, 2, 0xC0, 0xFF,
     chip->aspm_l0s_l1_en);
  if (ret != STATUS_SUCCESS)
   return STATUS_FAIL;

  return STATUS_SUCCESS;
 }

 if (CHECK_PID(chip, 0x5208)) {
  ret = rtsx_write_register(chip, ASPM_FORCE_CTL, 0xFF, 0x3F);
  if (ret)
   return ret;
 }
 ret = rtsx_write_config_byte(chip, LCTLR, chip->aspm_l0s_l1_en);
 if (ret != STATUS_SUCCESS)
  return STATUS_FAIL;

 chip->aspm_level[0] = chip->aspm_l0s_l1_en;
 if (CHK_SDIO_EXIST(chip)) {
  chip->aspm_level[1] = chip->aspm_l0s_l1_en;
  ret = rtsx_write_cfg_dw(chip, CHECK_PID(chip, 0x5288) ? 2 : 1,
     0xC0, 0xFF, chip->aspm_l0s_l1_en);
  if (ret != STATUS_SUCCESS)
   return STATUS_FAIL;
 }

 chip->aspm_enabled = 1;

 return STATUS_SUCCESS;
}

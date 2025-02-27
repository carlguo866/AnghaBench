
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd_info {int dummy; } ;
struct rtsx_chip {struct sd_info sd_card; } ;


 scalar_t__ CHK_MMC_4BIT (struct sd_info*) ;
 scalar_t__ CHK_MMC_8BIT (struct sd_info*) ;
 scalar_t__ CHK_SD (struct sd_info*) ;
 int READ_SINGLE_BLOCK ;
 int SD_BUS_WIDTH_1 ;
 int SD_BUS_WIDTH_4 ;
 int SD_BUS_WIDTH_8 ;
 int SD_TM_NORMAL_READ ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int rtsx_clear_sd_error (struct rtsx_chip*) ;
 int sd_read_data (struct rtsx_chip*,int ,int*,int,int,int,int,int *,int ,int) ;

__attribute__((used)) static int sd_read_lba0(struct rtsx_chip *chip)
{
 struct sd_info *sd_card = &chip->sd_card;
 int retval;
 u8 cmd[5], bus_width;

 cmd[0] = 0x40 | READ_SINGLE_BLOCK;
 cmd[1] = 0;
 cmd[2] = 0;
 cmd[3] = 0;
 cmd[4] = 0;

 if (CHK_SD(sd_card)) {
  bus_width = SD_BUS_WIDTH_4;
 } else {
  if (CHK_MMC_8BIT(sd_card))
   bus_width = SD_BUS_WIDTH_8;
  else if (CHK_MMC_4BIT(sd_card))
   bus_width = SD_BUS_WIDTH_4;
  else
   bus_width = SD_BUS_WIDTH_1;
 }

 retval = sd_read_data(chip, SD_TM_NORMAL_READ, cmd, 5, 512, 1,
         bus_width, ((void*)0), 0, 100);
 if (retval != STATUS_SUCCESS) {
  rtsx_clear_sd_error(chip);
  return STATUS_FAIL;
 }

 return STATUS_SUCCESS;
}

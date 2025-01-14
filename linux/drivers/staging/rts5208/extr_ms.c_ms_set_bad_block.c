
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ms_info {int dummy; } ;
struct rtsx_chip {struct ms_info ms_card; } ;


 int BLOCK_WRITE ;
 scalar_t__ CHK_MS4BIT (struct ms_info*) ;
 int GET_INT ;
 int INT_REG_CED ;
 int INT_REG_CMDNK ;
 int INT_REG_ERR ;
 int MS_CMD_NK ;
 int MS_EXTRA_SIZE ;
 int MS_FLASH_WRITE_ERROR ;
 int MS_NO_ERROR ;
 int NO_WAIT_INT ;
 int OverwriteFlag ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int SystemParm ;
 int WAIT_INT ;
 int WRITE_REG ;
 int ms_read_bytes (struct rtsx_chip*,int ,int,int ,int*,int) ;
 int ms_read_extra_data (struct rtsx_chip*,int,int ,int*,int) ;
 int ms_send_cmd (struct rtsx_chip*,int ,int ) ;
 int ms_set_err_code (struct rtsx_chip*,int ) ;
 int ms_set_rw_reg_addr (struct rtsx_chip*,int ,int,int ,int) ;
 int ms_write_bytes (struct rtsx_chip*,int ,int,int ,int*,int) ;

__attribute__((used)) static int ms_set_bad_block(struct rtsx_chip *chip, u16 phy_blk)
{
 struct ms_info *ms_card = &chip->ms_card;
 int retval;
 u8 val, data[8], extra[MS_EXTRA_SIZE];

 retval = ms_read_extra_data(chip, phy_blk, 0, extra, MS_EXTRA_SIZE);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = ms_set_rw_reg_addr(chip, OverwriteFlag, MS_EXTRA_SIZE,
        SystemParm, 7);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 ms_set_err_code(chip, MS_NO_ERROR);

 if (CHK_MS4BIT(ms_card))
  data[0] = 0x88;
 else
  data[0] = 0x80;

 data[1] = 0;
 data[2] = (u8)(phy_blk >> 8);
 data[3] = (u8)phy_blk;
 data[4] = 0x80;
 data[5] = 0;
 data[6] = extra[0] & 0x7F;
 data[7] = 0xFF;

 retval = ms_write_bytes(chip, WRITE_REG, 7, NO_WAIT_INT, data, 7);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 retval = ms_send_cmd(chip, BLOCK_WRITE, WAIT_INT);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 ms_set_err_code(chip, MS_NO_ERROR);
 retval = ms_read_bytes(chip, GET_INT, 1, NO_WAIT_INT, &val, 1);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 if (val & INT_REG_CMDNK) {
  ms_set_err_code(chip, MS_CMD_NK);
  return STATUS_FAIL;
 }

 if (val & INT_REG_CED) {
  if (val & INT_REG_ERR) {
   ms_set_err_code(chip, MS_FLASH_WRITE_ERROR);
   return STATUS_FAIL;
  }
 }

 return STATUS_SUCCESS;
}

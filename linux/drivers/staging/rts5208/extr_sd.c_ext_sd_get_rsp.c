
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct rtsx_chip {int dummy; } ;


 scalar_t__ PPBUF_BASE2 ;
 int READ_REG_CMD ;
 scalar_t__ REG_SD_CMD0 ;
 scalar_t__ REG_SD_CMD4 ;
 scalar_t__ REG_SD_CMD5 ;
 int SD_CARD ;
 scalar_t__ SD_RSP_TYPE_R0 ;
 scalar_t__ SD_RSP_TYPE_R2 ;
 int STATUS_FAIL ;
 int STATUS_SUCCESS ;
 int dev_dbg (int ,char*,scalar_t__,...) ;
 int memcpy (scalar_t__*,int ,int) ;
 int rtsx_add_cmd (struct rtsx_chip*,int ,scalar_t__,int,int ) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_get_cmd_data (struct rtsx_chip*) ;
 int rtsx_init_cmd (struct rtsx_chip*) ;
 int rtsx_send_cmd (struct rtsx_chip*,int ,int) ;

int ext_sd_get_rsp(struct rtsx_chip *chip, int len, u8 *rsp, u8 rsp_type)
{
 int retval, rsp_len;
 u16 reg_addr;

 if (rsp_type == SD_RSP_TYPE_R0)
  return STATUS_SUCCESS;

 rtsx_init_cmd(chip);

 if (rsp_type == SD_RSP_TYPE_R2) {
  for (reg_addr = PPBUF_BASE2; reg_addr < PPBUF_BASE2 + 16;
       reg_addr++)
   rtsx_add_cmd(chip, READ_REG_CMD, reg_addr, 0xFF, 0);

  rsp_len = 17;
 } else if (rsp_type != SD_RSP_TYPE_R0) {
  for (reg_addr = REG_SD_CMD0; reg_addr <= REG_SD_CMD4;
       reg_addr++)
   rtsx_add_cmd(chip, READ_REG_CMD, reg_addr, 0xFF, 0);

  rsp_len = 6;
 }
 rtsx_add_cmd(chip, READ_REG_CMD, REG_SD_CMD5, 0xFF, 0);

 retval = rtsx_send_cmd(chip, SD_CARD, 100);
 if (retval != STATUS_SUCCESS)
  return STATUS_FAIL;

 if (rsp) {
  int min_len = (rsp_len < len) ? rsp_len : len;

  memcpy(rsp, rtsx_get_cmd_data(chip), min_len);

  dev_dbg(rtsx_dev(chip), "min_len = %d\n", min_len);
  dev_dbg(rtsx_dev(chip), "Response in cmd buf: 0x%x 0x%x 0x%x 0x%x\n",
   rsp[0], rsp[1], rsp[2], rsp[3]);
 }

 return STATUS_SUCCESS;
}

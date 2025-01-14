
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct firmware {int size; scalar_t__ data; } ;
struct adf7242_local {TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int ACCEPT_BEACON_FRAMES ;
 int ACCEPT_DATA_FRAMES ;
 int ACCEPT_MACCMD_FRAMES ;
 int ACCEPT_RESERVED_FRAMES ;
 int ADDON_EN ;
 int BIT (int) ;
 int CMD_RC_IDLE ;
 int CMD_RC_PC_RESET ;
 int CMD_RC_RESET ;
 int FIRMWARE ;
 int IRQ_CSMA_CA ;
 int IRQ_RX_PKT_RCVD ;
 int REG_AUTO_CFG ;
 int REG_EXTPA_MSC ;
 int REG_FFILT_CFG ;
 int REG_IRQ1_EN0 ;
 int REG_IRQ1_EN1 ;
 int REG_IRQ1_SRC0 ;
 int REG_PKT_CFG ;
 int REG_RXFE_CFG ;
 int RX_AUTO_ACK_EN ;
 int adf7242_clear_irqstat (struct adf7242_local*) ;
 int adf7242_cmd (struct adf7242_local*,int ) ;
 int adf7242_upload_firmware (struct adf7242_local*,int *,int ) ;
 int adf7242_verify_firmware (struct adf7242_local*,int *,int ) ;
 int adf7242_write_reg (struct adf7242_local*,int ,int) ;
 int dev_err (int *,char*,int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int *) ;

__attribute__((used)) static int adf7242_hw_init(struct adf7242_local *lp)
{
 int ret;
 const struct firmware *fw;

 adf7242_cmd(lp, CMD_RC_RESET);
 adf7242_cmd(lp, CMD_RC_IDLE);






 ret = request_firmware(&fw, FIRMWARE, &lp->spi->dev);
 if (ret) {
  dev_err(&lp->spi->dev,
   "request_firmware() failed with %d\n", ret);
  return ret;
 }

 ret = adf7242_upload_firmware(lp, (u8 *)fw->data, fw->size);
 if (ret) {
  dev_err(&lp->spi->dev,
   "upload firmware failed with %d\n", ret);
  release_firmware(fw);
  return ret;
 }

 ret = adf7242_verify_firmware(lp, (u8 *)fw->data, fw->size);
 if (ret) {
  dev_err(&lp->spi->dev,
   "verify firmware failed with %d\n", ret);
  release_firmware(fw);
  return ret;
 }

 adf7242_cmd(lp, CMD_RC_PC_RESET);

 release_firmware(fw);

 adf7242_write_reg(lp, REG_FFILT_CFG,
     ACCEPT_BEACON_FRAMES |
     ACCEPT_DATA_FRAMES |
     ACCEPT_MACCMD_FRAMES |
     ACCEPT_RESERVED_FRAMES);

 adf7242_write_reg(lp, REG_AUTO_CFG, RX_AUTO_ACK_EN);

 adf7242_write_reg(lp, REG_PKT_CFG, ADDON_EN | BIT(2));

 adf7242_write_reg(lp, REG_EXTPA_MSC, 0xF1);
 adf7242_write_reg(lp, REG_RXFE_CFG, 0x1D);

 adf7242_write_reg(lp, REG_IRQ1_EN0, 0);
 adf7242_write_reg(lp, REG_IRQ1_EN1, IRQ_RX_PKT_RCVD | IRQ_CSMA_CA);

 adf7242_clear_irqstat(lp);
 adf7242_write_reg(lp, REG_IRQ1_SRC0, 0xFF);

 adf7242_cmd(lp, CMD_RC_IDLE);

 return 0;
}

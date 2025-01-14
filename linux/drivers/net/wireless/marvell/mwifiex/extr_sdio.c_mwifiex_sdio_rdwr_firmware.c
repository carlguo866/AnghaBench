
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sdio_mmc_card {TYPE_1__* reg; int func; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;
typedef enum rdwr_status { ____Placeholder_rdwr_status } rdwr_status ;
struct TYPE_2__ {scalar_t__ fw_dump_host_ready; int fw_dump_ctrl; } ;


 int ERROR ;
 scalar_t__ FW_DUMP_DONE ;
 int MAX_POLL_TRIES ;
 int RDWR_STATUS_DONE ;
 int RDWR_STATUS_FAILURE ;
 int RDWR_STATUS_SUCCESS ;
 int WARN ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 scalar_t__ sdio_readb (int ,int ,int*) ;
 int sdio_writeb (int ,scalar_t__,int ,int*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static enum
rdwr_status mwifiex_sdio_rdwr_firmware(struct mwifiex_adapter *adapter,
           u8 doneflag)
{
 struct sdio_mmc_card *card = adapter->card;
 int ret, tries;
 u8 ctrl_data = 0;

 sdio_writeb(card->func, card->reg->fw_dump_host_ready,
      card->reg->fw_dump_ctrl, &ret);
 if (ret) {
  mwifiex_dbg(adapter, ERROR, "SDIO Write ERR\n");
  return RDWR_STATUS_FAILURE;
 }
 for (tries = 0; tries < MAX_POLL_TRIES; tries++) {
  ctrl_data = sdio_readb(card->func, card->reg->fw_dump_ctrl,
           &ret);
  if (ret) {
   mwifiex_dbg(adapter, ERROR, "SDIO read err\n");
   return RDWR_STATUS_FAILURE;
  }
  if (ctrl_data == FW_DUMP_DONE)
   break;
  if (doneflag && ctrl_data == doneflag)
   return RDWR_STATUS_DONE;
  if (ctrl_data != card->reg->fw_dump_host_ready) {
   mwifiex_dbg(adapter, WARN,
        "The ctrl reg was changed, re-try again\n");
   sdio_writeb(card->func, card->reg->fw_dump_host_ready,
        card->reg->fw_dump_ctrl, &ret);
   if (ret) {
    mwifiex_dbg(adapter, ERROR, "SDIO write err\n");
    return RDWR_STATUS_FAILURE;
   }
  }
  usleep_range(100, 200);
 }
 if (ctrl_data == card->reg->fw_dump_host_ready) {
  mwifiex_dbg(adapter, ERROR,
       "Fail to pull ctrl_data\n");
  return RDWR_STATUS_FAILURE;
 }

 return RDWR_STATUS_SUCCESS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct mmc_queue {struct mmc_blk_data* blkdata; } ;
struct mmc_card {int quirks; scalar_t__ erase_arg; int host; } ;
struct TYPE_2__ {struct mmc_card* card; } ;
struct mmc_blk_data {TYPE_1__ queue; } ;
typedef int blk_status_t ;


 int BLK_STS_IOERR ;
 int BLK_STS_NOTSUPP ;
 int BLK_STS_OK ;
 int EIO ;
 int EXT_CSD_CMD_SET_NORMAL ;
 int INAND_CMD38_ARG_ERASE ;
 int INAND_CMD38_ARG_EXT_CSD ;
 int INAND_CMD38_ARG_TRIM ;
 int MMC_BLK_DISCARD ;
 int MMC_QUIRK_INAND_CMD38 ;
 scalar_t__ MMC_TRIM_ARG ;
 int blk_mq_end_request (struct request*,int ) ;
 unsigned int blk_rq_pos (struct request*) ;
 unsigned int blk_rq_sectors (struct request*) ;
 int mmc_blk_reset (struct mmc_blk_data*,int ,int) ;
 int mmc_blk_reset_success (struct mmc_blk_data*,int) ;
 int mmc_can_erase (struct mmc_card*) ;
 int mmc_erase (struct mmc_card*,unsigned int,unsigned int,scalar_t__) ;
 int mmc_switch (struct mmc_card*,int ,int ,int ,int ) ;

__attribute__((used)) static void mmc_blk_issue_discard_rq(struct mmc_queue *mq, struct request *req)
{
 struct mmc_blk_data *md = mq->blkdata;
 struct mmc_card *card = md->queue.card;
 unsigned int from, nr;
 int err = 0, type = MMC_BLK_DISCARD;
 blk_status_t status = BLK_STS_OK;

 if (!mmc_can_erase(card)) {
  status = BLK_STS_NOTSUPP;
  goto fail;
 }

 from = blk_rq_pos(req);
 nr = blk_rq_sectors(req);

 do {
  err = 0;
  if (card->quirks & MMC_QUIRK_INAND_CMD38) {
   err = mmc_switch(card, EXT_CSD_CMD_SET_NORMAL,
      INAND_CMD38_ARG_EXT_CSD,
      card->erase_arg == MMC_TRIM_ARG ?
      INAND_CMD38_ARG_TRIM :
      INAND_CMD38_ARG_ERASE,
      0);
  }
  if (!err)
   err = mmc_erase(card, from, nr, card->erase_arg);
 } while (err == -EIO && !mmc_blk_reset(md, card->host, type));
 if (err)
  status = BLK_STS_IOERR;
 else
  mmc_blk_reset_success(md, type);
fail:
 blk_mq_end_request(req, status);
}

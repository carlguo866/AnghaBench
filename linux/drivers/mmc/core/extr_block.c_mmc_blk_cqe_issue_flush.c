
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int dummy; } ;
struct mmc_request {TYPE_2__* cmd; } ;
struct mmc_queue_req {int dummy; } ;
struct mmc_queue {TYPE_1__* card; } ;
struct TYPE_4__ {int arg; int flags; int opcode; } ;
struct TYPE_3__ {int host; } ;


 int EXT_CSD_CMD_SET_NORMAL ;
 int EXT_CSD_FLUSH_CACHE ;
 int MMC_CMD_AC ;
 int MMC_RSP_R1B ;
 int MMC_SWITCH ;
 int MMC_SWITCH_MODE_WRITE_BYTE ;
 struct mmc_request* mmc_blk_cqe_prep_dcmd (struct mmc_queue_req*,struct request*) ;
 int mmc_blk_cqe_start_req (int ,struct mmc_request*) ;
 struct mmc_queue_req* req_to_mmc_queue_req (struct request*) ;

__attribute__((used)) static int mmc_blk_cqe_issue_flush(struct mmc_queue *mq, struct request *req)
{
 struct mmc_queue_req *mqrq = req_to_mmc_queue_req(req);
 struct mmc_request *mrq = mmc_blk_cqe_prep_dcmd(mqrq, req);

 mrq->cmd->opcode = MMC_SWITCH;
 mrq->cmd->arg = (MMC_SWITCH_MODE_WRITE_BYTE << 24) |
   (EXT_CSD_FLUSH_CACHE << 16) |
   (1 << 8) |
   EXT_CSD_CMD_SET_NORMAL;
 mrq->cmd->flags = MMC_CMD_AC | MMC_RSP_R1B;

 return mmc_blk_cqe_start_req(mq->card->host, mrq);
}

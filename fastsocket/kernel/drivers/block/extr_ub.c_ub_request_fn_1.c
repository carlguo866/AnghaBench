
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_scsi_cmd {int dummy; } ;
struct ub_request {int dummy; } ;
struct ub_lun {scalar_t__ changed; struct ub_dev* udev; } ;
struct ub_dev {int poison; } ;
struct request {scalar_t__ cmd_type; } ;


 int DID_NO_CONNECT ;
 scalar_t__ REQ_TYPE_BLOCK_PC ;
 int SAM_STAT_CHECK_CONDITION ;
 scalar_t__ atomic_read (int *) ;
 int blk_start_request (struct request*) ;
 int ub_end_rq (struct request*,int) ;

__attribute__((used)) static int ub_request_fn_1(struct ub_lun *lun, struct request *rq)
{
 struct ub_dev *sc = lun->udev;
 struct ub_scsi_cmd *cmd;
 struct ub_request *urq;
 int n_elem;

 if (atomic_read(&sc->poison)) {
  blk_start_request(rq);
  ub_end_rq(rq, DID_NO_CONNECT << 16);
  return 0;
 }

 if (lun->changed && rq->cmd_type != REQ_TYPE_BLOCK_PC)
  blk_start_request(rq);
  ub_end_rq(rq, SAM_STAT_CHECK_CONDITION);
  return 0;
 }

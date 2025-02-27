
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nvmet_fc_tgtport {int dev; } ;
struct nvmet_fc_tgt_queue {scalar_t__ sqhd; int connected; scalar_t__ ersp_ratio; } ;
struct nvmet_fc_ls_iod {int rqstdatalen; int assoc; TYPE_3__* lsreq; scalar_t__ rspbuf; scalar_t__ rqstbuf; } ;
struct fcnvme_lsdesc_cr_conn_cmd {int dummy; } ;
struct fcnvme_lsdesc_conn_id {int dummy; } ;
struct fcnvme_lsdesc_assoc_id {int dummy; } ;
struct TYPE_10__ {scalar_t__ desc_tag; scalar_t__ desc_len; int qid; int ersp_ratio; int sqsize; } ;
struct TYPE_7__ {int ls_cmd; } ;
struct TYPE_6__ {scalar_t__ desc_tag; scalar_t__ desc_len; int association_id; } ;
struct fcnvme_ls_cr_conn_rqst {scalar_t__ desc_list_len; TYPE_5__ connect_cmd; TYPE_2__ w0; TYPE_1__ associd; } ;
struct TYPE_9__ {int connection_id; scalar_t__ desc_len; scalar_t__ desc_tag; } ;
struct fcnvme_ls_cr_conn_acc {TYPE_4__ connectid; } ;
struct TYPE_8__ {int rsplen; } ;


 int FCNVME_LSDESC_ASSOC_ID ;
 int FCNVME_LSDESC_CONN_ID ;
 int FCNVME_LSDESC_CREATE_CONN_CMD ;
 int FCNVME_LS_ACC ;
 int FCNVME_LS_CREATE_CONNECTION ;
 int FCNVME_RJT_EXP_NONE ;
 int FCNVME_RJT_RC_INV_ASSOC ;
 int FCNVME_RJT_RC_LOGIC ;
 int NVME_FC_MAX_LS_BUFFER_SIZE ;
 int VERR_ASSOC_ID ;
 int VERR_ASSOC_ID_LEN ;
 int VERR_CR_CONN_CMD ;
 int VERR_CR_CONN_CMD_LEN ;
 int VERR_CR_CONN_LEN ;
 int VERR_CR_CONN_RQST_LEN ;
 int VERR_ERSP_RATIO ;
 int VERR_NO_ASSOC ;
 int VERR_QUEUE_ALLOC_FAIL ;
 int atomic_set (int *,int) ;
 scalar_t__ be16_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 scalar_t__ cpu_to_be32 (int ) ;
 int cpu_to_be64 (int ) ;
 int dev_err (int ,char*,int ) ;
 scalar_t__ fcnvme_lsdesc_len (int) ;
 int memset (struct fcnvme_ls_cr_conn_acc*,int ,int) ;
 struct nvmet_fc_tgt_queue* nvmet_fc_alloc_target_queue (int ,scalar_t__,scalar_t__) ;
 int nvmet_fc_find_target_assoc (struct nvmet_fc_tgtport*,int ) ;
 int nvmet_fc_format_rjt (struct fcnvme_ls_cr_conn_acc*,int ,int ,int ,int ,int ) ;
 int nvmet_fc_format_rsp_hdr (struct fcnvme_ls_cr_conn_acc*,int ,scalar_t__,int ) ;
 int nvmet_fc_makeconnid (int ,scalar_t__) ;
 int nvmet_fc_tgt_a_put (int ) ;
 int * validation_errors ;

__attribute__((used)) static void
nvmet_fc_ls_create_connection(struct nvmet_fc_tgtport *tgtport,
   struct nvmet_fc_ls_iod *iod)
{
 struct fcnvme_ls_cr_conn_rqst *rqst =
    (struct fcnvme_ls_cr_conn_rqst *)iod->rqstbuf;
 struct fcnvme_ls_cr_conn_acc *acc =
    (struct fcnvme_ls_cr_conn_acc *)iod->rspbuf;
 struct nvmet_fc_tgt_queue *queue;
 int ret = 0;

 memset(acc, 0, sizeof(*acc));

 if (iod->rqstdatalen < sizeof(struct fcnvme_ls_cr_conn_rqst))
  ret = VERR_CR_CONN_LEN;
 else if (rqst->desc_list_len !=
   fcnvme_lsdesc_len(
    sizeof(struct fcnvme_ls_cr_conn_rqst)))
  ret = VERR_CR_CONN_RQST_LEN;
 else if (rqst->associd.desc_tag != cpu_to_be32(FCNVME_LSDESC_ASSOC_ID))
  ret = VERR_ASSOC_ID;
 else if (rqst->associd.desc_len !=
   fcnvme_lsdesc_len(
    sizeof(struct fcnvme_lsdesc_assoc_id)))
  ret = VERR_ASSOC_ID_LEN;
 else if (rqst->connect_cmd.desc_tag !=
   cpu_to_be32(FCNVME_LSDESC_CREATE_CONN_CMD))
  ret = VERR_CR_CONN_CMD;
 else if (rqst->connect_cmd.desc_len !=
   fcnvme_lsdesc_len(
    sizeof(struct fcnvme_lsdesc_cr_conn_cmd)))
  ret = VERR_CR_CONN_CMD_LEN;
 else if (!rqst->connect_cmd.ersp_ratio ||
   (be16_to_cpu(rqst->connect_cmd.ersp_ratio) >=
    be16_to_cpu(rqst->connect_cmd.sqsize)))
  ret = VERR_ERSP_RATIO;

 else {

  iod->assoc = nvmet_fc_find_target_assoc(tgtport,
    be64_to_cpu(rqst->associd.association_id));
  if (!iod->assoc)
   ret = VERR_NO_ASSOC;
  else {
   queue = nvmet_fc_alloc_target_queue(iod->assoc,
     be16_to_cpu(rqst->connect_cmd.qid),
     be16_to_cpu(rqst->connect_cmd.sqsize));
   if (!queue)
    ret = VERR_QUEUE_ALLOC_FAIL;


   nvmet_fc_tgt_a_put(iod->assoc);
  }
 }

 if (ret) {
  dev_err(tgtport->dev,
   "Create Connection LS failed: %s\n",
   validation_errors[ret]);
  iod->lsreq->rsplen = nvmet_fc_format_rjt(acc,
    NVME_FC_MAX_LS_BUFFER_SIZE, rqst->w0.ls_cmd,
    (ret == VERR_NO_ASSOC) ?
     FCNVME_RJT_RC_INV_ASSOC :
     FCNVME_RJT_RC_LOGIC,
    FCNVME_RJT_EXP_NONE, 0);
  return;
 }

 queue->ersp_ratio = be16_to_cpu(rqst->connect_cmd.ersp_ratio);
 atomic_set(&queue->connected, 1);
 queue->sqhd = 0;



 iod->lsreq->rsplen = sizeof(*acc);

 nvmet_fc_format_rsp_hdr(acc, FCNVME_LS_ACC,
   fcnvme_lsdesc_len(sizeof(struct fcnvme_ls_cr_conn_acc)),
   FCNVME_LS_CREATE_CONNECTION);
 acc->connectid.desc_tag = cpu_to_be32(FCNVME_LSDESC_CONN_ID);
 acc->connectid.desc_len =
   fcnvme_lsdesc_len(
    sizeof(struct fcnvme_lsdesc_conn_id));
 acc->connectid.connection_id =
   cpu_to_be64(nvmet_fc_makeconnid(iod->assoc,
    be16_to_cpu(rqst->connect_cmd.qid)));
}

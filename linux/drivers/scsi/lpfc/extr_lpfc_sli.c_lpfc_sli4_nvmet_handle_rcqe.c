
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_8__ {scalar_t__ virt; } ;
struct rqb_dmabuf {TYPE_4__ hbuf; scalar_t__ bytes_recv; } ;
struct lpfc_rcqe {int dummy; } ;
struct lpfc_queue {size_t queue_id; int q_flag; int RQ_no_posted_buf; int RQ_buf_posted; int isr_timestamp; int RQ_rcv_buf; int RQ_no_buf_found; } ;
struct lpfc_nvmet_tgtport {int xmt_fcp_release; int rcv_fcp_cmd_out; int rcv_fcp_cmd_in; } ;
struct TYPE_6__ {struct lpfc_queue** nvmet_mrq_data; struct lpfc_queue** nvmet_mrq_hdr; TYPE_1__** nvmet_cqset; } ;
struct lpfc_hba {scalar_t__ nvmet_support; TYPE_3__* targetport; int hbalock; TYPE_2__ sli4_hba; } ;
struct fc_frame_header {int* fh_f_ctl; int fh_type; int fh_seq_cnt; } ;
struct TYPE_7__ {struct lpfc_nvmet_tgtport* private; } ;
struct TYPE_5__ {size_t queue_id; } ;


 scalar_t__ CQE_CODE_RECEIVE_V1 ;
 size_t FC_FC_END_SEQ ;
 size_t FC_FC_FIRST_SEQ ;
 size_t FC_FC_SEQ_INIT ;




 int FC_TYPE_FCP ;
 int HBA_NVMET_CQ_NOTIFY ;
 int KERN_ERR ;
 int LOG_NVME ;
 int LOG_SLI ;
 int atomic_read (int *) ;
 scalar_t__ bf_get (int ,struct lpfc_rcqe*) ;
 int lpfc_cqe_code ;
 int lpfc_nvmet_unsol_fcp_event (struct lpfc_hba*,size_t,struct rqb_dmabuf*,int ,int) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,...) ;
 int lpfc_rcqe_length ;
 int lpfc_rcqe_rq_id ;
 int lpfc_rcqe_rq_id_v1 ;
 int lpfc_rcqe_status ;
 int lpfc_rq_buf_free (struct lpfc_hba*,TYPE_4__*) ;
 int lpfc_sli4_rq_release (struct lpfc_queue*,struct lpfc_queue*) ;
 struct rqb_dmabuf* lpfc_sli_rqbuf_get (struct lpfc_hba*,struct lpfc_queue*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool
lpfc_sli4_nvmet_handle_rcqe(struct lpfc_hba *phba, struct lpfc_queue *cq,
       struct lpfc_rcqe *rcqe)
{
 bool workposted = 0;
 struct lpfc_queue *hrq;
 struct lpfc_queue *drq;
 struct rqb_dmabuf *dma_buf;
 struct fc_frame_header *fc_hdr;
 struct lpfc_nvmet_tgtport *tgtp;
 uint32_t status, rq_id;
 unsigned long iflags;
 uint32_t fctl, idx;

 if ((phba->nvmet_support == 0) ||
     (phba->sli4_hba.nvmet_cqset == ((void*)0)))
  return workposted;

 idx = cq->queue_id - phba->sli4_hba.nvmet_cqset[0]->queue_id;
 hrq = phba->sli4_hba.nvmet_mrq_hdr[idx];
 drq = phba->sli4_hba.nvmet_mrq_data[idx];


 if (unlikely(!hrq) || unlikely(!drq))
  return workposted;

 if (bf_get(lpfc_cqe_code, rcqe) == CQE_CODE_RECEIVE_V1)
  rq_id = bf_get(lpfc_rcqe_rq_id_v1, rcqe);
 else
  rq_id = bf_get(lpfc_rcqe_rq_id, rcqe);

 if ((phba->nvmet_support == 0) ||
     (rq_id != hrq->queue_id))
  return workposted;

 status = bf_get(lpfc_rcqe_status, rcqe);
 switch (status) {
 case 129:
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "6126 Receive Frame Truncated!!\n");

 case 128:
  spin_lock_irqsave(&phba->hbalock, iflags);
  lpfc_sli4_rq_release(hrq, drq);
  dma_buf = lpfc_sli_rqbuf_get(phba, hrq);
  if (!dma_buf) {
   hrq->RQ_no_buf_found++;
   spin_unlock_irqrestore(&phba->hbalock, iflags);
   goto out;
  }
  spin_unlock_irqrestore(&phba->hbalock, iflags);
  hrq->RQ_rcv_buf++;
  hrq->RQ_buf_posted--;
  fc_hdr = (struct fc_frame_header *)dma_buf->hbuf.virt;


  fctl = (fc_hdr->fh_f_ctl[0] << 16 |
  fc_hdr->fh_f_ctl[1] << 8 |
  fc_hdr->fh_f_ctl[2]);
  if (((fctl &
      (FC_FC_FIRST_SEQ | FC_FC_END_SEQ | FC_FC_SEQ_INIT)) !=
      (FC_FC_FIRST_SEQ | FC_FC_END_SEQ | FC_FC_SEQ_INIT)) ||
      (fc_hdr->fh_seq_cnt != 0))
   goto drop;

  if (fc_hdr->fh_type == FC_TYPE_FCP) {
   dma_buf->bytes_recv = bf_get(lpfc_rcqe_length, rcqe);
   lpfc_nvmet_unsol_fcp_event(
    phba, idx, dma_buf, cq->isr_timestamp,
    cq->q_flag & HBA_NVMET_CQ_NOTIFY);
   return 0;
  }
drop:
  lpfc_rq_buf_free(phba, &dma_buf->hbuf);
  break;
 case 131:
  if (phba->nvmet_support) {
   tgtp = phba->targetport->private;
   lpfc_printf_log(phba, KERN_ERR, LOG_SLI | LOG_NVME,
     "6401 RQE Error x%x, posted %d err_cnt "
     "%d: %x %x %x\n",
     status, hrq->RQ_buf_posted,
     hrq->RQ_no_posted_buf,
     atomic_read(&tgtp->rcv_fcp_cmd_in),
     atomic_read(&tgtp->rcv_fcp_cmd_out),
     atomic_read(&tgtp->xmt_fcp_release));
  }


 case 130:
  hrq->RQ_no_posted_buf++;

  break;
 }
out:
 return workposted;
}

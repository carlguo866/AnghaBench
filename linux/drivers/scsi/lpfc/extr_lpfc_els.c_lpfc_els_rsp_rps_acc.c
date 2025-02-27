
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct lpfc_nodelist {int nlp_rpi; int nlp_state; int nlp_flag; int nlp_DID; int vport; } ;
struct TYPE_17__ {int ox_id; } ;
struct TYPE_18__ {TYPE_2__ rcvsli3; } ;
struct TYPE_14__ {int ulpContext; TYPE_3__ unsli3; } ;
struct lpfc_iocbq {int iocb_cmpl; TYPE_10__ iocb; int iotag; scalar_t__ context2; } ;
struct TYPE_21__ {int elsXmitACC; } ;
struct lpfc_hba {scalar_t__ fc_topology; TYPE_6__ fc_stat; TYPE_12__* pport; int mbox_mem_pool; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct TYPE_19__ {int crcCnt; int invalidXmitWord; int primSeqErrCnt; int lossSignalCnt; int lossSyncCnt; int linkFailureCnt; } ;
struct TYPE_20__ {TYPE_4__ varRdLnk; } ;
struct TYPE_23__ {TYPE_5__ un; scalar_t__ mbxStatus; } ;
struct TYPE_16__ {TYPE_8__ mb; } ;
struct TYPE_24__ {int * ctx_buf; int * ctx_ndlp; TYPE_1__ u; } ;
struct TYPE_22__ {void* crcCnt; void* invalidXmitWord; void* primSeqErrCnt; void* lossSignalCnt; void* lossSyncCnt; void* linkFailureCnt; int portStatus; scalar_t__ rsvd1; } ;
struct TYPE_15__ {int fc_flag; } ;
typedef TYPE_7__ RPS_RSP ;
typedef TYPE_8__ MAILBOX_t ;
typedef TYPE_9__ LPFC_MBOXQ_t ;
typedef TYPE_10__ IOCB_t ;


 int ELS_CMD_ACC ;
 int FC_FABRIC ;
 scalar_t__ IOCB_ERROR ;
 int KERN_INFO ;
 int LOG_ELS ;
 int LPFC_ELS_RING ;
 scalar_t__ LPFC_TOPOLOGY_LOOP ;
 int cpu_to_be16 (int) ;
 void* cpu_to_be32 (int ) ;
 int lpfc_cmpl_els_rsp ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_max_els_tries ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 struct lpfc_iocbq* lpfc_prep_els_iocb (TYPE_12__*,int ,int,int ,struct lpfc_nodelist*,int ,int) ;
 int lpfc_printf_vlog (int ,int ,int ,char*,int ,int,int ,int ,int ,int ) ;
 scalar_t__ lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int mempool_free (TYPE_9__*,int ) ;

__attribute__((used)) static void
lpfc_els_rsp_rps_acc(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
 MAILBOX_t *mb;
 IOCB_t *icmd;
 RPS_RSP *rps_rsp;
 uint8_t *pcmd;
 struct lpfc_iocbq *elsiocb;
 struct lpfc_nodelist *ndlp;
 uint16_t status;
 uint16_t oxid;
 uint16_t rxid;
 uint32_t cmdsize;

 mb = &pmb->u.mb;

 ndlp = (struct lpfc_nodelist *)pmb->ctx_ndlp;
 rxid = (uint16_t)((unsigned long)(pmb->ctx_buf) & 0xffff);
 oxid = (uint16_t)(((unsigned long)(pmb->ctx_buf) >> 16) & 0xffff);
 pmb->ctx_ndlp = ((void*)0);
 pmb->ctx_buf = ((void*)0);

 if (mb->mbxStatus) {
  mempool_free(pmb, phba->mbox_mem_pool);
  return;
 }

 cmdsize = sizeof(RPS_RSP) + sizeof(uint32_t);
 mempool_free(pmb, phba->mbox_mem_pool);
 elsiocb = lpfc_prep_els_iocb(phba->pport, 0, cmdsize,
         lpfc_max_els_tries, ndlp,
         ndlp->nlp_DID, ELS_CMD_ACC);


 lpfc_nlp_put(ndlp);

 if (!elsiocb)
  return;

 icmd = &elsiocb->iocb;
 icmd->ulpContext = rxid;
 icmd->unsli3.rcvsli3.ox_id = oxid;

 pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);
 *((uint32_t *) (pcmd)) = ELS_CMD_ACC;
 pcmd += sizeof(uint32_t);
 rps_rsp = (RPS_RSP *)pcmd;

 if (phba->fc_topology != LPFC_TOPOLOGY_LOOP)
  status = 0x10;
 else
  status = 0x8;
 if (phba->pport->fc_flag & FC_FABRIC)
  status |= 0x4;

 rps_rsp->rsvd1 = 0;
 rps_rsp->portStatus = cpu_to_be16(status);
 rps_rsp->linkFailureCnt = cpu_to_be32(mb->un.varRdLnk.linkFailureCnt);
 rps_rsp->lossSyncCnt = cpu_to_be32(mb->un.varRdLnk.lossSyncCnt);
 rps_rsp->lossSignalCnt = cpu_to_be32(mb->un.varRdLnk.lossSignalCnt);
 rps_rsp->primSeqErrCnt = cpu_to_be32(mb->un.varRdLnk.primSeqErrCnt);
 rps_rsp->invalidXmitWord = cpu_to_be32(mb->un.varRdLnk.invalidXmitWord);
 rps_rsp->crcCnt = cpu_to_be32(mb->un.varRdLnk.crcCnt);

 lpfc_printf_vlog(ndlp->vport, KERN_INFO, LOG_ELS,
    "0118 Xmit ELS RPS ACC response tag x%x xri x%x, "
    "did x%x, nlp_flag x%x, nlp_state x%x, rpi x%x\n",
    elsiocb->iotag, elsiocb->iocb.ulpContext,
    ndlp->nlp_DID, ndlp->nlp_flag, ndlp->nlp_state,
    ndlp->nlp_rpi);
 elsiocb->iocb_cmpl = lpfc_cmpl_els_rsp;
 phba->fc_stat.elsXmitACC++;
 if (lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, elsiocb, 0) == IOCB_ERROR)
  lpfc_els_free_iocb(phba, elsiocb);
 return;
}

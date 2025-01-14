
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int lsRjtRsnCode; } ;
struct TYPE_12__ {int lsRjtError; TYPE_5__ b; } ;
struct ls_rjt {TYPE_6__ un; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int vport; } ;
struct lpfc_lcb_context {scalar_t__ sub_command; int ndlp; int rx_id; int ox_id; int duration; int frequency; int type; scalar_t__ capability; } ;
struct TYPE_8__ {int ox_id; } ;
struct TYPE_9__ {TYPE_2__ rcvsli3; } ;
struct TYPE_10__ {int ulpContext; TYPE_3__ unsli3; } ;
struct lpfc_iocbq {TYPE_4__ iocb; scalar_t__ context2; } ;
struct TYPE_7__ {int sli_intf; } ;
struct lpfc_hba {scalar_t__ sli_rev; int hba_flag; TYPE_1__ sli4_hba; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct fc_lcb_request_frame {scalar_t__ lcb_sub_command; int lcb_duration; int lcb_frequency; int lcb_type; int lcb_command; } ;
typedef int stat ;


 int GFP_KERNEL ;
 int HBA_FCOE_MODE ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_ELS ;
 scalar_t__ LPFC_LCB_OFF ;
 scalar_t__ LPFC_LCB_ON ;
 scalar_t__ LPFC_SLI_INTF_IF_TYPE_2 ;
 scalar_t__ LPFC_SLI_REV4 ;
 int LSRJT_CMD_UNSUPPORTED ;
 int LSRJT_UNABLE_TPC ;
 int be16_to_cpu (int ) ;
 scalar_t__ bf_get (int ,int *) ;
 int kfree (struct lpfc_lcb_context*) ;
 struct lpfc_lcb_context* kmalloc (int,int ) ;
 int lpfc_els_rsp_reject (struct lpfc_vport*,int ,struct lpfc_iocbq*,struct lpfc_nodelist*,int *) ;
 int lpfc_nlp_get (struct lpfc_nodelist*) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,...) ;
 scalar_t__ lpfc_sli4_set_beacon (struct lpfc_vport*,struct lpfc_lcb_context*,int) ;
 int lpfc_sli_intf_if_type ;
 int memset (struct ls_rjt*,int ,int) ;

__attribute__((used)) static int
lpfc_els_rcv_lcb(struct lpfc_vport *vport, struct lpfc_iocbq *cmdiocb,
   struct lpfc_nodelist *ndlp)
{
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_dmabuf *pcmd;
 uint8_t *lp;
 struct fc_lcb_request_frame *beacon;
 struct lpfc_lcb_context *lcb_context;
 uint8_t state, rjt_err;
 struct ls_rjt stat;

 pcmd = (struct lpfc_dmabuf *)cmdiocb->context2;
 lp = (uint8_t *)pcmd->virt;
 beacon = (struct fc_lcb_request_frame *)pcmd->virt;

 lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
   "0192 ELS LCB Data x%x x%x x%x x%x sub x%x "
   "type x%x frequency %x duration x%x\n",
   lp[0], lp[1], lp[2],
   beacon->lcb_command,
   beacon->lcb_sub_command,
   beacon->lcb_type,
   beacon->lcb_frequency,
   be16_to_cpu(beacon->lcb_duration));

 if (beacon->lcb_sub_command != LPFC_LCB_ON &&
     beacon->lcb_sub_command != LPFC_LCB_OFF) {
  rjt_err = LSRJT_CMD_UNSUPPORTED;
  goto rjt;
 }

 if (phba->sli_rev < LPFC_SLI_REV4 ||
     phba->hba_flag & HBA_FCOE_MODE ||
     (bf_get(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf) <
     LPFC_SLI_INTF_IF_TYPE_2)) {
  rjt_err = LSRJT_CMD_UNSUPPORTED;
  goto rjt;
 }

 lcb_context = kmalloc(sizeof(*lcb_context), GFP_KERNEL);
 if (!lcb_context) {
  rjt_err = LSRJT_UNABLE_TPC;
  goto rjt;
 }

 state = (beacon->lcb_sub_command == LPFC_LCB_ON) ? 1 : 0;
 lcb_context->sub_command = beacon->lcb_sub_command;
 lcb_context->capability = 0;
 lcb_context->type = beacon->lcb_type;
 lcb_context->frequency = beacon->lcb_frequency;
 lcb_context->duration = beacon->lcb_duration;
 lcb_context->ox_id = cmdiocb->iocb.unsli3.rcvsli3.ox_id;
 lcb_context->rx_id = cmdiocb->iocb.ulpContext;
 lcb_context->ndlp = lpfc_nlp_get(ndlp);
 if (lpfc_sli4_set_beacon(vport, lcb_context, state)) {
  lpfc_printf_vlog(ndlp->vport, KERN_ERR,
     LOG_ELS, "0193 failed to send mail box");
  kfree(lcb_context);
  lpfc_nlp_put(ndlp);
  rjt_err = LSRJT_UNABLE_TPC;
  goto rjt;
 }
 return 0;
rjt:
 memset(&stat, 0, sizeof(stat));
 stat.un.b.lsRjtRsnCode = rjt_err;
 lpfc_els_rsp_reject(vport, stat.un.lsRjtError, cmdiocb, ndlp, ((void*)0));
 return 1;
}

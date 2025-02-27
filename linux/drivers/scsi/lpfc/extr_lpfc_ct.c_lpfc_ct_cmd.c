
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct ulp_bde64 {int dummy; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_3__ {int CmdRsp; } ;
struct TYPE_4__ {TYPE_1__ bits; } ;
struct lpfc_sli_ct_request {TYPE_2__ CommandResponse; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;


 int ENOMEM ;
 struct lpfc_dmabuf* lpfc_alloc_ct_rsp (struct lpfc_hba*,int,struct ulp_bde64*,int ,int*) ;
 int lpfc_free_ct_rsp (struct lpfc_hba*,struct lpfc_dmabuf*) ;
 int lpfc_gen_req (struct lpfc_vport*,struct lpfc_dmabuf*,struct lpfc_dmabuf*,struct lpfc_dmabuf*,void (*) (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*),struct lpfc_nodelist*,int ,int,int ,int ) ;

__attribute__((used)) static int
lpfc_ct_cmd(struct lpfc_vport *vport, struct lpfc_dmabuf *inmp,
     struct lpfc_dmabuf *bmp, struct lpfc_nodelist *ndlp,
     void (*cmpl) (struct lpfc_hba *, struct lpfc_iocbq *,
     struct lpfc_iocbq *),
     uint32_t rsp_size, uint8_t retry)
{
 struct lpfc_hba *phba = vport->phba;
 struct ulp_bde64 *bpl = (struct ulp_bde64 *) bmp->virt;
 struct lpfc_dmabuf *outmp;
 int cnt = 0, status;
 int cmdcode = ((struct lpfc_sli_ct_request *) inmp->virt)->
  CommandResponse.bits.CmdRsp;

 bpl++;


 outmp = lpfc_alloc_ct_rsp(phba, cmdcode, bpl, rsp_size, &cnt);
 if (!outmp)
  return -ENOMEM;





 cnt += 1;
 status = lpfc_gen_req(vport, bmp, inmp, outmp, cmpl, ndlp, 0,
         cnt, 0, retry);
 if (status) {
  lpfc_free_ct_rsp(phba, outmp);
  return -ENOMEM;
 }
 return 0;
}

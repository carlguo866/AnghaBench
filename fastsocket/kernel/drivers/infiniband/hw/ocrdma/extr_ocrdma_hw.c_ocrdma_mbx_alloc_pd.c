
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_pd {int dpp_enabled; int id; int dpp_page; scalar_t__ num_dpp_qp; } ;
struct ocrdma_mqe {int dummy; } ;
struct ocrdma_dev {int dummy; } ;
struct ocrdma_alloc_pd_rsp {int dpp_page_pdid; } ;
struct ocrdma_alloc_pd {int enable_dpp_rsvd; } ;


 int ENOMEM ;
 int OCRDMA_ALLOC_PD_ENABLE_DPP ;
 int OCRDMA_ALLOC_PD_RSP_DPP ;
 int OCRDMA_ALLOC_PD_RSP_DPP_PAGE_SHIFT ;
 int OCRDMA_ALLOC_PD_RSP_PDID_MASK ;
 int OCRDMA_CMD_ALLOC_PD ;
 int kfree (struct ocrdma_alloc_pd*) ;
 struct ocrdma_alloc_pd* ocrdma_init_emb_mqe (int ,int) ;
 int ocrdma_mbx_cmd (struct ocrdma_dev*,struct ocrdma_mqe*) ;

int ocrdma_mbx_alloc_pd(struct ocrdma_dev *dev, struct ocrdma_pd *pd)
{
 int status = -ENOMEM;
 struct ocrdma_alloc_pd *cmd;
 struct ocrdma_alloc_pd_rsp *rsp;

 cmd = ocrdma_init_emb_mqe(OCRDMA_CMD_ALLOC_PD, sizeof(*cmd));
 if (!cmd)
  return status;
 if (pd->dpp_enabled)
  cmd->enable_dpp_rsvd |= OCRDMA_ALLOC_PD_ENABLE_DPP;
 status = ocrdma_mbx_cmd(dev, (struct ocrdma_mqe *)cmd);
 if (status)
  goto mbx_err;
 rsp = (struct ocrdma_alloc_pd_rsp *)cmd;
 pd->id = rsp->dpp_page_pdid & OCRDMA_ALLOC_PD_RSP_PDID_MASK;
 if (rsp->dpp_page_pdid & OCRDMA_ALLOC_PD_RSP_DPP) {
  pd->dpp_enabled = 1;
  pd->dpp_page = rsp->dpp_page_pdid >>
    OCRDMA_ALLOC_PD_RSP_DPP_PAGE_SHIFT;
 } else {
  pd->dpp_enabled = 0;
  pd->num_dpp_qp = 0;
 }
mbx_err:
 kfree(cmd);
 return status;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int qp_id; } ;
struct i40iw_sc_qp {TYPE_1__ qp_uk; int shadow_area_pa; int hw_host_ctx_pa; } ;
struct i40iw_sc_dev {struct i40iw_sc_cqp* cqp; TYPE_2__* cqp_ops; } ;
struct i40iw_sc_cqp {int polarity; int dev; } ;
struct i40iw_ccq_cqe_info {int dummy; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_4__ {int (* poll_for_cqp_op_done ) (struct i40iw_sc_cqp*,int,struct i40iw_ccq_cqe_info*) ;} ;


 int I40IW_CQPSQ_OPCODE ;
 int I40IW_CQPSQ_QP_CQNUMVALID ;
 int I40IW_CQPSQ_QP_NEXTIWSTATE ;
 int I40IW_CQPSQ_QP_QPTYPE ;
 int I40IW_CQPSQ_WQEVALID ;
 int I40IW_CQP_OP_CREATE_QP ;
 int I40IW_DEBUG_PUDA ;
 int I40IW_ERR_RING_FULL ;
 int I40IW_QP_TYPE_UDA ;
 int LS_64 (int,int ) ;
 int i40iw_debug_buf (int ,int ,char*,int*,int) ;
 int i40iw_insert_wqe_hdr (int*,int) ;
 int* i40iw_sc_cqp_get_next_send_wqe (struct i40iw_sc_cqp*,int ) ;
 int i40iw_sc_cqp_post_sq (struct i40iw_sc_cqp*) ;
 int set_64bit_val (int*,int,int ) ;
 int stub1 (struct i40iw_sc_cqp*,int,struct i40iw_ccq_cqe_info*) ;

__attribute__((used)) static enum i40iw_status_code i40iw_puda_qp_wqe(struct i40iw_sc_dev *dev, struct i40iw_sc_qp *qp)
{
 struct i40iw_sc_cqp *cqp;
 u64 *wqe;
 u64 header;
 struct i40iw_ccq_cqe_info compl_info;
 enum i40iw_status_code status = 0;

 cqp = dev->cqp;
 wqe = i40iw_sc_cqp_get_next_send_wqe(cqp, 0);
 if (!wqe)
  return I40IW_ERR_RING_FULL;

 set_64bit_val(wqe, 16, qp->hw_host_ctx_pa);
 set_64bit_val(wqe, 40, qp->shadow_area_pa);
 header = qp->qp_uk.qp_id |
   LS_64(I40IW_CQP_OP_CREATE_QP, I40IW_CQPSQ_OPCODE) |
   LS_64(I40IW_QP_TYPE_UDA, I40IW_CQPSQ_QP_QPTYPE) |
   LS_64(1, I40IW_CQPSQ_QP_CQNUMVALID) |
   LS_64(2, I40IW_CQPSQ_QP_NEXTIWSTATE) |
   LS_64(cqp->polarity, I40IW_CQPSQ_WQEVALID);

 i40iw_insert_wqe_hdr(wqe, header);

 i40iw_debug_buf(cqp->dev, I40IW_DEBUG_PUDA, "PUDA CQE", wqe, 32);
 i40iw_sc_cqp_post_sq(cqp);
 status = dev->cqp_ops->poll_for_cqp_op_done(dev->cqp,
          I40IW_CQP_OP_CREATE_QP,
          &compl_info);
 return status;
}

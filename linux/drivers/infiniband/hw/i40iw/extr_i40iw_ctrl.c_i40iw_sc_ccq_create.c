
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct i40iw_sc_cqp {int polarity; int process_cqp_sds; int dev; } ;
struct TYPE_4__ {int cq_size; int cq_id; int avoid_mem_cflct; } ;
struct i40iw_sc_cq {int shadow_read_threshold; int virtual_map; int cq_pa; int shadow_area_pa; int first_pm_pbl_idx; int tph_val; int ceq_id_valid; int ceq_id; int pbl_chunk_size; int ceqe_mask; int tph_en; TYPE_2__ cq_uk; TYPE_1__* dev; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_3__ {struct i40iw_sc_cqp* cqp; } ;


 int I40IW_CQPSQ_CQ_AVOIDMEMCNFLCT ;
 int I40IW_CQPSQ_CQ_CEQID ;
 int I40IW_CQPSQ_CQ_CEQIDVALID ;
 int I40IW_CQPSQ_CQ_CHKOVERFLOW ;
 int I40IW_CQPSQ_CQ_ENCEQEMASK ;
 int I40IW_CQPSQ_CQ_LPBLSIZE ;
 int I40IW_CQPSQ_CQ_SHADOW_READ_THRESHOLD ;
 int I40IW_CQPSQ_CQ_VIRTMAP ;
 int I40IW_CQPSQ_OPCODE ;
 int I40IW_CQPSQ_TPHEN ;
 int I40IW_CQPSQ_TPHVAL ;
 int I40IW_CQPSQ_WQEVALID ;
 int I40IW_CQP_OP_CREATE_CQ ;
 int I40IW_CQP_WQE_SIZE ;
 int I40IW_DEBUG_WQE ;
 int I40IW_ERR_RING_FULL ;
 int LS_64 (int,int ) ;
 int RS_64_1 (struct i40iw_sc_cq*,int) ;
 int i40iw_cqp_sds_cmd ;
 int i40iw_debug_buf (int ,int ,char*,int*,int) ;
 int i40iw_insert_wqe_hdr (int*,int) ;
 int i40iw_sc_ccq_create_done (struct i40iw_sc_cq*) ;
 int* i40iw_sc_cqp_get_next_send_wqe (struct i40iw_sc_cqp*,int) ;
 int i40iw_sc_cqp_post_sq (struct i40iw_sc_cqp*) ;
 int set_64bit_val (int*,int,int) ;

__attribute__((used)) static enum i40iw_status_code i40iw_sc_ccq_create(struct i40iw_sc_cq *ccq,
        u64 scratch,
        bool check_overflow,
        bool post_sq)
{
 u64 *wqe;
 struct i40iw_sc_cqp *cqp;
 u64 header;
 enum i40iw_status_code ret_code;

 cqp = ccq->dev->cqp;
 wqe = i40iw_sc_cqp_get_next_send_wqe(cqp, scratch);
 if (!wqe)
  return I40IW_ERR_RING_FULL;
 set_64bit_val(wqe, 0, ccq->cq_uk.cq_size);
 set_64bit_val(wqe, 8, RS_64_1(ccq, 1));
 set_64bit_val(wqe, 16,
        LS_64(ccq->shadow_read_threshold, I40IW_CQPSQ_CQ_SHADOW_READ_THRESHOLD));
 set_64bit_val(wqe, 32, (ccq->virtual_map ? 0 : ccq->cq_pa));
 set_64bit_val(wqe, 40, ccq->shadow_area_pa);
 set_64bit_val(wqe, 48,
        (ccq->virtual_map ? ccq->first_pm_pbl_idx : 0));
 set_64bit_val(wqe, 56,
        LS_64(ccq->tph_val, I40IW_CQPSQ_TPHVAL));

 header = ccq->cq_uk.cq_id |
   LS_64((ccq->ceq_id_valid ? ccq->ceq_id : 0), I40IW_CQPSQ_CQ_CEQID) |
   LS_64(I40IW_CQP_OP_CREATE_CQ, I40IW_CQPSQ_OPCODE) |
   LS_64(ccq->pbl_chunk_size, I40IW_CQPSQ_CQ_LPBLSIZE) |
   LS_64(check_overflow, I40IW_CQPSQ_CQ_CHKOVERFLOW) |
   LS_64(ccq->virtual_map, I40IW_CQPSQ_CQ_VIRTMAP) |
   LS_64(ccq->ceqe_mask, I40IW_CQPSQ_CQ_ENCEQEMASK) |
   LS_64(ccq->ceq_id_valid, I40IW_CQPSQ_CQ_CEQIDVALID) |
   LS_64(ccq->tph_en, I40IW_CQPSQ_TPHEN) |
   LS_64(ccq->cq_uk.avoid_mem_cflct, I40IW_CQPSQ_CQ_AVOIDMEMCNFLCT) |
   LS_64(cqp->polarity, I40IW_CQPSQ_WQEVALID);

 i40iw_insert_wqe_hdr(wqe, header);

 i40iw_debug_buf(cqp->dev, I40IW_DEBUG_WQE, "CCQ_CREATE WQE",
   wqe, I40IW_CQP_WQE_SIZE * 8);

 if (post_sq) {
  i40iw_sc_cqp_post_sq(cqp);
  ret_code = i40iw_sc_ccq_create_done(ccq);
  if (ret_code)
   return ret_code;
 }
 cqp->process_cqp_sds = i40iw_cqp_sds_cmd;

 return 0;
}
